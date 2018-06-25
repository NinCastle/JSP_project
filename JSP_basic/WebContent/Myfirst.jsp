<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>alert() 메소드</h1>
	<button onclick="alertDialogBox()">alert 대화상자</button>
	<script>
		alert('hello world!')
		
		function alertDialogBox(){
			alert("확인을 누를 때가지 다른 작업을 할 수 없어요!");
		}
	</script>
	
	<!--   -----------------------------     -->
	
	<h1>confirm() 메소드</h1>
	<button onclick="confirmDialogBox()">confirm 대화상자</button>
	<p id="text"></p>
	
	<script>
		function confirmDialogBox(){
			var str;
			if(confirm("확인이나 취소를 눌러주세요!")==true){
				str = "당신은 확인을 눌렀습니다.";
			} else {
				str = "당신은 취소를 눌렀습니다.";
			}
			
			document.getElementById("text").innerHTML = str;
		}
	</script>
	
	<!-- --------------------------------  -->
	<h1>prompt() 메소드</h1>
	<button onclick="promptDialogBox()">prompt 대화상자</button>
	
	<p id="text2"></p>
	
	<script>
		function promptDialogBox() {
			var inputStr = prompt("당신의 이름을 입력해주세요 : ", "NinCastle");
			
			if (inputStr != null) {
				document.getElementById("text2").innerHTML = "What is your name" + inputStr + " that is my name";
 			}
		}
	</script>
	
</body>
</html>