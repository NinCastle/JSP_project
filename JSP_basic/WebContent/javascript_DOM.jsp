<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 



본문의 내용은 다음의 링크를 정리한것   
http://tcpschool.com/javascript/js_dom_element


-->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<!-- 

DOM의 요소

HTML 요소를 다루기 위해서는 우선 해당 요소를 선택해야한다.
자바스크립트에서 특정 HTML 요소를 선택하는 방법은 다음과 같다.

1. HTML 태그 이름(tag name)을 이용한 선택
2. 아이디(id)를 이용한 선택
3. 클래스(class)를 이용한 선택
4. name 속성(attribute)을 이용한 선택
5. CSS 선택자(selector)를 이용한 선택
6. HTML 객체 집합(object collection)을 이용한 선택

 -->
 
<body>
	<h1>HTML 태그 이름을 이용한 선택</h1>
	<ul>
		<li>첫번째 아이템</li>
		<li>두번째 아이템</li>
		<li>세번째 아이템</li>
		<li>네번쨰 아이템</li>
	</ul>
	
	<script>
		var selectedItem = document.getElementsByTagName("li");		// 모든 <li> 요소를 선택함.
		for (var i = 0; i < selectedItem.length; i++) {
			selectedItem.item(i).style.color = "red";	// 선택된 모든 요소의 텍스트 색상을 변경함.
		}
	</script>
</body>
</html>