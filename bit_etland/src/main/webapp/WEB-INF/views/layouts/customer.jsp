<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 
	@작성자 : 박은지 digidudu06@naver.com
	@작성일자 : 2019. 3. 12. 오후 12:38:26
	@파일명 : *.jsp
	@기능 : 
 -->
  <jsp:include page="common.jsp"/>
  
 <body>
  <div id="wrapper">
    <!-- toggle top area -->
    <div class="hidden-top">
		<tiles:insertAttribute name="hidden-top" />
    </div>
    <!-- end toggle top area -->
    <!-- start header -->
    <header>
      <div class="container">
        <!-- hidden top area toggle link -->
        <div id="header-hidden-link">
          <a href="#" class="toggle-link" title="Click me you'll get a surprise" data-target=".hidden-top"><i></i>Open</a>
        </div>
        <!-- end toggle link -->
        <div class="row nomargin">
          <div class="span12">
            <div class="headnav">
              <tiles:insertAttribute name="headnav" />
            </div>
            <!-- Signup Modal -->
            <div id="mySignup" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySignupModalLabel" aria-hidden="true">
             	<tiles:insertAttribute name="sign_up" />
            </div>
            <!-- end signup modal -->
            <!-- Sign in Modal -->
            <div id="mySignin" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="mySigninModalLabel" aria-hidden="true" style="display: none;">
              	<tiles:insertAttribute name="sign_in" />
            </div>
            <!-- end signin modal -->
            <!-- Reset Modal -->
            <div id="myReset" class="modal styled hide fade" tabindex="-1" role="dialog" aria-labelledby="myResetModalLabel" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 id="myResetModalLabel">Reset your <strong>password</strong></h4>
              </div>
              <div class="modal-body">
                <form class="form-horizontal">
                  <div class="control-group">
                    <label class="control-label" for="inputResetEmail">Email</label>
                    <div class="controls">
                      <input type="text" id="inputResetEmail" placeholder="Email">
                    </div>
                  </div>
                  <div class="control-group">
                    <div class="controls">
                      <button type="submit" class="btn">Reset password</button>
                    </div>
                    <p class="aligncenter margintop20">
                      We will send instructions on how to reset your password to your inbox
                    </p>
                  </div>
                </form>
              </div>
            </div>
            <!-- end reset modal -->
          </div>
        </div>
        <div class="row">
          <div class="span4">
            <div class="logo">
              <a href="index.html"><img src="img/logo.png" alt="" class="logo"></a>
              <h1>Flat and trendy bootstrap template</h1>
            </div>
          </div>
          <div class="span8">
            <div class="navbar navbar-static-top">
              <div class="navigation">
                <nav>
                  <ul class="nav topnav bold">
                    <li class="dropdown active">
                      <a href="index.html">Home <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu bold">
                        <li><a href="index-alt2.html">Homepage 2</a></li>
                        <li><a href="index-alt3.html">Homepage 3</a></li>
                      </ul>
                    </li>
                    <li class="dropdown">
                      <a href="#">Features <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu bold">
                        <li><a href="typography.html">Typography</a></li>
                        <li><a href="table.html">Table</a></li>
                        <li><a href="components.html">Components</a></li>
                        <li><a href="animations.html">56 Animations</a></li>
                        <li><a href="icons.html">Icons</a></li>
                        <li><a href="icon-variations.html">Icon variations</a></li>
                        <li class="dropdown"><a href="#">3 Sliders <i class="icon-angle-right"></i></a>
                          <ul class="dropdown-menu sub-menu-level1 bold">
                            <li><a href="index.html">Nivo slider</a></li>
                            <li><a href="index-alt2.html">Slit slider</a></li>
                            <li><a href="index-alt3.html">Parallax slider</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown">
                      <a href="#">Pages <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu bold">
                        <li><a href="about.html">About us</a></li>
                        <li><a href="pricingbox.html">Pricing boxes</a></li>
                        <li><a href="testimonials.html">Testimonials</a></li>
                        <li><a href="404.html">404</a></li>
                      </ul>
                    </li>
                    <li class="dropdown">
                      <a href="#">Portfolio <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu bold">
                        <li><a href="portfolio-2cols.html">Portfolio 2 columns</a></li>
                        <li><a href="portfolio-3cols.html">Portfolio 3 columns</a></li>
                        <li><a href="portfolio-4cols.html">Portfolio 4 columns</a></li>
                        <li><a href="portfolio-detail.html">Portfolio detail</a></li>
                      </ul>
                    </li>
                    <li class="dropdown">
                      <a href="#">Blog <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu bold">
                        <li><a href="blog-left-sidebar.html">Blog left sidebar</a></li>
                        <li><a href="blog-right-sidebar.html">Blog right sidebar</a></li>
                        <li><a href="post-left-sidebar.html">Post left sidebar</a></li>
                        <li><a href="post-right-sidebar.html">Post right sidebar</a></li>
                      </ul>
                    </li>
                    <li>
                      <a href="contact.html">Contact </a>
                    </li>
                  </ul>
                </nav><select class="selectmenu"><option value="" selected="">Go to..</option><option value="index.html"> Home </option><option value="index-alt2.html"> -  Homepage 2</option><option value="index-alt3.html"> -  Homepage 3</option><option value="#"> Features </option><option value="typography.html"> -  Typography</option><option value="table.html"> -  Table</option><option value="components.html"> -  Components</option><option value="animations.html"> -  56 Animations</option><option value="icons.html"> -  Icons</option><option value="icon-variations.html"> -  Icon variations</option><option value="#"> -  3 Sliders </option><option value="index.html"> -  -  Nivo slider</option><option value="index-alt2.html"> -  -  Slit slider</option><option value="index-alt3.html"> -  -  Parallax slider</option><option value="#"> Pages </option><option value="about.html"> -  About us</option><option value="pricingbox.html"> -  Pricing boxes</option><option value="testimonials.html"> -  Testimonials</option><option value="404.html"> -  404</option><option value="#"> Portfolio </option><option value="portfolio-2cols.html"> -  Portfolio 2 columns</option><option value="portfolio-3cols.html"> -  Portfolio 3 columns</option><option value="portfolio-4cols.html"> -  Portfolio 4 columns</option><option value="portfolio-detail.html"> -  Portfolio detail</option><option value="#"> Blog </option><option value="blog-left-sidebar.html"> -  Blog left sidebar</option><option value="blog-right-sidebar.html"> -  Blog right sidebar</option><option value="post-left-sidebar.html"> -  Post left sidebar</option><option value="post-right-sidebar.html"> -  Post right sidebar</option><option value="contact.html"> Contact </option></select>
              </div>
              <!-- end navigation -->
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- end header -->
    <section id="featured">
      <!-- start slider -->
      <div id="da-slider" class="da-slider da-slider-fb">
        <div class="da-slide" style="left: -100%;">
          <h2>Easy management</h2>
          <p>
            Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.
          </p>
          <a href="#" class="da-link">Read more</a>
          <div class="da-img">
            <img src="img/slides/parallax/1.png" alt="image01">
          </div>
        </div>
        <div class="da-slide" style="left: -100%;">
          <h2>Revolution</h2>
          <p>
            A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.
          </p>
          <a href="#" class="da-link">Read more</a>
          <div class="da-img">
            <div class="video-container">
              <iframe src="http://player.vimeo.com/video/30585464?title=0&amp;byline=0">
					</iframe>
            </div>
          </div>
        </div>
        <div class="da-slide" style="left: 0%;">
          <h2>Warm welcome</h2>
          <p>
            When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.
          </p>
          <a href="#" class="da-link">Read more</a>
          <div class="da-img">
            <img src="img/slides/parallax/2.png" alt="image01">
          </div>
        </div>
        <div class="da-slide">
          <h2>Quality Control</h2>
          <p>
            Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.
          </p>
          <a href="#" class="da-link">Read more</a>
          <div class="da-img">
            <img src="img/slides/parallax/4.png" alt="image01">
          </div>
        </div>
        <nav class="da-arrows">
          <span class="da-arrows-prev"></span>
          <span class="da-arrows-next"></span>
        </nav>
      <nav class="da-dots"><span class=""></span><span class=""></span><span class="da-dots-current"></span><span></span></nav></div>
      <!-- end slider -->
    </section>
    <section class="callaction">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="big-cta">
              <div class="cta-text">
                <h3>We've created more than <span class="highlight"><strong>5000 websites</strong></span> this year!</h3>
              </div>
              <div class="cta floatright">
                <a class="btn btn-large btn-theme btn-rounded" href="#">Request a quote</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="row">
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-briefcase icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Corporate business</h6>
                    <p>
                      Lorem ipsum dolor sit amet, has ei ipsum scaevola deseruisse am sea facilisis.
                    </p>
                    <a href="#">Learn more</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-desktop icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Responsive theme</h6>
                    <p>
                      Lorem ipsum dolor sit amet, has ei ipsum scaevola deseruisse am sea facilisis.
                    </p>
                    <a href="#">Learn more</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-beaker icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Coded carefully</h6>
                    <p>
                      Lorem ipsum dolor sit amet, has ei ipsum scaevola deseruisse am sea facilisis.
                    </p>
                    <a href="#">Learn more</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i class="icon-coffee icon-circled icon-64 active"></i>
                  </div>
                  <div class="text">
                    <h6>Sit and enjoy</h6>
                    <p>
                      Lorem ipsum dolor sit amet, has ei ipsum scaevola deseruisse am sea facilisis.
                    </p>
                    <a href="#">Learn more</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- divider -->
        <div class="row">
          <div class="span12">
            <div class="solidline">
            </div>
          </div>
        </div>
        <!-- end divider -->
        <!-- Portfolio Projects -->
        <div class="row">
          <div class="span12">
            <h4 class="heading">Some of recent <strong>works</strong></h4>
            <div class="row">
              <section id="projects">
                <ul id="thumbs" class="portfolio">
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The City" href="img/works/full/image-01-full.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
                    <!-- Thumb Image and Description -->
                    <img src="img/works/thumbs/image-01.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-1" data-type="icon">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Office" href="img/works/full/image-02-full.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
                    <!-- Thumb Image and Description -->
                    <img src="img/works/thumbs/image-02.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Mountains" href="img/works/full/image-03-full.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
                    <!-- Thumb Image and Description -->
                    <img src="img/works/thumbs/image-03.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Mountains" href="img/works/full/image-04-full.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
                    <!-- Thumb Image and Description -->
                    <img src="img/works/thumbs/image-04.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-4" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Sea" href="img/works/full/image-05-full.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
                    <!-- Thumb Image and Description -->
                    <img src="img/works/thumbs/image-05.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-5" data-type="icon">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Clouds" href="img/works/full/image-06-full.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
                    <!-- Thumb Image and Description -->
                    <img src="img/works/thumbs/image-06.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Mountains" href="img/works/full/image-07-full.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
                    <!-- Thumb Image and Description -->
                    <img src="img/works/thumbs/image-07.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Dark" href="img/works/full/image-08-full.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
                    <!-- Thumb Image and Description -->
                    <img src="img/works/thumbs/image-08.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                </ul>
              </section>
            </div>
          </div>
        </div>
        <!-- End Portfolio Projects -->
        <!-- divider -->
        <div class="row">
          <div class="span12">
            <div class="solidline">
            </div>
          </div>
        </div>
        <!-- end divider -->
        <div class="row">
          <div class="span12">
            <h4>Very satisfied <strong>clients</strong></h4>
            <div class=" jcarousel-skin-tango"><div class="jcarousel-container jcarousel-container-horizontal" style="position: relative; display: block;"><div class="jcarousel-clip jcarousel-clip-horizontal" style="position: relative;"><ul id="mycarousel" class="recent-jcarousel clients jcarousel-list jcarousel-list-horizontal" style="overflow: hidden; position: relative; top: 0px; margin: 0px; padding: 0px; left: 0px; width: 2296px;">
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-1 jcarousel-item-1-horizontal" jcarouselindex="1" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client1.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-2 jcarousel-item-2-horizontal" jcarouselindex="2" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client2.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-3 jcarousel-item-3-horizontal" jcarouselindex="3" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client3.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-4 jcarousel-item-4-horizontal" jcarouselindex="4" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client4.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-5 jcarousel-item-5-horizontal" jcarouselindex="5" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client5.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-6 jcarousel-item-6-horizontal" jcarouselindex="6" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client6.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-7 jcarousel-item-7-horizontal" jcarouselindex="7" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client1.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-8 jcarousel-item-8-horizontal" jcarouselindex="8" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client2.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-9 jcarousel-item-9-horizontal" jcarouselindex="9" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client3.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-10 jcarousel-item-10-horizontal" jcarouselindex="10" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client4.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-11 jcarousel-item-11-horizontal" jcarouselindex="11" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client5.png" class="client-logo" alt="">
					</a>
              </li>
              <li class="jcarousel-item jcarousel-item-horizontal jcarousel-item-12 jcarousel-item-12-horizontal" jcarouselindex="12" style="float: left; list-style: none;">
                <a href="#">
					<img src="img/dummies/clients/client6.png" class="client-logo" alt="">
					</a>
              </li>
            </ul></div><div class="jcarousel-prev jcarousel-prev-horizontal jcarousel-prev-disabled jcarousel-prev-disabled-horizontal" disabled="disabled" style="display: block;"></div><div class="jcarousel-next jcarousel-next-horizontal" style="display: block;"></div></div></div>
          </div>
        </div>
      </div>
    </section>
    <section id="bottom">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="aligncenter">
              <div id="twitter-wrapper">
                <div id="twitter">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <footer>
      <div class="container">
        <div class="row">
          <div class="span3">
            <div class="widget">
              <h5 class="widgetheading">Browse pages</h5>
              <ul class="link-list">
                <li><a href="#">About our company</a></li>
                <li><a href="#">Our services</a></li>
                <li><a href="#">Meet our team</a></li>
                <li><a href="#">Explore our portfolio</a></li>
                <li><a href="#">Get in touch with us</a></li>
              </ul>
            </div>
          </div>
          <div class="span3">
            <div class="widget">
              <h5 class="widgetheading">Important stuff</h5>
              <ul class="link-list">
                <li><a href="#">Press release</a></li>
                <li><a href="#">Terms and conditions</a></li>
                <li><a href="#">Privacy policy</a></li>
                <li><a href="#">Career center</a></li>
                <li><a href="#">Flattern forum</a></li>
              </ul>
            </div>
          </div>
          <div class="span3">
            <div class="widget">
              <h5 class="widgetheading">Flickr photostream</h5>
              <div class="flickr_badge">
                <script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script><!-- DEVELOPER WARNING: The Flickr badge code is likely to be deprecated, and we recommend changing to a new method to embed photo as soon as possible.  See https://www.flickr.com/api for information on how to access Flickr data. Thanks. --><div class="flickr_badge_image" id="flickr_badge_image1"><a href="http://www.flickr.com/photos/twitteroffice/3207990492/"><img src="http://farm4.staticflickr.com/3259/3207990492_d4b2ea008d_s.jpg" alt="Flickr의 사진" title="Culture: Twitter HQ (Archive)" height="75" width="75"></a></div><div class="flickr_badge_image" id="flickr_badge_image2"><a href="http://www.flickr.com/photos/twitteroffice/3248202191/"><img src="http://farm4.staticflickr.com/3504/3248202191_5c1c725d98_s.jpg" alt="Flickr의 사진" title="Culture: Twitter HQ (Archive)" height="75" width="75"></a></div><div class="flickr_badge_image" id="flickr_badge_image3"><a href="http://www.flickr.com/photos/twitteroffice/3344991684/"><img src="http://farm4.staticflickr.com/3538/3344991684_51be30ba73_s.jpg" alt="Flickr의 사진" title="Culture: Twitter HQ (Archive)" height="75" width="75"></a></div><div class="flickr_badge_image" id="flickr_badge_image4"><a href="http://www.flickr.com/photos/twitteroffice/3345009354/"><img src="http://farm4.staticflickr.com/3548/3345009354_d321462451_s.jpg" alt="Flickr의 사진" title="Visitor: Gavin Newsom (Archive)" height="75" width="75"></a></div><div class="flickr_badge_image" id="flickr_badge_image5"><a href="http://www.flickr.com/photos/twitteroffice/3345004656/"><img src="http://farm4.staticflickr.com/3610/3345004656_49730e65ff_s.jpg" alt="Flickr의 사진" title="Culture: Twitter HQ (Archive)" height="75" width="75"></a></div><div class="flickr_badge_image" id="flickr_badge_image6"><a href="http://www.flickr.com/photos/twitteroffice/3344177971/"><img src="http://farm4.staticflickr.com/3662/3344177971_125ff1dba7_s.jpg" alt="Flickr의 사진" title="Visitor: Gavin Newsom (Archive)" height="75" width="75"></a></div><div class="flickr_badge_image" id="flickr_badge_image7"><a href="http://www.flickr.com/photos/twitteroffice/3249051882/"><img src="http://farm4.staticflickr.com/3085/3249051882_6501df1978_s.jpg" alt="Flickr의 사진" title="Culture: Twitter HQ (Archive)" height="75" width="75"></a></div><div class="flickr_badge_image" id="flickr_badge_image8"><a href="http://www.flickr.com/photos/twitteroffice/3202595664/"><img src="http://farm4.staticflickr.com/3400/3202595664_c80afd2803_s.jpg" alt="Flickr의 사진" title="Culture: Twitter HQ (Archive)" height="75" width="75"></a></div><span style="position:absolute;left:-999em;top:-999em;visibility:hidden" class="flickr_badge_beacon"><img src="http://geo.yahoo.com/p?s=792600102&amp;t=e8f87081ec8dc11b6d7d6d2e5dd07442&amp;fl_ev=0&amp;lang=ko&amp;intl=kr" width="0" height="0" alt=""></span>
              </div>
              <div class="clear">
              </div>
            </div>
          </div>
          <div class="span3">
            <div class="widget">
              <h5 class="widgetheading">Get in touch with us</h5>
              <address>
								<strong>Flattern studio, Pte Ltd</strong><br>
								 Springville center X264, Park Ave S.01<br>
								 Semarang 16425 Indonesia
					 		</address>
              <p>
                <i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
                <i class="icon-envelope-alt"></i> email@domainname.com
              </p>
            </div>
          </div>
        </div>
      </div>
      <div id="sub-footer">
        <div class="container">
          <div class="row">
            <div class="span6">
              <div class="copyright">
                <p>
                  <span>© Flattern - All right reserved.</span>
                </p>
                <div class="credits">
                  <!--
                    All the links in the footer should remain intact.
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Flattern
                  -->
                  Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
              </div>
            </div>
            <div class="span6">
              <ul class="social-network">
                <li><a href="#" data-placement="bottom" title="" data-original-title="Facebook"><i class="icon-facebook icon-square"></i></a></li>
                <li><a href="#" data-placement="bottom" title="" data-original-title="Twitter"><i class="icon-twitter icon-square"></i></a></li>
                <li><a href="#" data-placement="bottom" title="" data-original-title="Linkedin"><i class="icon-linkedin icon-square"></i></a></li>
                <li><a href="#" data-placement="bottom" title="" data-original-title="Pinterest"><i class="icon-pinterest icon-square"></i></a></li>
                <li><a href="#" data-placement="bottom" title="" data-original-title="Google plus"><i class="icon-google-plus icon-square"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>
  <a href="#" class="scrollup" style="display: none;"><i class="icon-chevron-up icon-square icon-32 active"></i></a>
  <!-- javascript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/jcarousel/jquery.jcarousel.min.js"></script>
  <script src="js/jquery.fancybox.pack.js"></script>
  <script src="js/jquery.fancybox-media.js"></script>
  <script src="js/google-code-prettify/prettify.js"></script>
  <script src="js/portfolio/jquery.quicksand.js"></script>
  <script src="js/portfolio/setting.js"></script>
  <script src="js/jquery.flexslider.js"></script>
  <script src="js/jquery.nivo.slider.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/jquery.ba-cond.min.js"></script>
  <script src="js/jquery.slitslider.js"></script>
  <script src="js/modernizr.custom.28468.js"></script>
  <script src="js/jquery.cslider.js"></script>
  <script src="js/animate.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="js/custom.js"></script>




</body>