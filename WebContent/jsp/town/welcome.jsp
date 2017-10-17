<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%String path=request.getContextPath();String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html lang="zh-tw">

<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	
	<link href="jsp/town/css/carousel.css" rel="stylesheet">
    <title>e商城</title>

    <!-- Bootstrap Core CSS -->
    <link href="jsp/town/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="jsp/town/css/scrolling-nav.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<!-- The #page-top ID is part of the scrolling feature - the data-spy and data-target are part of the built-in Bootstrap scrollspy function -->

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">e商城</a>
            </div>           
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li class="hidden">
                        <a class="page-scroll" href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">關於e商城</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">服務</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">連繫</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>    
    
    
    
    
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Example headline.</h1>
              <p>本商城是一個綜合性購物網站。 2012年1月11日上午，本商城發布全新Logo形象。 2012年11月11日，本商城大賺一筆，宣稱13小時賣100億，創世界紀錄。本商城全新打造的B2C，整合數千家品牌商、生產商，為商家和消費者之間提供一站式解決方案。提供100%品質保證的商品，7天無理由退貨的售後服務，以及購物積分返現等優質服務。 2014年2月19日，本商城正式上線，為國內消費者直供海外原裝進口商品</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <p>本商城是台灣一家自營式B2C購物網站，前稱360buy，創始人劉強東。2014年，本商城在美國納斯達克證券交易所上市，成為台灣第一個赴美上市的大型綜合型電商平台，2015年第一季度在台灣自營式B2C電商市場的占有率為56.3%。目前出售家電、數碼通訊、電腦、家居百貨、服裝服飾、母嬰、圖書、食品等商品。根據資料顯示，截至2016年3月底止，本商城商城擁有7個補充中心、209個貨倉、5,987個送貨據點及2,493個提貨站。</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>截止2012年10月30日，已有87家獨立B2C網站入駐本商城。其中包括台灣圖書零售第一的B2C網站XX科大，XX科大帶入全部自營類目，包括80萬種圖書品類和30多萬種百貨品類入駐本商城，售價將實現同步。
據了解，XX科大此次是將80萬種圖書品類，和30多萬種百貨品類，同時入駐本商城，已經進入貨品上傳、店鋪裝修等試運營階段，XX科大站內站外商品售價將實現同步。此外，XX科大800城市貨到付款、150個城市次日達，支持當面退換貨等特殊服務也將會在本商城旗艦店得以支持</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
    
    <!-- Intro Section -->
    <section id="intro" >
        <div class="container">
            <div class="row">
        <div class="col-lg-4">
          <img class="img-thumbnail" src="getFtpFile.act?path=estore/1&file=5d4e81e5e4c5405ba69fb22da7d4dd28_C_1600_1200_Mtg_7.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2><a href="into.vx?store=1">商店1</a></h2>
          <p>本店是全國第1家自營式B2C購物網站，前稱XXX，創始人CCC。201X年在台灣證券交易所上市，成為台灣第1個上市的大型綜合型電商平台，2015年第1季度在台灣自營式B2C電商市場的占有率為56%。</p>
          <p><a class="btn btn-default" href="into.vx?store=1" role="button">進入店舖 &raquo;</a> 
          <a class="btn btn-default" href="into.vx?store=1&set=true" role="button">管理店舖 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-thumbnail" src="getFtpFile.act?path=estore/1&file=5d4e81e5e4c5405ba69fb22da7d4dd28_C_1600_1200_Mtg_7.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2><a href="into.vx?store=2">商店2</a></h2>
          <p>本店是全國第2家自營式B2C購物網站，前稱XXX，創始人CCC。201X年在台灣證券交易所上市，成為台灣第2個上市的大型綜合型電商平台，2015年第1季度在台灣自營式B2C電商市場的占有率為22%。</p>
          <p><a class="btn btn-default" href="into.vx?store=2" role="button">進入店舖 &raquo;</a> 
          <a class="btn btn-default" href="into.vx?store=2&set=true" role="button">管理店舖 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-thumbnail" src="getFtpFile.act?path=estore/1&file=5d4e81e5e4c5405ba69fb22da7d4dd28_C_1600_1200_Mtg_7.jpg" alt="Generic placeholder image" width="140" height="140">
          <h2><a href="into.vx?store=3">商店3</a></h2>
          <p>本店是全國第3家自營式B2C購物網站，前稱XXX，創始人CCC。201X年在台灣證券交易所上市，成為台灣第3個上市的大型綜合型電商平台，2015年第1季度在台灣自營式B2C電商市場的占有率為21%。</p>
          <p>
          <a class="btn btn-default" href="into.vx?store=3" role="button">進入店舖 &raquo;</a> 
          <a class="btn btn-default" href="into.vx?store=3&set=true" role="button">管理店舖 &raquo;</a>
          </p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
            
            
            
            
            
            
            
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1>About Section</h1>
                    
                    
                    
                    e商城於2004年正式涉足電商領域。 2015年，e商城集團市場交易額達到4627億元，淨收入達到1813億元，年交易額同比增長78%，增速是行業平均增速的2倍*。e商城是中國收入規模最大的互聯網企業。 2016年7月，e商城入榜2016《財富》全球500強，成為中國首家、唯一入選的互聯網企業。截至2016年6月30日，e商城集團擁有超過11萬名正式員工，業務涉及電商、金融和技術三大領域。

