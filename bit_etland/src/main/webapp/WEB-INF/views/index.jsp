<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 
	@작성자 : 박은지 digidudu06@naver.com
	@작성일자 : 2019. 3. 12. 오후 4:49:12
	@파일명 : index.jsp
	@기능 : 
 -->

<!DOCTYPE html>
<html lang="en">
<head>
<title>Journey</title>
<meta charset="utf-8">
<link rel="icon" href="resources/images/favicon.ico">
<link rel="shortcut icon" href="resources/images/favicon.ico">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/slider.css">
<script src="${js}/jquery.js"></script>
<script src="${js}/jquery-migrate-1.1.1.js"></script>
<script src="${js}/superfish.js"></script>
<script src="${js}/sForm.js"></script>
<script src="${js}/jquery.jqtransform.js"></script>
<script src="${js}/jquery.equalheights.js"></script>
<script src="${js}/jquery.easing.1.3.js"></script>
<script src="${js}/tms-0.4.1.js"></script>
<script src="${js}/jquery-ui-1.10.3.custom.min.js"></script>
<script src="${js}/jquery.ui.totop.js"></script>
<script src="${js}/app.js"></script>
<script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'random',
        pagination: false, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: true,
        waitBannerAnimation: false,
        progressBar: false
    });
    $("#tabs").tabs();
    $().UItoTop({
        easingType: 'easeOutQuart'
    });
});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body class="page1">
<header>
  <div id="ej_header" class="container_12">
    <div class="grid_12">
      <h1><a href="index.html"><img src="resources/images/logo.png" alt=""></a></h1>
      <div class="clear"></div>
    </div>
    <div class="menu_block">
      <nav>
        <ul class="sf-menu">
          <li class="current"><a href="index.html">Home</a></li>
          <li class="with_ul"><a href="about.html">About</a>
            <ul>
              <li><a href="#">Agency</a></li>
              <li><a href="#">News</a></li>
              <li><a href="#">Team</a></li>
            </ul>
          </li>
          <li><a href="gallery.html">Gallery</a></li>
          <li><a href="blog.html">Blog</a></li>
          <li><a href="contacts.html">Contacts</a></li>
          <li><a href="${ctx}/move/customer/signin">SignIn</a></li>
        </ul>
      </nav>
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
  </div>
</header>

