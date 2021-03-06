-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 07 月 20 日 21:47
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `ARTDDICT`
--

-- --------------------------------------------------------

--
-- 資料表結構 `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL COMMENT '流水號',
  `eventClass` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品類別',
  `eventId` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活動編號',
  `eventName` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活動名稱',
  `eventDescription` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活動描述',
  `eventDateStart` date NOT NULL COMMENT '活動開始日期',
  `eventDateEnd` date NOT NULL COMMENT '活動結束日期',
  `eventPrice` int(11) NOT NULL COMMENT '活動價格',
  `eventImg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '活動圖片',
  `eventCity` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活動城市',
  `museumId` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '舉辦館別',
  `userId` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '建立活動的使用者',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '新增時間',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '修改時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `event`
--

INSERT INTO `event` (`id`, `eventClass`, `eventId`, `eventName`, `eventDescription`, `eventDateStart`, `eventDateEnd`, `eventPrice`, `eventImg`, `eventCity`, `museumId`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'C', '001', 'WHAAAAAT’S', '第二屆WHAAAAAT’S展會將於2021年5月7-9日再次盛大舉行，選址於台北喜來登大飯店。自2020年2月始，一場疫症改變了人與人之間的距離，更改變了你我所熟悉的藝術生態。本屆展會主題為「我們的時代」，我們一定要懷抱希望、保持樂觀；期許藉由藝術家們精彩的創作，為我們所處的時代發聲，用美好的創作，為自己說話也溫暖他人，用正向熱情的創作，喚起大眾對自身時代的認同與重視，將藝術的愛傳遞給每一人。<br /> ', '2021-11-19', '2021-12-17', 100, '001.jpg', 'TAO', '', '', '2021-07-12 11:43:42', '2021-07-12 11:43:42'),
(2, 'C', '002', '新一代設計展YODEX', '新一代設計展」自1981年開辦以來，致力將展覽朝品牌化、專業化、國際化之方向推進，今年邁入第40年，目前已是全球最具規模之設計科系學生主題聯展。展覽內容橫跨產品與工藝設計、視覺傳達設計、數位多媒體設計、空間與建築設計、服裝與時尚設計、跨領域整合設計等等多元領域。今年有全台66校、144系、約12,000位設計新秀、4,000件作品參與展出。 除展覽外，另結合金點新秀設計獎、新一代產學合作專案，廣邀企業參與，是台灣發掘優秀設計人才與傑出創意之重要平台。 ', '2021-10-09', '2022-01-21', 250, '002.jpg', 'TPE', '1', '', '2021-07-12 11:43:50', '2021-07-12 11:43:50'),
(3, 'C', '003', 'What is TEDxDongWuU？\r\n', 'TED為美國一個國際性非營利組織，秉持著好點子值得傳遞(Ideas worthspreading)的精神，從1984年創立以來，逐步將全世界各個角落的好點子，匯集在網路平台，實踐了知識傳遞之目的。TED每年舉辦為期一週的大型年會，邀請眾多講者以簡報的方式傳達想法與知識，搭配精心營造的年會氣氛，讓傳遞點子變得輕鬆有趣。\r\n而著名的TEDTalk簡報，包含TED與TEDx的演講內容，以18分鐘為限，並且搭配無數生動的故事，成為全世界最啟發人心的簡報方式。TED官方網站將這些TEDTalk免費提供全球點閱，並翻譯成多國語言，使知識無國界，讓好點子遍佈全球。\r\nTEDxEvent是延續TED的精神，結合地方社群特色與需求的獨立組織，讓人們不只坐在電腦前看影片，也能走出家中，體驗TED conference獨有的現場氣氛，讓每個人能夠參與其中，並且與有共同熱忱的人分享、交流。\r\nWhat is TEDxDongWuU？\r\n', '2021-10-07', '2022-01-28', 350, '003.jpg', 'TPE', '1', '', '2021-07-12 11:44:02', '2021-07-12 11:44:02'),
(4, 'C', '004', 'INITIATION', '國立臺灣師範大學美術系成立於1947年8月，為臺灣第一所大專院校成立的美術相關科系，匯聚自中國與留學日本返臺的名師，推動臺灣基礎美育，培育出多面向創作思維的藝術家，繼而影響臺灣藝壇動向。而臺師大設立於現今的古亭，清朝舊名為「鼓亭莊」，是瑠公圳的重要樞紐，過去滋潤的是大地的農產；臺師大在此地建校後，變成教育的源泉，源源不絕的將智慧向四處傳播、蔓延開來。\r\n \r\n「引藝領潮——1947・鼓亭莊聯展」透過曾就學及授教於臺師大美術系、現今為藝術界中各領域翹楚的部分作品，策畫面向公眾的展覽；透過教育單位或館舍的典藏，具體而微的組構出這塊土地上饒具特色的藝文歷史脈絡。\r\n', '2021-09-25', '2021-12-17', 80, '004.jpg', 'TXG', '', '', '2021-07-12 11:44:11', '2021-07-12 11:44:11'),
(5, 'C', '005', '紙膠帶的100種可能', '【紙膠帶的100種可能】 創意紙膠帶拼貼創作競賽\r\n由大年印刷x大米創意所主辦的「紙給你膠帶」系列活動已邁入第三年，為了擴大活動參與的廣度，更期望透過活動讓民眾體驗紙膠帶的無限可能，本屆將以跨年度系列活動方式，舉辦兩階段的紙膠帶創意競賽，讓民眾可從參與紙膠帶設計，到實際應用紙膠帶創作，一同進入紙膠帶的歡樂世界。', '2021-08-28', '2021-12-16', 50, '005.jpg', 'TNN', '', '', '2021-07-12 11:44:18', '2021-07-12 11:44:18'),
(6, 'C', '006', '解碼雲端', '2014年，牯嶺街小劇場憑藉著跨越時代的建物歷史，以及它從軍警機構轉變成劇場的文化內涵，冊列為台北市的歷史建築。2020年，完成歷史建築整修、重新整裝出發的牯嶺街小劇場將推出「重啟城中之心」計畫，期待透過新一波的展演創作單元與歷史空間相互對話，打開一個全新的生活交流場域，進而支持表演藝術工作者探索更具挑戰性的視野，為重新開放的小劇場增添新能量！\r\n', '2021-06-29', '2021-07-15', 150, '006.jpg', 'CHA', '', '', '2021-05-08 07:05:01', '2021-05-08 07:05:01'),
(7, 'C', '007', '探索臺北城', '台北文青小旅行再解鎖! 鬧區中心的自來水博物館，竟然埋著屬於台北人的地下宮殿! ! 地下水宮殿像好酒一樣私藏的越陳越香，有著台北天堂路的新生南路竟然有這麼多故事，文藝選染著城中的色彩，是時候來個文青小旅行了!', '2021-06-28', '2021-07-07', 150, '007.jpg', 'TPE', '1', '', '2021-07-07 02:19:50', '2021-07-07 02:19:50'),
(8, 'C', '008', '塑象-動物雕塑體驗', '藝術家將在沒有專業美術背景的前題之下，教導大家如何以簡單、有效果的方式捏塑一個動物頭像！ 這次課程的主題為-大象，在4小時的課程時間中，藝術家將帶領參與學員瞭解雕塑家如何思考造型，並以簡單明瞭的方式帶大家進行親手實踐。\r\n', '2021-07-01', '2021-07-15', 400, '008.jpg', 'KHH', '22', '', '2021-07-16 12:28:59', '2021-07-16 12:28:59'),
(9, 'C', '009', '巷弄之間-尋找藏達人計畫', '活動多於戶外進行，請自備防曬用品/雨具。\r\n環保愛地球，請參加者自行攜帶飲用水。\r\n出發當天請準時報到，逾時不候，亦不退費。\r\n出發日前 8 日退費需收取10%手續費\r\n出發日前 8 日至當日內不接受取消，並不予退回款項。\r\n如因天災等不可抗力因素，主辦單位將主動聯繫延期或退款。\r\n若人數不足無法成行，主辦單位將於7日前另行通知改期或全額退費。\r\n主辦單位保有調整、修改活動之權利。\r\n', '2021-07-02', '2021-07-04', 250, '009.jpg', 'HSZ', '', '', '2021-05-07 16:50:20', '2021-05-07 16:50:20'),
(10, 'C', '010', '臺博館建築再發現', '《臺博館建築再發現－談臺博館及其建築師野村一郎》\r\n臺灣博物館本館是臺灣唯一一座不僅保留了其原本歷史主義建築形式，而且繼續履行其最初展覽館功能的日治時期官方建築。\r\n在這場座談中，講者除了分析臺博館建築物的形式和結構外，也將聚焦於臺博館的設計師野村一郎( Ichirō Nomura，1868－1942)在1910年前往歐美，尤其是倫敦和紐約的旅程中，可能看到過哪些建築物及城市景觀而成為影響臺博館建築設計的參考原型。', '2021-07-14', '2021-07-21', 150, '010.jpg', 'HSZ', '', '', '2021-05-07 16:50:23', '2021-05-07 16:50:23'),
(11, 'C', '011', '故宮南院戶外美術館-藝術方舟ARK OF ART', '藝術的方舟Ark of Art，故宮南院匯聚了當代與傳統，如同一艘行駛於歷史長河上的方舟，承載著藝術傳承的使命，包容文化與歷史的的多元，貯存、典藏所有的藝術生命，憑藉戶外美術館的成立，期許在自由的公共藝術空間中，滿足人們探索藝文人文的渴望，並建立生命與情感之連結 蒐集人類的足跡，航向世界的藝術烏托邦。\r\n', '2021-07-22', '2021-08-12', 200, '011.jpg', 'CYI', '', '', '2021-05-10 08:20:41', '2021-05-10 08:20:41'),
(12, 'D', '101', '品牌視覺設計研究工坊', '本課程由瘋設計與大象設計 Elephant Design負責人王胤卓設計師 共同企劃，透過五週的課程解說與工作坊操作帶領學員進入專業品牌視覺設計工作。從品牌的視覺設計切入，融入創意思考方式，延伸到品牌延伸應用物甚至到空間設計，建立完整設計概念輸出之邏輯訓練 ， 以達視覺形式與傳達精神能恰如其分的精準設計成果 。', '2021-10-16', '2021-12-10', 1500, '101.jpg', 'KHH', '22', '', '2021-07-16 12:28:54', '2021-07-16 12:28:54'),
(13, 'D', '102', '想像吧！假如瑞芳是個主題樂園！', '瑞芳的勇者，讓我們一邊打怪一邊幫城市升級！！！！！我們發起了一場遊戲，等你來挑戰！！！！！！我們會帶的你走遍大瑞芳地區，由你來發現感動人心的小角落，讓這些特別的時刻紀錄成瑞芳藏寶圖！', '2021-07-08', '2021-08-27', 1500, '102.jpg', 'TPE', '2', '', '2021-07-12 11:33:16', '2021-07-12 11:33:16'),
(14, 'D', '103', '家物事HOUSING THINGS', '「家物事：一場發生在藝術空間的聚落與實踐」是一場正在臺藝大有章藝術博物館展出的，關於策展情境、藝術再現、公眾參與，以及空間歷史的展覽。而這場藝術家工作坊，將由五組藝術家主導，和參與者們一同在展場間駐留、移動，討論各種「家」、「物」、「事」的聚落與實踐。', '2021-08-26', '2021-09-14', 700, '103.jpg', 'TXG', '', '', '2021-07-12 11:33:28', '2021-07-12 11:33:28'),
(15, 'D', '104', '品牌設計實戰工作坊', '視覺設計是帶給消費者的第一印象，以及產生記憶點最佳的方式，但在製作設計之前更需要了解品牌的市場及價值。為擴大三創成效、爭取外部資源，本校與高雄市政府青年局合作辦理「品牌設計實戰工作坊」。本工作坊旨在學習品牌策略及視覺發展，從無到有建構品牌，嚴謹的品牌分析、品牌策略擬定到企業識別規劃，迅速建立對品牌的認知，讓學員學習了解視覺設計與品牌之間的關聯性，並期許學員運用在自身領域，並培育不同領域之專業與創新創業能力。', '2021-07-31', '2021-10-22', 2500, '104.jpg', 'TXG', '', '', '2021-07-12 11:33:38', '2021-07-12 11:33:38'),
(16, 'D', '105', '歌仔戲工作坊', '上班族如何在忙碌工作中進修？面對日常壓力時，內心總是感到焦慮煩躁嗎？來歌劇院充電吧！邁入第二年的「藝術動一動」以「身體律動」、「歌仔戲」與「音樂劇」三大主題，讓您在打卡下班後、轉換心情，從輕食、暖身開始，以沉浸、體驗舒展身心靈，享受精彩充電夜。', '2021-08-12', '2021-10-31', 2000, '105.jpg', 'TPE', '2', '', '2021-07-12 11:35:07', '2021-07-12 11:35:07'),
(21, 'C', '012', '紀曜邦摺紙攝影展', '摺紙，優雅且靜心，陪伴許多紀曜邦的獨處時光。透過摺紙層疊、折線、成形的創作，化作各式各樣的立體符號，在紛擾的時光中找到片刻療癒。 課程將與您一起實作，摺出心中一塊靜謐。—紀曜邦‧摺紙課程。\r\n', '2021-07-22', '2021-08-12', 200, '012.png', 'CHA', '', '', '2021-05-14 01:50:26', '2021-05-14 01:50:26'),
(22, 'D', '106', '消消防災　BLOCK DISASTER', '台灣設計館《消消防災》防災設計展—展覽系列活動！ 四月起至七月，每週末台灣設計館將展開防災遊戲闖關大挑戰！ 跟著設計館防災小尖兵，從八關遊戲體驗中學習實用防災知識， 只要70分鐘就能成為防災小達人。 有玩有保庇，快揪家人朋友一起來闖關成功！', '2021-09-08', '2021-11-26', 2000, '106.jpg', 'TPE', '2', '', '2021-07-12 11:35:19', '2021-07-12 11:35:19'),
(23, 'C', '013', '悸動──無所遁逃的不確定性', '「聲音」成立的前提是「身體」的辨認──包含了「聽覺」以及雙耳因此產生的「平衡感」與「空間方位感」。毫不意外地，數位科技持續地撼動身體慣有的感知能力，聲響與影像的對應關係亦早在電影問世後便不合邏輯、充滿幻術。「悸動──調變王福瑞」展覽的三件VR作品，則在虛擬技術中挑釁著感知：當身體進入虛擬空間中而不見肉身，更不見若遠似近、飛速竄動的聲源；當身體的移動觸發聲音與影像隨機產生，也意味著失去了藉由聆聽而錨定方位之力；當聲源只在VR視鏡中顯影而肉眼所見反倒如「虛擬」般隱形於現實世界。又更或者，當「影像巨大而迫近」所產生「異於日常」的歧異性，幾乎無異於觀看影廳巨型投影幕時的震撼與盲動欲力──既無從預料，亦無所遁逃。\r\n', '2021-07-27', '2021-09-09', 200, '013.jpg', 'NWT', '', '', '2021-05-14 01:28:58', '2021-05-14 01:28:58'),
(24, 'D', '107', 'HCD 工作坊', '設計服務大部分的時間，是在減少客戶的不安。提案─是設計師踏入市場必要學習的環節，是一份難以在案例成果中解讀的「看不見的工作」。好的提案能將內容說清楚，以明快節奏區別訊息的主賓；更好的提案，帶有一種表演性質，融入設計師人格的特殊性，令客戶與合作夥伴留下正面印象，建立讓人信賴的專業形象。\r\n第一期 HCD 工作坊〈提案溝通學〉，將透過為期兩天，連續 16 小時的密集訓練，陪伴初入業界與即將進入市場的設計工作者，依據主要設計項目與作品風格，建立個人化的提案流程模組，從獨立接案到創業自由活用。\r\nStudioPros 設計總監 李宜軒，曾任職於 Bito、IBM 等重視設計管理的工作團隊。她將分享多年經驗，以實際發表專案的簡報為例，說明專案在溝通過程所克服的困難以及解決方案。也將依據學員自身的提案經驗，指出簡報中的矛盾與盲點，站在觀看者的立場，理解提案被質疑的原因，完整提案內容的全面性。', '2021-08-25', '2021-10-28', 2000, '107.png', 'TXG', '', '', '2021-07-12 11:35:31', '2021-07-12 11:35:31'),
(25, 'C', '014', '見證時代-森山大道國際攝影展', '森山大道，被譽為當代街頭攝影的代表人物，自1959年起，進入當時著名攝影家岩宮武二的工作室擔任助理後便與攝影有了不解之緣。至今2021，走過62個年頭，森山大道見證了日本自戰後至現代的社會變遷，其作品等同見證了日本發展的過程與重新定義街頭影像。這個展覽。【見證時代】，是森山大道的故事，也會是你的攝影故事... 異角藝術Art Angle 年度攝影展覽，重新定義攝影與見證這個時代。', '2021-07-28', '2021-09-09', 200, '014.png', 'TXG', '', '', '2021-05-14 01:49:49', '2021-05-14 01:49:49'),
(26, 'D', '108', 'VERSE Forum 旅遊之夜', 'VERSE在第五期（2021/4月號）開始討論讓旅行成為重新認識這座島嶼文化與歷史的方法。我們想要邀請大家一起踏上台灣無比豐盛的文化路徑， 讓歷史與記憶進入文化與空間重建，看到旅行台灣的新起點。\r\n這些旅行可能並不輕鬆，需要對這些地點的過去與未來有更多一點的理解與好奇，需要多一點的思索與感受。\r\n本次講座邀請到前文化部長鄭麗君與自然生態作家劉克襄，一同帶領大家踏上「台灣」這條路，深度體驗屬於我們自身的在地風景，更進一步認識這塊土地的身世。讓歷史與記憶進入生命的脈絡，文化與空間重建我們的思維，重新看見旅行台灣的新起點。', '2021-10-16', '2021-10-29', 2000, '108.jpg', 'CHA', '', '', '2021-07-12 11:35:43', '2021-07-12 11:35:43'),
(27, 'D', '109', 'Ｎiusclub-螢光奇幻作畫實驗室', '課程沒有任何規則 就要你盡情\"潑灑\" \"丟顏料\" 在最放鬆舒服的狀態下創作 潑灑你的創意 解放你的內心世界 課程將教大家如何運用如螢光顏料、紙膠帶等不同媒材。 就算沒有規則，也能創作出一幅精美畫作', '2021-07-31', '2021-08-20', 2000, '109.jpg', 'TXG', '', '', '2021-07-12 11:35:52', '2021-07-12 11:35:52'),
(28, 'C', '015', '【尋 找】主題展', '在這一場【尋找】主題展的創作者一日活動中，包含了「展覽導覽」「個性似顏繪」與「互動藝術體驗」三個面向的內容，豐富精彩！僅有八個名額，請把握機會搶下名額！', '2021-07-28', '2021-09-09', 200, '015.jpg', 'TNN', '', '', '2021-05-14 01:28:12', '2021-05-14 01:28:12'),
(79, 'C', '016', '設計現場2.0《設計教育白皮書》ㄇㄉ，教了用不到的東東', '《設計教育白皮書》是一場結合產教學三方的線上論壇，沒有地位與階級，透明公開談話！ 「在教育之中，我們擁有選擇自己成為誰的權利。」設計系一直存在著產學落差、理想與現實過於衝突，但真的是教育出了毛病嗎？又或者根本是學生看不清架構？還是產業的養分還不足夠？以這場透明對話，我們將打開一直以來難解的命題！', '2021-07-28', '2021-09-09', 200, '016.jpeg', 'TXG', '', '', '2021-07-12 02:57:23', '2021-07-12 02:57:23'),
(80, 'C', '017', '水瓶子【薄霧漫談|台北百年經典建築__系列講座】', '療癒系旅行作家水瓶子，帶領學員用耳朵聽台北的歷史，用眼睛讀經典建築的美麗；當旅行成為奢望，正好我們一起來漫步自己的家鄉。 水瓶子以「城市漫遊者」的身分，遊走街區風華、新城舊巷，與薄霧書店一起開設台北百年經典建築線上直播系列講座，期待透過線上互動，帶給讀者腦內旅遊的美好，釋放快樂的多巴胺，讓我們無謂疫情，跟著水瓶子來場線上台北小旅行。', '2021-07-28', '2021-09-09', 200, '017.png', 'TPE', '', '', '2021-07-12 02:57:23', '2021-07-12 02:57:23'),
(81, 'C', '018', '2021 ART FORMOSA 福爾摩沙國際藝術博覽會', 'Since its establishment in 2015, ART FORMOSA ART FAIR has maintained its exquisiteness, high-endness, and contemporariness, collaborating with notable art foundations to present outstanding galleries and eminent artists worldwide to present fantastic curatorial projects and artist concepts. As a leading international art fair, ART FORMOSA has also incorporated different industries including architecture, design and fashion to fulfill its notion of aesthetic living. This summer, ART FORMOSA will take a great leap forward in generating influence in Taiwanese art industry and Asian art world.\r\n\r\n自2015年創立以來，ART FORMOSA 福爾摩沙國際藝術博覽會秉持精緻、高端、當代之理念，聯手國際重要藝文機構，迎接全球頂尖當代畫廊與優秀精銳藝術家，用最完整的策展計畫及藝術家創作理念呈現精采絕倫的高水平藝術展覽，並大規模結合建築、設計、時尚產業，落實質感生活美學理念的頂級博覽會。為台灣及亞洲藝術圈，帶來領銜初夏、當代與經典薈萃的全新里程！\r\n\r\n', '2021-07-28', '2021-09-09', 200, '018.jpg', 'KHH', '23', '', '2021-07-16 12:38:21', '2021-07-16 12:38:21'),
(82, 'C', '019', 'Kyber Capital 源鉑資本 2021春夏策略展望會', '2021年迎來後疫情時代，企業積極推動轉型，在鉅變中找尋新的商業模式與投資機會。源鉑資本2021春夏策略展望會將分享2021年全球科技創新的潛在機遇與挑戰，聚焦區塊鏈金融、資訊安全、智慧醫療等領域的最新技術發展與趨勢觀察，協助您洞察產業前沿脈動，掌握突圍先機，千萬不要錯過！', '2021-07-28', '2021-09-09', 200, '019.jpg', 'KHH', '23', '', '2021-07-16 12:38:23', '2021-07-16 12:38:23'),
(83, 'C', '020', '地方影像調研計畫-地方帶路人講座/編劇實作/影像讀書會-創出屬於你與家鄉的劇本', '一趟地方講座旅行，讓地方帶路人分享故事、認識在地人。 兩堂影像劇本實作，轉化地方故事、成為個人創作根基。 一場影視音讀書會，培養美感的識讀能力、與夥伴共同成長。 兩週的課程裡，在地故事將激發你創作的靈感，加上編劇課程的手把手教學與實作，一步步編織出屬於你的劇本世界，更在夥伴們的交流反饋裡，創作更加完整成熟。', '2021-07-28', '2021-09-09', 200, '020.jpg', 'TPE', '', '', '2021-07-12 03:09:30', '2021-07-12 03:09:30'),
(84, 'C', '021', '宮城司工作室 : 公益音樂會', '一群熱愛表演的工程師，邀請你一起來熱心做公益!演出的費用扣除相關成本後將全數捐給育幼院。', '2021-07-28', '2021-09-09', 200, '021.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(85, 'C', '022', '2021 現代巫師 G :: Magic Way :: 全台巡迴魔術研習會', '世界級魔術講座，睽違五年再度來台！獲世界各國魔術大師大力推薦，全台魔術師必來朝聖的一場講座！來自加拿大的現代巫師 G 為業界先驅，開創許多劃時代的魔術，並擔任眾多電視節目的魔術顧問。這次他將公開發表十招原創魔術作品，並揭開魔術真正的秘密...', '2021-07-28', '2021-09-09', 200, '022.jpg', 'KHH', '23', '', '2021-07-16 12:38:24', '2021-07-16 12:38:24'),
(86, 'C', '023', '2021 東引暗空之夜｜星・引', '故事揉和了音樂、地方文化、事件、慶典之元素，讓聽覺佐以微弱的星光，以截然不同的旅遊途徑，體驗你遠道而來的「東引」。 你可以說他是一場音樂會、一齣舞台劇，但他更是某人的一輩子，那人來自一座小島、北邊的一座小島、一座不管在哪裡都聽得到海風的小島、一座被滿天星空包圍住的小島。 今年六月，由東引鄉公所以及在地青年團隊「鹹味島合作社」攜手策劃的環境劇場 《星・引》。', '2021-07-28', '2021-09-09', 200, '023.jpg', 'TPE', '14', '', '2021-07-16 12:39:54', '2021-07-16 12:39:54'),
(87, 'C', '024', '懷疑人生香港電影節 2021', '懷疑人生，即是對人生有思考，反思人生。在動盪的香港，每人都有過一秒騷動、一點掙扎。電影節透過系列短片，反映香港的城市面貌、社會議題、人文關懷，帶出香港人對這個城市的反思，對人生的懷疑與執著、脆弱與堅持。\r\n因應疫情，電影節將改以線上形式，與台灣朋友分享香港短片，透過電影一同懷疑人生，感受絕望與希望、荒謬與善良，回溯人性的美好。', '2021-07-28', '2021-09-09', 200, '024.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(88, 'C', '025', '大唐塾研藝術系列】陳仁倩水墨工筆花鳥畫', '大唐水墨工筆畫課程由台灣新銳書畫家陳仁倩老師特別設計規劃，自四月開始，推出以花為題材的系列課程。第一期主題為唐代國花『牡丹』，9月9日開始的第二期課程主題：『宋荷臨摩 ＆ 紫繡球花小品』即將開課。', '2021-07-28', '2021-09-09', 200, '025.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(89, 'C', '026', '逛美術館是很認真的', '「為什麼日本美術館這麼多、為什麼日本人這麼愛逛美術館？」\r\n\r\n「草間彌生、奈良美智、塩田千春、安藤忠雄、SANNA...這些藝術家與建築師，究竟如何影響日本美術館的發展呢？」\r\n\r\n偏執保守的日本人對於藝術的熱愛無非是一種國民意識，除了有淵遠流長的美學背景，更體現在美術館的型態發展上，也是一種宣揚國力及文化的政策思維。 \r\n\r\n細膩敏感的日本人對於美術館的觀看之道尤其講究。如果你曾去過歐美就會發現日本美術館與西方美術館如此不同，館藏之外更多了共感體驗，帶著濃濃情懷竟如此溫柔親切。\r\n\r\n此系列講座將要帶您線上遊覽無論歷史或是地域上最具指標的日本美術館，透過講師擅長的說故事架構窺見人氣美術館的秘密，用更遼闊的視野認識日本文化~ \r\n\r\n後疫情時代，美術館與藝術會往哪裡走？帶你認真逛美術館，看出美術館的好玩與多變！\r\n\r\n', '2021-07-28', '2021-09-09', 200, '026.jpg', 'TPE', '14', '', '2021-07-16 12:39:21', '2021-07-16 12:39:21'),
(90, 'C', '027', '劇場進入社會', '「劇場永遠是集體作戰。」而當劇團不只是劇團，多元的創作面向、領域橫跨，使他們的創作能量更加龐大。年輕人總是回應社會最用力的一群，也同時是被社會最用力針對的一群。這些力道具現成不停地以各種形式對話，而劇場、表演藝術的公共參與，正好兼具最完備的被動防禦與主動出擊，持續地以各式的動態展演、視覺設計、拍攝影片，彰顯其欲回應社會的能量。人是社會性的存有，即便不愛也必須身處社會之中，但僻室的青年將一個接受現實的句號擦去，打上問號，再用各種方式寫下回答，讓劇場藝術持續向社會挺進。', '2021-07-28', '2021-09-09', 200, '027.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(91, 'C', '028', '動物插畫家慕蘭||絆|| 展覽前導分享會', '每個人都有對創作者的作品有著自己的詮釋方式，同時，這些作品都有屬於它的故事，展覽之前，我們邀請動物插畫家慕蘭用作品來與您分享她如何用創作與自己的高敏感族特性相處。\r\n\r\n', '2021-07-28', '2021-09-09', 200, '028.jpg', 'TPE', '', '', '2021-07-12 03:30:29', '2021-07-12 03:30:29'),
(92, 'C', '029', '永恆慕夏 線條的魔術 特展', '由慕夏基金會所策劃的「永恆慕夏-線條的魔術」特展（Timeless Mucha-Mucha to Manga：The Magic of Line），從以「線條」作為造型起點的慕夏(Alfons Maria Mucha)出發，將展出五大展區，超過200件展品，包含慕夏的經典畫作、真跡手稿，以及影響慕夏創作的收藏品，另外還有受到「慕夏風格」影響的各國平面藝術家和設計師們的作品，帶您解開捷克20世紀的新藝術巨擘「阿爾豐斯．慕夏」創作秘密，一起探索慕夏令人著迷的藝術風華。\r\n', '2021-07-28', '2021-09-09', 200, '029.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(93, 'C', '030', '【2021第三屆台中喚喚戲劇節】是個女生，《如果以秒存在這世界》', '人們總說時間是殘忍的，但也許時間根本不存在？\r\n有關時間的單位都是人類創造出來的，那如果我不只是我，我們不再相信萬物規律，我也只是宇宙世界裡短短的一秒鐘，在這樣的孤獨裡持續豢養自己，那會是怎麼樣的世界？ \r\n我會被時間流動所困惑、會被移動空間所限制，有哪裡真正屬於我嗎。\r\n\r\n \r\n\r\n結合 #舞蹈 #展覽 的戲劇，請跟我們一起感受時間。\r\n\r\n', '2021-07-28', '2021-09-09', 200, '030.jpg', 'TXG', '', '', '2021-07-16 12:35:25', '2021-07-16 12:35:25'),
(94, 'C', '031', '心靈微光粉彩-《希望之樹》', '由蘇貞心理師在果陀文創帶領的課程，讓完全沒基礎的學員，運用每堂課學到的技巧堆疊，得以創作出豐富的畫面；而每次學習到的簡易技巧，也能帶領你覺察自己的手指觸感力道所帶來的變化，正是這些變化，創造了讓自己心靈平衡圓滿的圖象。\r\n\r\n', '2021-07-28', '2021-09-09', 200, '031.jpg', 'TPE', '', '', '2021-07-12 04:54:40', '2021-07-12 04:54:40'),
(95, 'C', '032', '【2021第三屆台中喚喚戲劇節】 後街人劇團《白色的你》', '「死去的人帶走了幸福快樂，留下來的我們能夠像過往那樣微笑嗎？」\r\n\r\n在男人死去之後，女孩和女人依循著照片去拼湊被遺忘的童年，在回憶的過程中，發現了對彼此的誤解、矛盾，還有需要承擔的責任⋯⋯。\r\n\r\n留下來的「她們」厭惡著彼此，卻也思念著彼此，思念著同一個「家」。\r\n\r\n留下來的「她們」能夠帶著這個缺了一角的「家的圖像」繼續活下去嗎？\r\n\r\n故事的盡頭有一道白色的光\r\n\r\n白色漸漸的散成煙霧\r\n\r\n然後消失在空氣之中\r\n\r\n「她們」四周的視線灰灰的，白白的⋯⋯\r\n\r\n在走完故事之前\r\n\r\n還有一些東西需要理解\r\n\r\n需要面對⋯⋯\r\n\r\n \r\n\r\n「那個白色的你，到底是誰？」\r\n\r\n「白色的你，可以帶著我，離開遺憾嗎？」\r\n\r\n', '2021-07-28', '2021-09-09', 200, '032.jpg', 'TXG', '', '', '2021-07-16 12:35:34', '2021-07-16 12:35:34'),
(96, 'C', '033', '尋找艋舺埋立地', '中華路一段西側的「城西」地區位於臺北清代的三市街之間，是日治時期臺北市各項現代化都市建設實踐的重要場域，區域內幾座文化資產與街屋，也說明當年市區改正計畫的考量與影響。特別是1910年代的「艋舺低地埋立計畫」，將此區由河港及未開發的低地轉為容納諸多公共設施的格狀市街，也是提供臺北市百年來眾多表演娛樂需求的「西門町」商業區。位於城西的西門國小及福星國小皆已超過百年歷史，與周邊發展歷程關係密切，本活動將透過文資探險遊戲及古碑改造體驗，刺激國小高年級學童更關注生活環境及文化資產，進而認同自身文化。', '2021-07-28', '2021-09-09', 200, '033.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(97, 'C', '034', '『墨彩交集』林金龍創作個展', '此次林金龍先生的展出，結合東方水墨與西方水彩、壓克力，墨與彩共舞渲染、流動，線條與色塊，恬靜與放任，交織譜出空靈與繽紛的微妙視覺新視野。經由明喻、隱喻，甚或抽象的呈現方式，表達對東、西方哲學的體驗與心靈沉思。', '2021-07-28', '2021-09-09', 200, '034.jpg', 'TPE', '14', '', '2021-07-16 12:39:46', '2021-07-16 12:39:46'),
(98, 'C', '035', '「希望科技：應對疫情的一百種方法」 Technologies of Hope: 100 Responses to the Pandemic Online Talk', '藉由戰略技術長期關注於科技批判和數位素養的研究，講座將探討人們如何透過全球一百種的科技展現希望與恐懼，並在後疫情中引領我們「回歸日常」以及迎向「不可觸摸（no touch）」的未來。同時也提問，從這些科技用品中反映出現今社會的意識形態與價值是什麼樣子？我們願意為了讓自己感到安全而付出多少？與其說人們竭盡所能地防範病毒，也許我們成功控制的僅是身為宿主的自己？', '2021-07-28', '2021-09-09', 200, '035.jpg', 'KHH', '22', '', '2021-07-16 12:28:56', '2021-07-16 12:28:56'),
(99, 'C', '036', '如何接收影像 製作訊息 3. 跨越邊陲─畫廊策展敘事', '臺北設計與藝術指導協會 TPadd assoc. 雙週例會 Nº24・路由藝術創辦人 Nunu Hung以畫廊實務角度，分享她如何挑選合作藝術家，與他們建立關係、製作展覽、回應當代藝術的商業市場，以及最重要的：如何轉譯藝術創作，並將其視為一份知識傳遞的態度。', '2021-07-28', '2021-09-09', 200, '036.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(100, 'C', '037', '【Q face—劇場技術體驗工作坊（燈光篇）】─2020-2021牯嶺街小劇場 重啟城中之心 系列活動', '劇場手作＋兒少教習 Cue face 是專業劇場燈光用語，Cute face 是孩子們可愛的臉。 當Cue遇到Cute，碰撞出一場打開幕後，引領孩子認識劇場的獨特體驗。 以遊戲體驗的方式，帶入劇場技術知識，結合手作電線課程，手腦並用說光就有光。', '2021-07-28', '2021-09-09', 200, '037.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(101, 'C', '038', '山水印記·名家系列聯合特展', '炎炎夏日，是否覺得暑氣逼人，\r\n好想清涼一下身心靈，洗滌塵囂的煩與燥，\r\n山水巨擘胡念祖、師承張大千的吳定夫、師大謝榮源、嶺南佟京樺等 \r\n帶您到上古就像進入叢山峻嶺當中， \r\n神遊名跡畫作， \r\n感嘆真山活水的意境。', '2021-07-28', '2021-09-09', 200, '038.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(102, 'C', '039', '【誠品書店嘉義市立美術館 期間限定店】1/27(三) Grand Opening！', '藝術與閱讀的美好邂逅\r\n職人嗜讀分享│生活好物推薦│地方美學提案\r\n2021.1.27wed. Grand Opening', '2021-07-28', '2021-09-09', 200, '039.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(103, 'C', '040', '後疫情時代－韻律與空間的匯流處 ', 'ss space space的第一個線上企劃:「後疫情時代——韻律與空間的匯流處Becoming Digital: The Form of Rhythm and Space in the Post-pandemic World」，本期我們邀請了九位來自不同背景的藝術工作者以「空間」為題分享他們的創作歷程，並討論在工作環境與展覽空間的改變下，這些經驗對創作與生活的影響。希望能夠在疫情與生活共存的脈絡中，探索藝術活動於線上傳播的形式與其可能性，並期待能藉此以更有機、更具流動性的視角互相交流。', '2021-07-28', '2021-09-09', 200, '040.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(104, 'C', '041', '— P R I S M — Satomi Tanji 2021 solo exhibition in Taipei', '「Satomi Tanji 的作品柔美而堅定，抽象卻訴求明確，系列分明地詮釋出內心嚮往的事物與價值觀。將酒精油墨技法運用的脫俗自由，掌握其特性呈現出藝術家的獨特氣質和與眾不同。 不只是描述色彩絢麗的事物，其一系列亦將焦點轉至面對自我暗黑面，最終期許發現自己也是發光體，可以療癒自我進而照亮四周。」—— Link Lion AD 李柏宏', '2021-07-28', '2021-09-09', 200, '041.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(105, 'C', '042', '卜正民的《維梅爾的帽子》與哈拉瑞的《人類大歷史》', '卜正民與哈拉瑞是最早奠定了自身方法與風格的兩位史家，前者擅長以小見大，將貿易開展後萬物複雜相連的狀況淋漓盡致表述；後者則大膽將時間尺度放到最大，以人類在地球上的數萬年發展為題材，創造了新的「大歷史」筆觸，接近歷史哲學的野心，卻又細心避開了空洞的玄想。這期課程邀請大家來認識兩位當代史家，兩本具開創性且影響力方興未艾的重要史著。', '2021-07-28', '2021-09-09', 200, '042.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(106, 'C', '043', '柿染的工藝風土走讀｜新埔篇', '你喜歡工藝嗎？你知道柿染，但有深度的了解過嗎？你喜歡地方的小旅行嗎？你想要知道怎麼發現美感嗎？ 工藝風土走讀又回到新埔囉！邀請我們的好朋友新埔柿染坊的團隊帶領大家認識柿染，中午準備了好吃的客家當地料理，也讓大家親手榨柿汁並體驗柿染，享受一場由工藝與文化交織的風土小旅行。', '2021-07-28', '2021-09-09', 200, '043.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(107, 'C', '044', '【Amaygo Bar】工作人生甘味券| 療癒心光。火花禮', '你看過皮克斯的電影「靈魂急轉彎」嗎?一起變強BAR | Amaygo Bar 始終相信，人生不一定要有終極目標。但如果能找到一個活在當下的小確幸。那也是專屬於你，讓你人生有價值、有意義的「火花」。如果你現在有點迷茫，覺得心裡好累。甚至想為自己做些改變，在Amaygo Bar裡，我們有三個特別的服務，陪你一起探索自我，療癒自己，踏上從內而外的豐盛之路! 這次我們和日曜天地合作，一起推出牌卡占卜X似顏繪X設計杯墊的全套心靈紓壓體驗!', '2021-07-28', '2021-09-09', 200, '044.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(108, 'C', '045', '【因疫情擇期舉辦】城市與移動丨奇美拉閱讀沙龍．城市新視界', '※為保障活動參加者與員工的健康安全，將暫緩三級警戒期間活動的舉行，並於日後擇期舉辦。 ※活動新訂日期及時間確定後會再以信件通知已報名的參加者，並同步更新於臉書及Accupass頁面。 延續王大閎先生於1950年代家中常邀請文藝人士聚會交流所發起的跨域藝文社團 \"The Chimera Group\"的精神，從「建築」出發，逐漸延伸至表演藝術、美術、文學、攝影、評論。首檔系列將以「城市」為核心，邀請國立台灣大學建築與城鄉研究所王志弘教授與諸位特別來賓，開拓我們對於城市空間文化新視界。', '2021-07-28', '2021-09-09', 200, '045.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(109, 'C', '046', '川流不息－臺灣客家與日本國際展', '本展嘗試呈現日本時代日本對臺灣客家族群的影響，包括產業開發、島內二次移民、語言、文學、音樂、棒球等多個面向，亦呈現在日本的臺灣客家人與社團，日本學者對臺灣客家的研究。近年客家委員會客家文化發展中心、國立交通大學客家文化學院與日本國立民族學博物館更簽署了三方的合作交流協定，本展亦是三館學術交流衍生之成果。', '2021-07-28', '2021-09-09', 200, '046.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(110, 'C', '047', '夏日大作戰 SUMMER WARS｜日本藝術家聯展 The Artists Group Exhibition', '伊日藝術計劃在今年七月策劃一檔共8位日本藝術家參展的大型聯展《夏日大作戰》。藝術是創作者與社會、與人的溝通辦法，更是其核心目的與價值，我們希望透過這8位藝術家的作品，或許模擬或許反饋、或許提出疑問或許預設答案，邀請大家用我們的觀點，從藝術家的創作中，看到更多的自己與他人，並揪緊心中的良善與助人愛人的能力，一起度過每次的苦難，夏日大作戰！', '2021-07-28', '2021-09-09', 200, '047.jpg', 'TPE', '', '', '2021-07-12 03:09:22', '2021-07-12 03:09:22'),
(111, 'D', '110', '2021創意思考線上夏令營 - 換位思考工作坊 01', '如果今天你是總統、明星、運動員、老師，或不同職業的人，該要如何去下一個決定，展現應有的專業？原本你的想法與他的想法是一樣還是不一樣？該如何去看？用什麼角度去看？事情轉交到他手上，或是他的事情轉交到我手上，會變得複雜還是更順利？\r\n\r\n這堂課，我們將列出許多不同的名人或是不同職業的人，來換位思考，從同理心來出發，換位也要換腦袋，試試看能不能激盪出新的IDEA！', '2021-10-31', '2021-11-27', 2000, '110.jpg', 'TXG', '', '', '2021-07-12 11:36:03', '2021-07-12 11:36:03'),
(112, 'D', '111', '2021創意思考線上夏令營 - 靈感九宮格工作坊 01 ', '許多創意人，都喜歡用九宮格來發想，當一件事物，可以有九種觀點，或是九種不同的聯想，可以是相似的，可以是沒有關聯的！但最後都會產出創意人所需要的答案！\r\n\r\n這堂課，我們將學習九宮格的方法，透過老師的引導，讓學生發想各種不同解決問題的可能性，看看我們日常生活中所遭遇到的疑難雜症，是否可以透過九宮格來解決問題！', '2021-09-24', '2022-02-18', 2000, '111.jpg', 'TXG', '', '', '2021-07-12 11:36:15', '2021-07-12 11:36:15'),
(113, 'D', '112', '2021創意思考線上夏令營 - Bad Idea 工作坊 01', '在日常生活中，你有用過什麼東西，是很不好的設計與發明嗎？你是否想過，當初設計這個物品的設計師他是怎麼想的？為什麼要這樣設計？\r\n\r\n這堂課，我們將要檢討這些不好的設計，然後再重新設計，並且改頭換面，把缺點變成優點，讓原本不被看好，被嫌棄的商品，變成熱賣的好商品！\r\n\r\n', '2021-07-31', '2021-08-26', 2000, '112.jpg', 'TXG', '', '', '2021-07-12 11:36:35', '2021-07-12 11:36:35'),
(114, 'D', '113', '2021創意思考線上夏令營 - 不『紙』有一種創意工作坊 01', '『紙』是這麼平凡無奇，但在日常生活中，是每一個人都會使用的用具，它可以是用來書寫、記錄，或是印刷成一本書，也有可能是摺出各式各樣的玩具。\r\n\r\n而紙也可以成為很多熱門的課程，在知名的英國建築聯盟學院，有一堂 Raoul Bunschoten 大師的高階創意工作坊，是透過『紙』來發想出不同的元素，透過大黑板，學生將他所看到、所想的、所移動的、所堆疊的來進行發想，你可能是爬高俯瞰，或是躺在地上，用不同的視角，將不能重複的答案，用接龍的方式，書寫在出來，任何無關緊要的答案，都有可能是建築大師的靈感來源！且在創意的世界裡，沒有笨答案！\r\n\r\n除了大師高階工作坊以外，我們為了方便線上教學，及符合這堂課的學生年齡層度，我們將引用世界知名設計公司的初階創意發想課程，透過A4紙來進行八種不同的創意挑戰，每一位學生將運用自己的創意巧思，透過靈感發想、繪製草圖、動手製作，來完成老師所賦予的任務。\r\n\r\n本課程需準備空白或是已使用過的A4紙一疊、剪刀或刀片、膠水或熱熔槍、膠帶或紙膠帶等工具。\r\n\r\n', '2021-08-06', '2021-08-31', 2000, '113.jpg', 'TXG', '', '', '2021-07-12 11:38:07', '2021-07-12 11:38:07'),
(115, 'D', '114', '引發動機，教育訓練簡報技巧 | BFAdemy', 'BFAdemy Online 簡報學院是為商務人士量身打造的線上學習方案，從例行週會報告、季度匯報到年度報告，都需要學習向上匯報的溝通能力，如何在有限的時間內推動進度、取得授權和資源，是職場工作者的重要能力。', '2021-07-31', '2021-09-17', 2000, '114.jpg', 'TXG', '', '', '2021-07-12 11:38:15', '2021-07-12 11:38:15'),
(116, 'D', '115', '2021 TAAO中華民國隱形矯正學會', '本次研討會秉持本會一貫的理念，除了幫助醫師以在臨床上最快上手的方式獲得最大量最實用的學習，並分享如何避免和處理各類型的個案所可能衍生的問題，本次研討會主題更要告訴您隱形矯正的可得不可得，她的美麗與哀愁-像極了愛情！相信您也和我一樣滿心期待一場浪漫的邂逅！ 敬祝各位會員醫師平安健康！預祝圓滿成功！', '2021-08-19', '2021-11-19', 2000, '115.jpg', 'TXG', '', '', '2021-07-12 11:38:27', '2021-07-12 11:38:27'),
(117, 'D', '116', 'ONFOTO 攝影共讀會', '「​好的攝影理論能讓人看清複雜世界的本質，進而提出有效的解決方案，也就是創作。」 歡迎加入攝影共讀會，活動由 ONFOTO 視覺藝術總監 呂盈蓉（舊金山藝術大學 攝影碩士）主持，精選尚未有中譯版本的攝影評論書籍作為選書。我們可以將共讀會作為英文閱讀與攝影思考同時進行的腦部運動。', '2021-10-09', '2021-12-10', 2000, '116.jpg', 'TXG', '', '', '2021-07-12 11:38:38', '2021-07-12 11:38:38'),
(118, 'D', '117', 'Google UX Design Certificate 非官方聯合公益讀書會', 'Hi Guys 👋🏻 我們是 Guo, Jason, Elise！因為 UX 四神湯舉辦的深夜食堂活動認識彼此，而決定在這三個月來做點不一樣的事情，活動為主辦單位審核制，請勿自行報名。 以 Google 在 Coursera 上發起的 UX 課程為目標的線上互動公益讀書會，此次讀書會將以「公益、社群」為出發。活動時間為三個月，入場費用將扣除成本，全數捐贈給台灣第一線民間醫護團隊。', '2021-11-19', '2021-12-24', 2000, '117.jpg', 'TXG', '', '', '2021-07-12 11:38:47', '2021-07-12 11:38:47'),
(119, 'D', '118', '【2021後山文學獎】徵件', '鼓勵文學創作，深耕文學土壤，推廣文學欣賞及寫作風氣，發掘和培植文學人才，建立後山文學特色。', '2021-11-19', '2022-02-12', 2000, '118.jpg', 'TXG', '', '', '2021-07-12 11:38:58', '2021-07-12 11:38:58'),
(120, 'D', '119', '《 深度放鬆、 聲音體驗》銅鑼 x 頌缽', '高重複性的日常與快速高壓的生活型態，使我們內心無法覺察周遭變化，失去靈感和與淺意識的對話能力。透過德國工匠手工打造的星行鑼與尼泊爾頌缽的聲音體驗，使身心進入寧靜，達到壓力釋放且同時專注的體驗，感受溫潤沈穩的聲音震動帶來的療癒力。', '2021-11-24', '2021-12-16', 2000, '119.jpg', 'TXG', '', '', '2021-07-12 11:39:09', '2021-07-12 11:39:09'),
(121, 'D', '120', '第七屆雲想藝－雕塑聯展', '青雲畫廊每年都會舉辦雲享藝系列展覽，以推廣年輕雕塑藝術家為主，讓大家有機會能夠藉由年輕藝術家的作品，看到現在新一輩年輕人那源源不斷的創作靈感，在他們的作品可以感受到他們將自己熱愛藝術的能量注入至作品中。', '2021-12-09', '2022-01-14', 2000, '120.jpg', 'TXG', '', '', '2021-07-12 11:39:19', '2021-07-12 11:39:19'),
(122, 'D', '121', '由愛而生，從自由覺醒 | ERIC BONTE ', '埃里克 ‧ 邦特，對於大部分收藏家而言，他是那個法國最著名穹頂玻璃藝術家，他的作品覆蓋全世界，作品數量之多，量體之大，品貭之華麗，舉世無人出其右。   他似乎應該盡享他的「光之神」的桂冠榮耀。然而，他殫精竭智地努力經營的卻是叧一個深刻的世界。 琉璃工房博物館將於展覽期間，每月舉辦免費專場導覽活動，帶領您走入玻璃藝術的殿堂，有了說故事的人，讓作品帶給您的感動更真切。', '2021-08-18', '2021-10-15', 2000, '121.jpg', 'TXG', '', '', '2021-07-12 11:40:06', '2021-07-12 11:40:06'),
(123, 'D', '122', '2021後青年工作坊－音樂劇篇', '邁入第三年的後青年工作坊，秉持著以「體驗引導學習，用身體經驗貼近藝術，融入生活」的核心主軸，設計「身體律動篇」、「歌仔戲篇」、「音樂劇篇」三大主題，希冀透過日常生活與表演藝術結合，自我與生命對話，引領後青年一步步回到自己，重新發現生命的各種可能。', '2021-08-05', '2021-09-30', 2000, '122.jpg', 'TXG', '', '', '2021-07-12 11:40:49', '2021-07-12 11:40:49'),
(124, 'D', '123', '驫舞劇場與您相約樹林', '驫舞劇場藝術列車即將進站，下一站樹林，與您由淺入深一起相約藝遊樂活。【相約樹林】一問一答互動式演出讓您在90分鐘內輕鬆掌握看舞知識；【藝遊樹林】深度體驗不間斷8小時演出給您無極限的舞蹈觀賞挑戰；【樂活樹林】輕鬆學習10場入門工作坊帶您體驗自由舞動的美好。不分男女老少，歡迎全家大小一起搭乘驫舞劇場藝術列車。', '2021-07-31', '2021-11-20', 2000, '123.jpg', 'TXG', '', '', '2021-07-12 11:40:57', '2021-07-12 11:40:57'),
(125, 'D', '124', '手作課程-鐵罐乾燥花香氛蠟燭手作課程', '香氛與蠟燭一直都密不可分，但你知道市面上蠟燭很多都是石蠟混合大豆蠟嗎！為什麼不做成全部都是大豆蠟，更天然更好呢。因為大豆蠟相對來說融點低，可能遇熱會有溶掉狀況，就會出現不平整表面，但石蠟硬度高融點高，所以混合後就比較不會賣相差，也可以放比較久唷！只是因為時蠟燃燒還是容易有黑煙，所以還是建議大家多多使用純大豆蠟蠟燭唷！', '2021-10-08', '2021-11-19', 2000, '124.jpg', 'TXG', '', '', '2021-07-12 11:41:06', '2021-07-12 11:41:06'),
(127, 'D', '126', '手作課程-多稜角水泥永生花盆', '想要美化自己的小書桌嗎？讓自己在工作時也能有好心情，快來跟我們一起討論，你想要的永生花是長怎樣?我們手作老師，過程中會帶領著你，挑選出自己喜歡的主花與配花，教你初學著也能做出來的方式，為了凸顯永生花的美，我們特地永環保水泥製作多菱角水泥盆，讓質感提升。製作出專屬於你的不凋花盆，視覺的享受，體驗美所帶來的不同層次。', '2021-11-19', '2022-02-25', 2000, '126.jpg', 'TXG', '', '', '2021-07-12 11:41:26', '2021-07-12 11:41:26'),
(128, 'D', '127', '手作課程-多稜角水泥永生花盆', '想要美化自己的小書桌嗎？讓自己在工作時也能有好心情，快來跟我們一起討論，你想要的永生花是長怎樣?我們手作老師，過程中會帶領著你，挑選出自己喜歡的主花與配花，教你初學著也能做出來的方式，為了凸顯永生花的美，我們特地永環保水泥製作多菱角水泥盆，讓質感提升。製作出專屬於你的不凋花盆，視覺的享受，體驗美所帶來的不同層次。', '2021-12-10', '2022-01-08', 2000, '127.jpg', 'TXG', '', '', '2021-07-12 11:42:55', '2021-07-12 11:42:55'),
(169, 'D', '169', '藝術探索前哨站＿劇場萬花筒戲劇工作坊', '【故事工場文創ｘ國立新竹美學館ｘ青少年戲劇工作坊】 由專業戲劇講師引導，遊戲中探索肢體的語言；排練演出揭開表演神秘面紗。工作坊讓你找到同好，發現百變的自己。不怕戲劇０經驗，踏出第一步，你會發現劇場有裡滿滿的驚喜等你來挖掘。＃靈感無所不在', '2021-07-31', '2022-01-19', 2000, '125.jpg', 'TXG', '', '', '2021-07-20 13:47:10', '2021-07-20 13:47:10');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=170;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
