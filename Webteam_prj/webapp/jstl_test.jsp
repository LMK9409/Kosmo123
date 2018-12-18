<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList, com.kosmo.web.EmpVO"
    %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
    	prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function loopTest() {
		for(var i=0; i<5; i++) {
			console.log(i);
		}
	}
</script>
<script>

$(document).ready(function(){
	var arr = ['abc', 'ddd', 'doc']; //[1,2,3,4,5]; //new Array();
	
	//for(int idx=0; idx<arr.length; idx++){}
	//String vv = arr[idx]; 이 두줄을 대신하는 것이 $.each이다.
	// out.println(idx + ":" + vv);
	//lamda(람다)란? 이름이 없는 루프용 메서드, 한번쓰고 끝내는 의미로 일회용.
	//jquery나 javascript에서는 람다라고 쓰지 않고 '콜백메서드'라고 쓴다.
	
	$.each(arr, function(idx, vv){
		console.log(idx + ":" + vv);
	});
	$(arr).each(myfunc);
	//------------------------
	//key:value를 json표기법이라고 표현한다. ex)"uid":"kim"
	//아래는 맵에 담았으므로 타입은 맵이다 라고 얘기하면 된다.
	var map = {"uid":"kim", "upw":"111"};
	console.log(map.uid + "----");
	var marr = $.makeArray(map);
	console.log(marr);
	//------------------------
	var maps = [{"uid":"kim", "upw":"111"},
				{"uid":"lee", "upw":"222"},
				{"uid":"park", "upw":"333"}
				];
	console.log(maps[0].uid);
	console.log(maps[1].uid);
	
	$.each(maps, function(idx, vv){
		console.log(".each map:" + vv.uid);
		console.log(".each map:" + vv.upw);
	});
	
	//맵쓸때는 펑션안의 순서가 반대로 된다.
	$.map(maps, function(vv, idx){
		console.log(".map maps:" + vv.uid);
		console.log(".map maps:" + vv.upw);
	});
	
	//for(idx in maps){
	for(var idx=0; idx<maps.length; idx++){
		console.log(maps[idx].uid);
	}
	
});
function myfunc(idx, vv){
	console.log(idx + ":" + vv);S
}
</script>
</head>
<body onLoad="loopTest()">
<%-- <%
int tot = Integer.parseInt(request.getAttribute("KEY_TOTAL"));
ArrayList<EmpVO> list = (ArrayList<EmpVO>)request.getAttribute("KEY_LIST");
out.println(tot);
for(int i=0; i<list.size();i++){
	out.println(list.get(i).getEname());
}
%> --%>

el: ${KEY_TOTAL}건<br>
<c:forEach var="vovo" items="${KEY_LIST}">
	${vovo.ename}
	${vovo.empno}  <br>
</c:forEach>



<%
//String uid = request.getParameter("uid");
//out.println(uid);
%>
el로 받은 값 : ${param.uid} <br>	

el로 받은 LIST.get(0) 값 : ${KEY_FR.ename} , ${KEY_FR.empno}<br>



<% for(int i=0; i<10; i++){
	//out.prinln(i);
}
%>

<c:forEach var="i" begin="0" end="9" step="1">
	${i}
</c:forEach>

<%if(10>9){%> 
	크다
<%} %>
<c:if test="${10 > 9}">
크다.
</c:if>


</body>
</html>