2014年5月，e商城集團在美國納斯達克證券交易所正式掛牌上市，是中國第一個成功赴美上市的大型綜合型電商平台，並成功躋身全球前十大互聯網公司排行榜，2015年7月，e商城憑藉高成長性入選納斯達克100指數和納斯達克100平均加權指數。
e商城商城

e商城商城目前已成長為中國最大的自營式電商企業，2015年第三季度在中國自營式B2C電商市場的佔有率為56.9%*。e商城商城致力於為消費者提供愉悅的在線購物體驗，自2004年成立以來，堅持“正品行貨”的理念，對假貨零容忍；採取六大品控措施，保障正品，大量品牌直供，從源頭杜絕假貨。通過內容豐富、人性化的網站（www.jd.com）和移動客戶端，e商城商城以富有競爭力的價格，提供具有豐富品類及卓越品質的商品和服務，以快速可靠的方式送達消費者，並且提供靈活多樣的支付方式。e商城商城致力於打造一站式綜合購物平台，服務中國億萬家庭，3C事業部、家電事業部、消費品事業部、服飾傢居事業部、生鮮事業部和新通路事業部六大部門領航發力，覆蓋用戶多元需求。同時，e商城商城還為第三方賣家提供在線銷售平台和物流等一系列增值服務。

e商城擁有中國電商領域規模最大的物流基礎設施；通過完善佈局，e商城將成為全球唯一擁有中小件、大件、冷藏冷凍倉配一體化物流設施的電商企業。截至2016年6月30日，e商城在全國范圍內擁有7大物流中心，運營了234個大型倉庫，擁有6756個配送站和自提點，覆蓋全國范圍內的2639個區縣，倉儲設施佔地面積約520萬平方米。e商城專業的配送隊伍能夠為消費者提供一系列專業服務，如：211限時達、次日達、夜間配和2小時極速達，GIS包裹實時追踪、售後100分、快速退換貨以及家電上門安裝等服務，保障用戶享受到卓越、全面的物流配送和完整的“端對端”購物體驗。e商城智慧物流持續創新，“亞洲一號”現代化物流中心是當今中國最大、最先進的電商物流中心之一，目前已有6個“亞洲一號”項目投入使用；e商城無人機已經開始農村電商配送試運營，無人配送車開始路試，將會全面提升e商城運營效率。

2014年3月e商城與騰訊達成了戰略合作，全面推進移動社交電商新模式的發展，成為全球移動社交的積極探索者和實踐者。目前，e商城已經形成了手機客戶端、微信購物、手機QQ購物組成的完整移動購物佈局。 2016年第二季度通過移動端渠道完成訂單量約佔總完成訂單量的79.3%，同比增長超過130%。

2015年，e商城加速渠道下沉，大力發展農村電商，推進3F戰略，即工業品進農村戰略(Factory to Country)、農村金融戰略(Finance to Country)和生鮮電商戰略(Farm to Table) ，已初見成效。截至2016年8月31日，e商城已開設1600多家“e商城幫服務店”，服務覆蓋43萬行政村；e商城建立了1500多家“縣級服務中心”，擁有近30萬名鄉村推廣員，服務23萬行政村；地方特產館特產店已達到1000多家，e商城農資電商的合作涉農企業已達到200多家；已授權的e商城農資服務中心達到100多家，鄉村白條覆蓋全國近30多萬行政村。
跨境電商

e商城在跨境進出口業務方面都制定了詳細的發展規劃，全面加速國際化進程。

在進口業務方面，成立了“e商城全球購”平台。目前，已開設的國家館有“歐洲館”、“韓國館”、“日本館”、“澳洲館”、“美國館”、“加拿大館”、“新西蘭館”；已開設的地區館有“台灣地區館”和“香港地區館”，中國消費者足不出戶即可享受全球優質商品。

在出口業務方面，e商城的多語言全球售跨境貿易平台en.jd.com，致力於滿足全球用戶需求，立足全球供應鏈，以“全球化+本地化”模式帶動海量“中國好商品”與“中國好商家”走出去。海外業務已在俄羅斯、印度尼西亞展開佈局。
                    
                    
                    
                    
                    
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="services-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Services Section</h1>
                    e商城金融集團，於2013年10月開始獨立運營，定位為金融科技公司。e商城金融依托e商城生態平台積累的交易記錄數據和信用體系，向社會各階層提供融資貸款、理財、支付、眾籌等各類金融服務。夯實金融門戶基礎，並依托e商城眾創生態圈，為創業創新者提供全產業鏈一站式服務。

