<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Universal - All In 1 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <!-- Bootstrap Select-->
    <link rel="stylesheet" href="vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        <script src="/modules/jquery.min.js"></script>
<script>
$(document).ready(function(){
	//jQuery 지원 : 첨부파일 미리보기 ---------------------
	$("#pname").on("change", handleImgFileSelect);
	
	function handleImgFileSelect(e) {
			$("#prev-img-div").empty();
			var files = e.target.files;  			//[object FileList]
			//FileList into an array 
			//var fileArr = Array.prototype.slice.call(files);			
			var fileArr = Array.from(files); //[object File],[object File],[object File]
				
			if(fileArr.length > 3) {  //files.length
					alert("이미지 첨부는 최대 3개만 가능합니다.");
					$("#pname").val("");
					return false;
			}
			
			var fileSize = 0;
			fileArr.forEach(function(f) {
					fileSize += f.size;
			});
			if(fileSize > 10*1024*1024) {
					alert("이미지 첨부는 최대 10MB만 가능합니다.");
					$("#pname").val("");
					return false;
			}
			
			fileArr.forEach(function(f) {
					if(!f.type.match("image.*")) {
							alert("이미지 첨부만 가능합니다.");
							$("#pname").val("");
							return false;
					} 
					
					var reader = new FileReader();
					var htmlStr = "";
					reader.onload = function(e) {
							htmlStr += "<img src='"+e.target.result+"' style='height:80px;width:80px;'> ";
							$("#prev-img-div").append(htmlStr);
							//alert(htmlStr)
					}
					//reader.onload = function(e) { 
					//	$("#prev-img").attr("src", e.target.result); 
					//} 
					reader.readAsDataURL(f); 
			});
			
			
	}
	$("#regBtn").click(function(){
        var id = $("#user_id").val();
        var pw = $("#user_pw").val();
        var pw2 =  $("#user_pw2").val();
        var agree = $("[id='agree']:checked").val();
        if(id == ""){
           alert("아이디를 입력하세요");
           $("#user_id").focus();
           return false;
        }
        if(pw == ""){
           alert("비밀번호를 입력해주세요.");
           $("#user_pw").focus();
           return false;
        }
        if(pw != pw2){
           alert("비밀번호가 다릅니다.");
           $("#user_pw").focus();
           return false;
        } 
        if(agree != 'y'){
           alert("약관 동의를 해주세요");
           $("#agree").focus();
           return false;        
        }
        $("#regform").submit();
    });
});    
</script>
  </head>
  <body>
    <div id="all">
      <!-- Top bar-->
      <div class="top-bar">
        <div class="container">
          <div class="row d-flex align-items-center">
            <div class="col-md-6 d-md-block d-none">
              <p>Contact us on +420 777 555 333 or hello@universal.com.</p>
            </div>
            <div class="col-md-6">
              <div class="d-flex justify-content-md-end justify-content-between">
                <ul class="list-inline contact-info d-block d-md-none">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
                <div class="login"><a href="#" data-toggle="modal" data-target="#login-modal" class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">Sign In</span></a><a href="customer-register.html" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">Sign Up</span></a></div>
                <ul class="social-custom list-inline">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Top bar end-->
      <!-- Login Modal-->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">Customer Login</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">Ã</span></button>
            </div>
            <div class="modal-body">
              <form action="customer-orders.html" method="get">
                <div class="form-group">
                  <input id="email_modal" type="text" placeholder="email" class="form-control">
                </div>
                <div class="form-group">
                  <input id="password_modal" type="password" placeholder="password" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> Log in</button>
                </p>
              </form>
              <p class="text-center text-muted">Not registered yet?</p>
              <p class="text-center text-muted"><a href="customer-register.html"><strong>Register now</strong></a>! It is easy and done in 1Â minute and gives you access to special discounts and much more!</p>
            </div>
          </div>
        </div>
      </div>
      <!-- Login modal end-->
      <!-- Navbar Start-->
      <header class="nav-holder make-sticky">
        <div id="navbar" role="navigation" class="navbar navbar-expand-lg">
          <div class="container"><a href="index.html" class="navbar-brand home"><img src="img/logo.png" alt="Universal logo" class="d-none d-md-inline-block"><img src="img/logo-small.png" alt="Universal logo" class="d-inline-block d-md-none"><span class="sr-only">Universal - go to homepage</span></a>
            <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
            <div id="navigation" class="navbar-collapse collapse">
              <ul class="nav navbar-nav ml-auto">
                <li class="nav-item dropdown active"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">Home <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="index.html" class="nav-link">Option 1: Default Page</a></li>
                    <li class="dropdown-item"><a href="index2.html" class="nav-link">Option 2: Application</a></li>
                    <li class="dropdown-item"><a href="index3.html" class="nav-link">Option 3: Startup</a></li>
                    <li class="dropdown-item"><a href="index4.html" class="nav-link">Option 4: Agency</a></li>
                    <li class="dropdown-item"><a href="index5.html" class="nav-link">Option 5: Portfolio</a></li>
                  </ul>
                </li>
                <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Features<b class="caret"></b></a>
                  <ul class="dropdown-menu megamenu">
                    <li>
                      <div class="row">
                        <div class="col-lg-6"><img src="img/template-easy-customize.png" alt="" class="img-fluid d-none d-lg-block"></div>
                        <div class="col-lg-3 col-md-6">
                          <h5>Shortcodes</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="template-accordions.html" class="nav-link">Accordions</a></li>
                            <li class="nav-item"><a href="template-alerts.html" class="nav-link">Alerts</a></li>
                            <li class="nav-item"><a href="template-buttons.html" class="nav-link">Buttons</a></li>
                            <li class="nav-item"><a href="template-content-boxes.html" class="nav-link">Content boxes</a></li>
                            <li class="nav-item"><a href="template-blocks.html" class="nav-link">Horizontal blocks</a></li>
                            <li class="nav-item"><a href="template-pagination.html" class="nav-link">Pagination</a></li>
                            <li class="nav-item"><a href="template-tabs.html" class="nav-link">Tabs</a></li>
                            <li class="nav-item"><a href="template-typography.html" class="nav-link">Typography</a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3 col-md-6">
                          <h5>Header variations</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="template-header-default.html" class="nav-link">Default sticky header</a></li>
                            <li class="nav-item"><a href="template-header-nosticky.html" class="nav-link">No sticky header</a></li>
                            <li class="nav-item"><a href="template-header-light.html" class="nav-link">Light header</a></li>
                          </ul>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Portfolio <b class="caret"></b></a>
                  <ul class="dropdown-menu megamenu">
                    <li>
                      <div class="row">
                        <div class="col-lg-6"><img src="img/template-homepage.png" alt="" class="img-fluid d-none d-lg-block"></div>
                        <div class="col-lg-3 col-md-6">
                          <h5>Portfolio</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="portfolio-2.html" class="nav-link">2 columns</a></li>
                            <li class="nav-item"><a href="portfolio-no-space-2.html" class="nav-link">2 columns with negative space</a></li>
                            <li class="nav-item"><a href="portfolio-3.html" class="nav-link">3 columns</a></li>
                            <li class="nav-item"><a href="portfolio-no-space-3.html" class="nav-link">3 columns with negative space</a></li>
                            <li class="nav-item"><a href="portfolio-4.html" class="nav-link">4 columns</a></li>
                            <li class="nav-item"><a href="portfolio-no-space-4.html" class="nav-link">4 columns with negative space</a></li>
                            <li class="nav-item"><a href="portfolio-detail.html" class="nav-link">Portfolio - detail</a></li>
                            <li class="nav-item"><a href="portfolio-detail-2.html" class="nav-link">Portfolio - detail 2</a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3 col-md-6">
                          <h5>About</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="about.html" class="nav-link">About us</a></li>
                            <li class="nav-item"><a href="team.html" class="nav-link">Our team</a></li>
                            <li class="nav-item"><a href="team-member.html" class="nav-link">Team member</a></li>
                            <li class="nav-item"><a href="services.html" class="nav-link">Services</a></li>
                          </ul>
                          <h5>Marketing</h5>
                          <ul class="list-unstyled">
                            <li class="nav-item"><a href="packages.html" class="nav-link">Packages</a></li>
                          </ul>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                <!-- ========== FULL WIDTH MEGAMENU ==================-->
                <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="200" class="dropdown-toggle">All Pages <b class="caret"></b></a>
                  <ul class="dropdown-menu megamenu">
                    <li>
                      <div class="row">
                        <div class="col-md-6 col-lg-3">
                          <h5>Home</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="index.html" class="nav-link">Option 1: Default Page</a></li>
                            <li class="nav-item"><a href="index2.html" class="nav-link">Option 2: Application</a></li>
                            <li class="nav-item"><a href="index3.html" class="nav-link">Option 3: Startup</a></li>
                            <li class="nav-item"><a href="index4.html" class="nav-link">Option 4: Agency</a></li>
                            <li class="nav-item"><a href="index5.html" class="nav-link">Option 5: Portfolio</a></li>
                          </ul>
                          <h5>About</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="about.html" class="nav-link">About us</a></li>
                            <li class="nav-item"><a href="team.html" class="nav-link">Our team</a></li>
                            <li class="nav-item"><a href="team-member.html" class="nav-link">Team member</a></li>
                            <li class="nav-item"><a href="services.html" class="nav-link">Services</a></li>
                          </ul>
                          <h5>Marketing</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="packages.html" class="nav-link">Packages</a></li>
                          </ul>
                        </div>
                        <div class="col-md-6 col-lg-3">
                          <h5>Portfolio</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="portfolio-2.html" class="nav-link">2 columns</a></li>
                            <li class="nav-item"><a href="portfolio-no-space-2.html" class="nav-link">2 columns with negative space</a></li>
                            <li class="nav-item"><a href="portfolio-3.html" class="nav-link">3 columns</a></li>
                            <li class="nav-item"><a href="portfolio-no-space-3.html" class="nav-link">3 columns with negative space</a></li>
                            <li class="nav-item"><a href="portfolio-4.html" class="nav-link">4 columns</a></li>
                            <li class="nav-item"><a href="portfolio-no-space-4.html" class="nav-link">4 columns with negative space</a></li>
                            <li class="nav-item"><a href="portfolio-detail.html" class="nav-link">Portfolio - detail</a></li>
                            <li class="nav-item"><a href="portfolio-detail-2.html" class="nav-link">Portfolio - detail 2</a></li>
                          </ul>
                          <h5>User pages</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="customer-register.html" class="nav-link">Register / login</a></li>
                            <li class="nav-item"><a href="customer-orders.html" class="nav-link">Orders history</a></li>
                            <li class="nav-item"><a href="customer-order.html" class="nav-link">Order history detail</a></li>
                            <li class="nav-item"><a href="customer-wishlist.html" class="nav-link">Wishlist</a></li>
                            <li class="nav-item"><a href="customer-account.html" class="nav-link">Customer account / change password</a></li>
                          </ul>
                        </div>
                        <div class="col-md-6 col-lg-3">
                          <h5>Shop</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="shop-category.html" class="nav-link">Category - sidebar right</a></li>
                            <li class="nav-item"><a href="shop-category-left.html" class="nav-link">Category - sidebar left</a></li>
                            <li class="nav-item"><a href="shop-category-full.html" class="nav-link">Category - full width</a></li>
                            <li class="nav-item"><a href="shop-detail.html" class="nav-link">Product detail</a></li>
                          </ul>
                          <h5>Shop - order process</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="shop-basket.html" class="nav-link">Shopping cart</a></li>
                            <li class="nav-item"><a href="shop-checkout1.html" class="nav-link">Checkout - step 1</a></li>
                            <li class="nav-item"><a href="shop-checkout2.html" class="nav-link">Checkout - step 2</a></li>
                            <li class="nav-item"><a href="shop-checkout3.html" class="nav-link">Checkout - step 3</a></li>
                            <li class="nav-item"><a href="shop-checkout4.html" class="nav-link">Checkout - step 4</a></li>
                          </ul>
                        </div>
                        <div class="col-md-6 col-lg-3">
                          <h5>Contact</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                            <li class="nav-item"><a href="contact2.html" class="nav-link">Contact - version 2</a></li>
                            <li class="nav-item"><a href="contact3.html" class="nav-link">Contact - version 3</a></li>
                          </ul>
                          <h5>Pages</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="text.html" class="nav-link">Text page</a></li>
                            <li class="nav-item"><a href="text-left.html" class="nav-link">Text page - left sidebar</a></li>
                            <li class="nav-item"><a href="text-full.html" class="nav-link">Text page - full width</a></li>
                            <li class="nav-item"><a href="faq.html" class="nav-link">FAQ</a></li>
                            <li class="nav-item"><a href="404.html" class="nav-link">404 page</a></li>
                          </ul>
                          <h5>Blog</h5>
                          <ul class="list-unstyled mb-3">
                            <li class="nav-item"><a href="blog.html" class="nav-link">Blog listing big</a></li>
                            <li class="nav-item"><a href="blog-medium.html" class="nav-link">Blog listing medium</a></li>
                            <li class="nav-item"><a href="blog-small.html" class="nav-link">Blog listing small</a></li>
                            <li class="nav-item"><a href="blog-post.html" class="nav-link">Blog Post</a></li>
                          </ul>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                <!-- ========== FULL WIDTH MEGAMENU END ==================-->
                <!-- ========== Contact dropdown ==================-->
                <li class="nav-item dropdown"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">Contact <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-item"><a href="contact.html" class="nav-link">Contact option 1</a></li>
                    <li class="dropdown-item"><a href="contact2.html" class="nav-link">Contact option 2</a></li>
                    <li class="dropdown-item"><a href="contact3.html" class="nav-link">Contact option 3</a></li>
                  </ul>
                </li>
                <!-- ========== Contact dropdown end ==================-->
              </ul>
            </div>
            <div id="search" class="collapse clearfix">
              <form role="search" class="navbar-form">
                <div class="input-group">
                  <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                </div>
              </form>
            </div>
          </div>
        </div>
      </header>
      <!-- Navbar End-->
      
      <div id="heading-breadcrumbs" class="border-top-0 border-bottom-0">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">Web Design Now</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="free.jsp">의뢰게시판</a></li>
                <li class="breadcrumb-item active">글작성</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <div class="row bar">
            <!-- LEFT COLUMN _________________________________________________________-->
            <div id="blog-post" class="col-md-12">
                <div id="comment-form">
                <h4 class="text-uppercase">글 작성하기</h4>
               <form id="insertForm" class="insertForm" name="insertForm">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="name">제목<span class="required text-primary">*</span></label>
                        <input id="name" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="name">사진<span class="required text-primary">*</span></label>
                        <input id="img" type="file" class="form-control">
                      </div>
                    </div>
                  </div>
    			<div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="name">포인트<span class="required text-primary">*</span></label>
                        <input id="name" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                                         <div class="form-group">
                      <label>위치 입력 </label>
                      <a href="http://maps.google.com/" target="_blank">Google Map</a>
                      
                      
