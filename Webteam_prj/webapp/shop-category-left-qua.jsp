<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<!DOCTYPE html>
<html>

  <%@ include file="/include/header.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<head>
  
<script>
$(document).ready(function(){	
	/* var sendData = {"lat":mylat , "lng":mylng, "topn":3}; */
				  $.ajax({ 
					 
							url:"/question",
							type:"get",
							contentType: "application/json; charset=UTF-8",
							/*data: "MYKEY="+JSON.stringify(sendData),  */
							success:function(res){
									console.log(res);
									var htmlStr="";
						 				htmlStr += "<section class='get'>";
						 			$.each(res, function(index, vv){
						 				htmlStr += "<div class='row'>";
						 				htmlStr += "<div class='col-md-12'>";
						 				htmlStr += "<h2 class='h4 mt-0'><a href='/question.jsp'>문의 합니다.</a></h2>";
						 				htmlStr += "<div class='d-flex flex-wrap justify-content-between text-xs'>";
						 				htmlStr += "<p class='author-category'>Nickname <a href='#'>" + vv.mNickname + "</a></p>";
						 				htmlStr += "<p class='date-comments'><a href='/question.jsp'> " + vv.qRegdate + " </a></p>";
						 				htmlStr += "</div>";
						 				htmlStr += "<p class='intro'>" + vv.qText + "</p>";
						 				htmlStr += "</div>";
						 				htmlStr += "</div>";
							  	});
						 				htmlStr += "</section>";
						 			$(".question").html(htmlStr);
							}
				}); //end of ajax 	  
});    
</script>
</head>

  <body>
 
      <%@ include file="/include/topbar.jsp" %>
      <%@ include file="/include/loginmadal.jsp" %>
      <%@ include file="/include/navbar.jsp" %>
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
           
           <!-- 문의 내용 뿌려질 곳 -->
           <div id="blog-listing-medium" class="col-md-9">
           <div class="question">
              
              </div>
             <ul class="pager d-flex align-items-center justify-content-between list-unstyled">
                <!-- <li class="previous"><a href="#" class="btn btn-template-outlined"></a></li> -->
                <div class="pages col-md-9">
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
      </div>
     
      
     <%@ include file="/include/footer.jsp" %>
    

    
    <%@ include file="/include/script.jsp" %>
  
  </body>
</html>