<div id="ej_main" class="main">
  <div class="container_12">
    <div class="grid_12">
      <div class="slider-relative">
        <div class="slider-block">
          <div class="slider"> <a href="#" class="prev"></a><a href="#" class="next"></a>
            <ul class="items">
              <li><img src="resources/images/slide.jpg" alt="">
                <div class="banner">
                  <div>THERE ARE PLENTY OF PLACES</div>
                  <br>
                  <span> that are worth seeing</span> </div>
              </li>
              <li><img src="resources/images/slide1.jpg" alt=""></li>
              <li><img src="resources/images/slide2.jpg" alt=""></li>
              <li><img src="resources/images/slide3.jpg" alt=""></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="container_12">
      <div class="grid_12">
        <h3>Top Destinations</h3>
      </div>
      <div class="boxes">
        <div class="grid_4">
          <figure>
            <div><img src="resources/images/page1_img1.jpg" alt=""></div>
            <figcaption>
              <h3>Venice</h3>
              Lorem ipsum dolor site geril amet, consectetur cing eliti. Suspendisse nulla leo mew dignissim eu velite a rew qw vehicula lacinia arcufasec ro. Aenean lacinia ucibusy fase tortor ut feugiat. Rabi tur oliti aliquam bibendum olor quis malesuadivamu. <a href="#" class="btn">Details</a> </figcaption>
          </figure>
        </div>
        <div class="grid_4">
          <figure>
            <div><img src="resources/images/page1_img2.jpg" alt=""></div>
            <figcaption>
              <h3>New York</h3>
              Psum dolor sit ametylo gerto consectetur ertori hykill holit adipiscing lity. Donecto rtopil osueremo	kollit asec emmodem geteq tiloli. Aliquam dapibus neclol nami wertoli elittro eget vulpoli no
              utaterbil congue turpis in su. <a href="#" class="btn">Details</a> </figcaption>
          </figure>
        </div>
        <div class="grid_4">
          <figure>
            <div><img src="resources/images/page1_img3.jpg" alt=""></div>
            <figcaption>
              <h3>Paris</h3>
              Lorem ipsum dolor site geril amet, consectetur cing eliti. Suspendisse nulla leo mew dignissim eu velite a rew qw vehicula lacinia arcufasec ro. Aenean lacinia ucibusy fase tortor ut feugiat. Rabi tur oliti aliquam bibendum olor quis malesuadivamu. <a href="#" class="btn">Details</a> </figcaption>
          </figure>
        </div>
        <div class="clear"></div>
      </div>
      <div class="grid_8">
        <div id="tabs">
          <ul>
            <li><a href="#tabs-1">last Minute</a></li>
            <li><a href="#tabs-2">hot Deals</a></li>
            <li><a href="#tabs-3">All-Inclusive</a></li>
          </ul>
          <div class="clear"></div>
          <div class="tab_cont" id="tabs-1"> <img src="resources/images/page1_img4.jpg" alt="">
            <div class="extra_wrapper">
              <div class="text1">Rem psum dr sit amet. </div>
              <p class="style1"><a class="col2" href="#">Click here</a> for more info about this free website template created by TemplateMonster.com </p>
              Nulla facilisi. Ut ut tincidunt lacus, ut auctor libero. Duis ommodo vel ipsum sed volutpat. Phasellus a sagittis dui, eu adipiscinget nisiestibulum eutro. <a href="#" class="btn">Details</a>
              <div class="clear "></div>
            </div>
            <div class="clear cl1"></div>
            <img src="resources/images/page1_img5.jpg" alt="">
            <div class="extra_wrapper">
              <div class="text1 tx1">Hem psuf abr sit dmety. </div>
              Julla facilisi. Ut ut tincidunt lacus, ut auctor libero. Fuis ommodo vel ipsum sed volutpat. Phasellus a sagittis dui, eu adipiscinget nisi. Vestibulum eu eleifend metus, ut ornare nibh. Vestibulumul tincidunt interdum libero vitae faucibus. Gonec dapibus feugiate auctor. In ac dapibus lacus. Maecenas in pharetra mim asellus a sagittis dui, eu adipiscinget nisi.
              <div class="clear"></div>
              <a href="#" class="btn bt1">Details</a>
              <div class="clear "></div>
            </div>
          </div>
          <div class="tab_cont" id="tabs-2"> <img src="resources/images/page1_img4.jpg" alt="">
            <div class="extra_wrapper">
              <div class="text1">Rem psum dr sit amet. </div>
              <p class="style1">Nulla facilisi. Ut ut tincidunt lacus, ut auctor libero. Duis ommodo vel ipsum sed volutpat. Phasellus a sagittis dui, eu adipiscinget nisiestibulum eutro.</p>
              Nulla facilisi. Ut ut tincidunt lacus, ut auctor libero. Duis ommodo vel ipsum sed volutpat. Phasellus a sagittis dui, eu adipiscinget nisiestibulum eutro. <a href="#" class="btn">Details</a>
              <div class="clear "></div>
            </div>
            <div class="clear cl1"></div>
            <img src="resources/images/page1_img5.jpg" alt="">
            <div class="extra_wrapper">
              <div class="text1 tx1">Hem psuf abr sit dmety. </div>
              Julla facilisi. Ut ut tincidunt lacus, ut auctor libero. Fuis ommodo vel ipsum sed volutpat. Phasellus a sagittis dui, eu adipiscinget nisi. Vestibulum eu eleifend metus, ut ornare nibh. Vestibulumul tincidunt interdum libero vitae faucibus. Gonec dapibus feugiate auctor. In ac dapibus lacus. Maecenas in pharetra mim asellus a sagittis dui, eu adipiscinget nisi.
              <div class="clear"></div>
              <a href="#" class="btn bt1">Details</a>
              <div class="clear "></div>
            </div>
          </div>
          <div class="tab_cont" id="tabs-3"> <img src="resources/images/page1_img4.jpg" alt="">
            <div class="extra_wrapper">
              <div class="text1">Rem psum dr sit amet. </div>
              <p class="style1">Nulla facilisi. Ut ut tincidunt lacus, ut auctor libero. Duis ommodo vel ipsum sed volutpat. Phasellus a sagittis dui, eu adipiscinget nisiestibulum eutro.</p>
              Nulla facilisi. Ut ut tincidunt lacus, ut auctor libero. Duis ommodo vel ipsum sed volutpat. Phasellus a sagittis dui, eu adipiscinget nisiestibulum eutro. <a href="#" class="btn">Details</a>
              <div class="clear "></div>
            </div>
            <div class="clear cl1"></div>
            <img src="resources/images/page1_img5.jpg" alt="">
            <div class="extra_wrapper">
              <div class="text1 tx1">Hem psuf abr sit dmety. </div>
              Julla facilisi. Ut ut tincidunt lacus, ut auctor libero. Fuis ommodo vel ipsum sed volutpat. Phasellus a sagittis dui, eu adipiscinget nisi. Vestibulum eu eleifend metus, ut ornare nibh. Vestibulumul tincidunt interdum libero vitae faucibus. Gonec dapibus feugiate auctor. In ac dapibus lacus. Maecenas in pharetra mim asellus a sagittis dui, eu adipiscinget nisi.
              <div class="clear"></div>
              <a href="#" class="btn bt1">Details</a>
              <div class="clear "></div>
            </div>
          </div>
        </div>
      </div>
      <div class="grid_4">
        <div class="newsletter_title">NewsLetter </div>
        <div class="n_container">
          <form id="newsletter" action="#">
            <div class="success">Your subscribe request has been sent!</div>
            <div class="text1">Sign up to receive our newsletters </div>
            <label class="email">
              <input type="email" value="email address" >
              <span class="error">*This is not a valid email address.</span> </label>
            <div class="clear"></div>
            <a href="#" class="" data-type="submit"></a>
          </form>
          <ul class="list">
            <li><a href="#">Fgo psu dr sit amek </a></li>
            <li><a href="#">Sem psum dr sit ametre </a></li>
            <li><a href="#">Rame sum dr sit ame </a></li>
            <li><a href="#">Bem psum dr sit ameteko </a></li>
            <li><a href="#">Nem dsum dr sit amewas </a></li>
            <li><a href="#">Vcem psum dr sit </a></li>
            <li><a href="#">Zdfem psum dr sittr amewe </a></li>
          </ul>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <div class="bottom_block">
    <div class="container_12">
      <div class="grid_2 prefix_2">
        <ul>
          <li><a href="#">FAQS Page</a></li>
          <li><a href="#">People Say</a></li>
        </ul>
      </div>
      <div class="grid_2">
        <ul>
          <li><a href="#">Useful links</a></li>
          <li><a href="#">Partners</a></li>
        </ul>
      </div>
      <div class="grid_2">
        <ul>
          <li><a href="#">Insurance</a></li>
          <li><a href="#">Family Travel</a></li>
        </ul>
      </div>
      <div class="grid_2">
        <h4>Contact Us:</h4>
        TEL: 1-800-234-5678<br>
        <a href="#">info@demolink.org</a> </div>
      <div class="clear"></div>
    </div>
  </div>
</div>

<footer>
  <div id="footer" class="container_12">
    <div class="grid_12">
      <div class="socials"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
      <div class="copy"> Journey &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a href="http://www.templatemonster.com/">TemplateMonster.com</a> </div>
    </div>
    <div class="clear"></div>
  </div>
</footer>
</body>
<script>
app.path.init('${ctx}');
</script>
</html>