<div id="locationField">
  <input class="form-control" id="placename" placeholder="검색할 위치를 입력하세요" name="placename" type="text">
</div>
<input type="hidden" class="field" name="lat" id="lat" />
<input type="hidden" class="field" name="lng" id="lng" />


                    </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label for="comment">글내용<span class="required text-primary">*</span></label>
                        <textarea id="comment" rows="16" class="form-control"></textarea>
                      </div>
                    </div>
                    </div>
                    
                  <div id="simple-map" class="simple-map" style="height:450px;">
                  
                  </div>
                  
              
                    
                  <div class="row">
                    <div class="col-sm-12 text-right">
                      <button class="btn btn-template-outlined"><i class="fa fa-comment-o"></i>작성확인</button>
                    </div>
                  </div>
                  </form>
                  </div>
              
              </div>
            </div>
          
          </div>
        </div>
      </div>
      
      <!-- FOOTER -->
      <footer class="main-footer">
        <div class="container">
          <div class="row">
            <div class="col-lg-3">
              <h4 class="h6">About Us</h4>
              <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
              <hr>
              <h4 class="h6">Join Our Monthly Newsletter</h4>
              <form>
                <div class="input-group">
                  <input type="text" class="form-control">
                  <div class="input-group-append">
                    <button type="button" class="btn btn-secondary"><i class="fa fa-send"></i></button>
                  </div>
                </div>
              </form>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <h4 class="h6">Blog</h4>
              <ul class="list-unstyled footer-blog-list">
                <li class="d-flex align-items-center">
                  <div class="image"><img src="img/detailsquare.jpg" alt="..." class="img-fluid"></div>
                  <div class="text">
                    <h5 class="mb-0"> <a href="post.html">Blog post name</a></h5>
                  </div>
                </li>
                <li class="d-flex align-items-center">
                  <div class="image"><img src="img/detailsquare.jpg" alt="..." class="img-fluid"></div>
                  <div class="text">
                    <h5 class="mb-0"> <a href="post.html">Blog post name</a></h5>
                  </div>
                </li>
                <li class="d-flex align-items-center">
                  <div class="image"><img src="img/detailsquare.jpg" alt="..." class="img-fluid"></div>
                  <div class="text">
                    <h5 class="mb-0"> <a href="post.html">Very very long blog post name</a></h5>
                  </div>
                </li>
              </ul>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <h4 class="h6">Contact</h4>
              <p class="text-uppercase"><strong>Universal Ltd.</strong><br>13/25 New Avenue <br>Newtown upon River <br>45Y 73J <br>England <br><strong>Great Britain</strong></p><a href="contact.html" class="btn btn-template-main">Go to contact page</a>
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <ul class="list-inline photo-stream">
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare2.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare3.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare3.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare2.jpg" alt="..." class="img-fluid"></a></li>
                <li class="list-inline-item"><a href="#"><img src="img/detailsquare.jpg" alt="..." class="img-fluid"></a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="copyrights">
          <div class="container">
            <div class="row">
              <div class="col-lg-4 text-center-md">
                <p>&copy; 2018. Your company / name goes here</p>
              </div>
              <div class="col-lg-8 text-right text-center-md">
                <p>Template design by <a href="https://bootstrapious.com/free-templates">Bootstrapious Templates </a></p>
                <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
    <!-- Javascript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/waypoints/lib/jquery.waypoints.min.js"> </script>
    <script src="vendor/jquery.counterup/jquery.counterup.min.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="vendor/jquery.scrollto/jquery.scrollTo.min.js"></script>
    <script src="js/front.js"></script>
    
    <script src="/modules/summernote/summernote-lite.js"></script>
  <script src="http://maps.google.com/maps/api/js?key=AIzaSyDmubPngLb1Im7cyNyDdDMyGRJkDyXBxYA&libraries=places&callback=initAutocomplete" async defer></script>
  <script src="vendor/modules/gmaps.js"></script>
  <script>
  //https://fatc.club/2017/06/05/1949
  //https://developers.google.com/maps/documentation/javascript/examples/geocoding-simple?hl=ko
	//	  
  var placeSearch, autocomplete;
  var placename=document.getElementById('placename');
  function initAutocomplete() {
    // Create the autocomplete object, restricting the search to geographical
    // location types.
    autocomplete = 
    	new google.maps.places.Autocomplete(
					(document.getElementById('placename')),{types: ['establishment']}
					//setupClickListener('changetype-establishment', ['establishment']);
			
			);
    // When the user selects an address from the dropdown, populate the address
    // fields in the form.
    autocomplete.addListener('place_changed',   function () {
    	// Get the place details from the autocomplete object.
    	var place = autocomplete.getPlace();
      document.getElementById("lat").value=place.geometry.location.lat();
      document.getElementById("lng").value=place.geometry.location.lng();
      
      var simple_map = new GMaps({
          div: 'simple-map',
          lat: place.geometry.location.lat(),
          lng: place.geometry.location.lng(),
          
     });
      
     simple_map.addMarker({
         lat: place.geometry.location.lat(),
         lng: place.geometry.location.lng(),
        
         
         click: function(e){
           if(console.log)
             console.log(e);
           alert('You clicked in this marker');
         },
         mouseover: function(e){
           if(console.log)
             console.log(e);
         }
     });
      
  });
  }

  </script>
  </body>
</html>