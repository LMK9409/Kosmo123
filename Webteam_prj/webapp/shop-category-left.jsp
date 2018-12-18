<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<!DOCTYPE html>
<html>

  <%@ include file="/include/header.jsp" %>

  <body>
 
      <%@ include file="/include/top.jsp" %>
      
      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">고객센터</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">고객센터</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <div class="row bar">
            <div class="col-md-3">
              <!-- MENUS AND FILTERS-->
              <div class="panel panel-default sidebar-menu">
                <div class="panel-heading">
                  <h3 class="h4 panel-title">고객센터</h3>
                </div>
                <div class="panel-body">
                  <ul class="nav nav-pills flex-column text-sm category-menu">
                    <li class="nav-item"><a href="shop-category.html" class="nav-link d-flex align-items-center justify-content-between"><span>자주 들어오는 질문 </span></a>
                    </li>
                    <li class="nav-item"><a href="shop-category.html" class="nav-link active d-flex align-items-center justify-content-between"><span>FAQ </span></a>
                    </li>
                    <li class="nav-item"><a href="shop-category.html" class="nav-link d-flex align-items-center justify-content-between"><span>신고 </span></a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
           
           <div id="blog-listing-medium" class="col-md-9">
              <section class="post">
                <div class="row">
                  <div class="col-md-12">
                    <h2 class="h3 mt-0"><a href="post.htmls">제목</a></h2>
                    <div class="d-flex flex-wrap justify-content-between text-xs">
                      <p class="author-category">ID <a href="#">John Snow</a> 위치 <a href="blog.html">Webdesign</a></p>
                      <p class="date-comments"><a href="blog-post.html"><i class="fa fa-calendar-o"></i> June 20, 2013</a></p>
                    </div>
                    <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                    
                  </div>
                </div>
              </section>
              <section class="post">
                <div class="row">
                  
                  <div class="col-md-12">
                    <h2 class="h3 mt-0"><a href="post.htmls">제목</a></h2>
                    <div class="d-flex flex-wrap justify-content-between text-xs">
                      <p class="author-category">ID <a href="#">John Snow</a> 위치 <a href="blog.html">Webdesign</a></p>
                      <p class="date-comments"><a href="blog-post.html"><i class="fa fa-calendar-o"></i> June 20, 2013</a></p>
                    </div>
                    <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                    
                  </div>
                </div>
              </section>
              <section class="post">
                <div class="row">
                  <div class="col-md-12">
                    <h2 class="h3 mt-0"><a href="post.htmls">제목</a></h2>
                    <div class="d-flex flex-wrap justify-content-between text-xs">
                      <p class="author-category">ID <a href="#">John Snow</a> 위치 <a href="blog.html">Webdesign</a></p>
                      <p class="date-comments"><a href="blog-post.html"><i class="fa fa-calendar-o"></i> June 20, 2013</a></p>
                    </div>
                    <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                    
                  </div>
                </div>
              </section>
              <ul class="pager d-flex align-items-center justify-content-between list-unstyled">
                <!-- <li class="previous"><a href="#" class="btn btn-template-outlined"></a></li> -->
                <div class="pages">
                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                  <ul class="pagination">
                    <li class="page-item"><a href="#" class="page-link"> <i class="fa fa-angle-double-left"></i></a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link"><i class="fa fa-angle-double-right"></i></a></li>
                  </ul>
                </nav>
              </div>
                <li class="next disabled"><a href="#" class="btn btn-template-outlined">글쓰기</a></li>
              </ul>
            </div>
           
          </div>
        </div>
      </div>
     
      
     <%@ include file="/include/footer.jsp" %>
    
    </div>
    
    <%@ include file="/include/script.jsp" %>
  
  </body>
</html>