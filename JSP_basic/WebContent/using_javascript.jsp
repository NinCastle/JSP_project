<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 



본문의 내용은 다음의 링크를 정리한것   
http://tcpschool.com/javascript/js_intro_apply    


-->


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<scprit>
		function printDate(){
			document.getElementById("date").innerHTML = Date();
		}
	</scprit>
</head>



<body>
<!-- 내부 자바스크립트 코드 -->
	
	<!--아래와 같은 <script>는 <head>, <body> 양쪽에 위치할 수 있다.  -->
	<script>
			document.getElementById("text").innerHTML = "여러분을 환영합니다";
	</script>
	
	<h1>head 태그 내의 자바스크립트</h1>
	<p>자바스크립트를 이요하면 핸재 날짜와 시간 정보에도 손쉽게 접근할 수 있어요!</p>

</body>
</html>