e商城金融現已建立七大業務板塊，分別是供應鏈金融、消費金融、眾籌、財富管理、支付、保險、證券。e商城金融APP，為用戶提供了“一站式金融生活移動平台”，涵蓋了目前理財加消費的金融產品。

2016年1月16日，e商城金融已和由紅杉資本中國基金，嘉實投資和中國太平領投的投資人完成具有約束力的增資協議簽署，融資66.5億人民幣。此輪融資對e商城金融的交易後估值為466.5億人民幣。
e商城技術

e商城是一家以技術為成長驅動的公司，從成立伊始，就投入大量資源開發完善可靠、能夠不斷升級、以應用服務為核心的自有技術平台，從而驅動電商、金融等各類業務的成長。未來，e商城將更加重視技術的戰略地位，發展雲計算、大數據、智慧物流、人工智能、AR/VR、智能硬件等最新技術，以推動e商城實現快速、可持續增長。

技術對e商城的價值可以總結為業務保障和技術突破兩個方面。業務保障包括基礎保障、平台保障和安全保障，能夠支持e商城的高速順暢運營，應對618、雙11等電商大促的海量訂單壓力。在完成業務保障的基礎上，技術突破會給e商城帶來更高的運行效率和更多的商業機會。目前e商城的技術突破有相當的比重是從大數據中產生的，比如大數據能讓用戶體驗更好、運營效率更高，完成個性化推薦搜索、自動補貨、自動定價等應用；e商城雲在完成全面e商城業務運營支撐的同時，會成為e商城對外提供技術、方案服務的平台，e商城將自身的技術、資源和經驗全面雲化輸出，幫助政府及行業用戶迅速走上“互聯網+”道路；e商城智慧物流應用發展迅速，無人機送貨在今年618前夕實現試運營，自動化物流中心已逐步落地，無人配送車進入路試階段，不斷提昇運營效率和用戶體驗。

e商城致力於成為一家為社會創造最大價值的公司。經過13年砥礪前行，e商城在商業領域一次又一次突破創新，取得了跨越式發展。與此同時，e商城不忘初心，積極履行企業社會責任，在就業、納稅、全球化等方面不斷為社會做出貢獻。未來，我們會不懈努力，將e商城打造成為一家讓國人為之自豪的偉大企業。

備註：
    * 據商務部數據顯示，2015年全國網絡零售交易額為3.88萬億元，同比增長33.3%
    * 數據來源於艾瑞諮詢，2015年12月發布

配送服務說明：

211限時達：當日上午11：00前提交的現貨訂單（部分城市為上午10點前），以訂單出庫完成揀貨時間點開始計算，當日送達；夜裡11：00前提交的現貨訂單（以訂單出庫後完成揀貨時間點開始計算），次日15：00前送達。

次日達：在一定時間點之前提交的現貨訂單（以訂單出庫後完成揀貨的時間點開始計算），將於次日送達。

極速達：e商城為消費者提供的一項個性化付費增值服務。消費者通過“在線支付”方式全額成功付款或“貨到付款”方式成功提交訂單，並勾選“極速達”服務後，e商城會在服務時間內，2小時將商品送至消費者所留地址，目前僅北京、上海、廣州、成都等部分城市的部分派送區域支持極速達服務。

夜間配：e商城為消費者提供更快速、更便利的一項增值服務。消費者下單時在日曆中選擇“19:00-22:00”時段，屬“夜間配”服務範圍內的商品，e商城會盡可能安排配送員在消費者選定當日晚間19:00-22 :00送貨上門。目前，“夜間配”業務在北京、上海、廣州、成都、武漢、瀋陽六個城市提供服務。
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Contact Section</h1>
                    
                    新通路業務：
    如果您是品牌廠商，想要深入3-6級市場尋求新的增長機會；如果您是零售店面，想尋求更好的貨源及價格；如果你一腔熱血，想加入我們一起開拓新的事業！請點此了解»
    採銷業務：
    如果您想由e商城代理、銷售您的商品，請點此了解»
    開放平台業務：
    如果您想藉助e商城開放平台銷售您的商品，了解e商城開放平台政策，請點此了解»
    企業採購業務：
    如果您是企業，想集中採購商品、成為e商城企業客戶，請點此了解»
    廣告服務：
    如果您希望在e商城商城投放廣告，請點此了解»
    戰略合作及其他：
    如果您希望和e商城商城進行戰略合作或多業務合作（不受理銀行、支付等涉及資金業務），請點此了解»
    人才招聘：
    如果您希望加入e商城公司，與e商城共同成長與發展，歡迎查看招聘職位»
    
                </div>
            </div>
        </div>
    </section>

    <!-- jQuery -->
    <script src="jsp/town/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="jsp/town/js/bootstrap.min.js"></script>

    <!-- Scrolling Nav JavaScript -->
    <script src="jsp/town/js/jquery.easing.min.js"></script>
    <script src="jsp/town/js/scrolling-nav.js"></script>

</body>

</html>