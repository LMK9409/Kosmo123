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
      
      <div id="heading-breadcrumbs" class="brder-top-0 border-bottom-0">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">자유게시판</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.html">게시판</a></li>
                <li class="breadcrumb-item active">자유게시판</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        
        <div id="contact" class="container">
          <div class="row">
            <div class="col-lg-12">
              <section class="bar">
              
                <div class="heading">
                  <h2>자유게쉬판</h2>
                </div>
                <div class="col-md-12">
                    <div class="d-flex flex-wrap justify-content-between text-xs">
                      <p class="author-category">작성자</p>
                      <p class="date-comments">날짜</p>
                    </div>
                  </div> 
                <p class="lead">텍스트영역임</p>
                <p class="text-sm">작성일 뿌릴곳</p>
                <div class="heading">
                  <h3>댓글</h3>
                </div>
                <form>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="message">작성란</label>
                        <textarea id="message" class="form-control"></textarea>
                      </div>
                    </div>
                    <div class="col-md-12 text-center">
                      <button type="submit" class="btn btn-template-outlined"><i class="fa fa-envelope-o"></i> 댓글 달기</button>
                    </div>
                    <hr>
                    <blockquote class="blockquote">
                    <p>댓글 보여지는 영역</p>
                  </blockquote>
                  </div>
                </form>
              </section>
            </div>
            
          </div>
        </div>
      </div>
 
      <!-- FOOTER -->
      <%@ include file="/include/footer.jsp" %> 
    </div>
    <!-- Javascript files-->
    <%@ include file="/include/script.jsp" %>
  </body>
</html>