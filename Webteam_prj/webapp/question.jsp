<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <%@ include file="/include/header.jsp" %>
<script   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){

				    	$.ajax({ 
						    	url:"/question",   
						    	type:"post",
						    	resultType:"json",
						    	success:function(gsonObj){
						    	console.log(gsonObj);		//객체
						    	var htmlStr = "";
						    	$.map(returnStr, function(vv, idx){
						    	htmlStr += "<section class='\post'\>";
						    	htmlStr += "<div class='\row'\>";
						    	htmlStr += "<div class='\col-md-12'\>";
						    	htmlStr += "<h2 class='\h3 mt-0'\><a href='post.htmls'>문의합니다.</a></h2>";
						    	htmlStr += "<div class='\d-flex flex-wrap justify-content-between text-xs'\>";
						    	htmlStr += "<p class='\author-category'\> Nickname <a href='#'>"+ vv.mNickname +"</a></p>";
						    	htmlStr += "<p class='\date-comments'\><a href='blog-post.html'><i class='\fa fa-calendar-o'\></i>" + vv.qRegdate + "</a></p></div>";
						    	htmlStr += "<p class='\intro'\>" + vv.qText + "</p></div>";
						    	htmlStr += "</div>";
						    	htmlStr += "</section>";
						 	});
						    	$(".question").html(htmlStr);
						 	} //end of success
			    	}); 	
});    

</script>
</head>
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
              <div class="question">
			<ul class="question">
			</ul>
             </div>
             
             
               <ul class="pager d-flex align-items-center justify-content-between list-unstyled">
                <li class="previous"><a href="#" class="btn btn-template-outlined"></a></li>
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
              </ul>
                 <button type="button" class="btn btn-primary">글쓰기</button>
            </div>
           
          </div>
        </div>
      </div>
     
      
     <%@ include file="/include/footer.jsp" %>
    

    
    <%@ include file="/include/script.jsp" %>
  
</body>
</html>