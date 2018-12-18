<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html> 
  <head>
  <%@ include file="/include/header.jsp" %>
  </head>
  <body>
    <div id="all">
    <%@ include file="/include/topbar.jsp" %>
    <%@ include file="/include/loginmadal.jsp" %>
    <%@ include file="/include/navbar.jsp" %> 
             
      
    
      
      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">자유게시판</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">의뢰게시판</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <section class="bar">
        <div class="container">
          <div class="row">
            <div class="col-lg-3">
              <!-- MENUS AND WIDGETS -->
              <div class="panel panel-default sidebar-menu with-icons">
                <div class="panel-heading">
                  <h3 class="h4 panel-title">게시판</h3>
                </div>
                <div class="panel-body">
                  <ul class="nav nav-pills flex-column text-sm">
                     <li class="nav-item"><a href="template-pagination.html" class="nav-link">의뢰게시판</a></li>
                    <li class="nav-item"><a href="template-tabs.html" class="nav-link">자유게시판</a></li>
                    </ul>
                </div>
              </div>
            </div>
      <!--테이블-->
    	<div class="col-lg-9">
              <div id="pagination" class="wp-example">
                <h3 class="section-title">자유게시판</h3>
                <div class="row">
                  <div class="col-md-12">
              <div class="box mt-0 mb-lg-0">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>닉네임</th>
                        <th>날짜</th>
                        <th>제목</th>
                     </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th>세존대완</th>
                        <td>22/06/2013</td>
                        <td>열어분 한글 쏴랑해주세요 땡큐 땡큐! 4딸라!4$!</td>
                       </tr>
                      <tr>
                        <th>유저아뒤</th>
                        <td>22/06/2013</td>
                        <td>까만 탄밥위에 몰캉몰캉한 삼겹살 한덩이</td>
                       </tr>
                      <tr>
                        <th>흥민전음</th> 
                        <td>22/06/2013</td>
                        <td>나랏말싸뮈 듕귁에달아 사맛디 아니할세 </td>
                        </tr>
                      <tr>
                        <th>아베 신세계</th>
                        <td>22/06/2013</td>
                        <td>고쿠민사마타치노 오카게데 이마노 와타시가 이마스</td>
                       </tr>
                      <tr>
                        <th>로날도 도람푸</th>
                        <td>22/06/2013</td>
                        <td>그뤠잇 어뭬리카 어겐~</td>
                       </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <nav aria-label="Page navigation example">
                      <ul class="pagination pagination-sm">
                        <li class="page-item"><a href="#" class="page-link">«</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">»</a></li>
                      </ul>
                    </nav>
                   
 <form id="myform"> 
	<select class="searchfree" name="searchColumn" id="searchColumn">
		<option value="ename">닉네임</option>
		<option value="deptno">제목</option>
	</select> 
	<input type="text" placeholder="Search.." name="searchStr" id="searchStr" class="searchfree">
	 
	<!-- 버튼류 --> 
	<button type="button" class="btn btn-sm btn-primary">검색</button>
	<style id="sun" >.btn-lg {float: right;}</style>
                    <button type="button" id="sun" class="btn btn-lg btn-primary" >글쓰기</button><br><br>
                    
	<!-- <input type="button" value="일반검색버튼" onClick="httpAjax()"> -->
</form>
					
                     </div>
          </div>
        </div>
      </section>
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
  </body>
</html>