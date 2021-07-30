var createError = require('http-errors')
const fileUpload = require('express-fileupload')
const morgan = require('morgan')
const _ = require('lodash')
var express = require('express')
var path = require('path')
var cookieParser = require('cookie-parser')
var logger = require('morgan')
var bodyparser = require('body-parser')
var cors = require('cors')
var session = require('express-session')

var indexRouter = require('./routes/index')

// 需匯入api
var users = require('./api/users')
var event = require('./api/event')
var museum = require('./api/museum')
var auction = require('./api/auction')
var product = require('./api/product')
var share = require('./api/share')
var orders = require('./api/orders')
var news = require('./api/news')
var mail = require('./api/mail')
var order_details = require('./api/order_details')

var app = express()

// enable files upload
app.use(fileUpload())
app.use(express.static('files'))

// 加入其它的middleware
app.use(morgan('dev'))

// view engine setup
// app.set('views', path.join(__dirname, 'views'))
// app.set('view engine', 'jade')

app.use(logger('dev'))
// app.use(express.json())
// app.use(express.urlencoded({ extended: false }))
app.use(cors())
app.use(bodyparser.json())
app.use(bodyparser.urlencoded({ extended: false }))
app.use(cookieParser())
app.use(express.static(path.join(__dirname, 'public')))
// Use the session middleware
app.use(
  session({
    cookieName: 'session',
    secret: 'eg[isfd-8yF9-7w2315df{}+Ijsli;;to8',
    duration: 30 * 60 * 1000,
    activeDuration: 5 * 60 * 1000,
    // httpOnly: false, //for localhost
    httpOnly: true, 
    // secure: false, //for localhost
    secure: true,
    ephemeral: true,
    resave: true,
    saveUninitialized: true,
  })
)

// static file with middleware
app.use(express.static(__dirname + 'public'))

// event middleware
app.use('/event', event)

// share middleware
app.use('/share', share)

// event middleware
app.use('/product', product)

// map middleware
app.use('/map', museum)

//auction middleware
app.use('/auctoin', auction)

//app.use('/', indexRouter)
app.use('/users', users)
//app.use('/realestates', realestates)

//orders middleware
app.use('/orders', orders)

//orders middleware
app.use('/mail', mail)

//orders middleware
app.use('/news', news)

//order_details middleware
app.use('/order_details', order_details)

// catch 404 and forward to error handler
// app.use(function (req, res, next) {
//   next(createError(404))
// })
// 未找到的錯誤 - 404
app.use((req, res, next) => {
  const err = new Error('Not Found')
  err.status = 404
  next(err)
})

// 處理其它還未實作的要求 - 501
app.use((err, req, res, next) => {
  res.status(err.status || 501)
  res.json({
    error: {
      code: err.status || 501,
      message: err.message,
    },
  })
})

// error handler
// app.use(function (err, req, res, next) {
//   // set locals, only providing error in development
//   res.locals.message = err.message
//   res.locals.error = req.app.get('env') === 'development' ? err : {}

//   // render the error page
//   res.status(err.status || 500)
//   res.render('error')
// })

module.exports = app
