<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<!-- 



본문의 내용은 다음의 링크를 정리한것 
http://tcpschool.com/javascript/js_object_concept
http://tcpschool.com/javascript/js_bom_dialogBox 


-->



<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	<!--  
	
	자바 스크립트의 객체 개념
	
	자바스크립트의 기본 타입(data type)은 객체(object)이다.
	
	객체란 이름(name)과 값(value)으로 구성된 프로퍼티(property)의 정렬되지 않은 집합이다.
	
	프러퍼티의 값으로 함수가 올 수 도 있는데, 이러한 프로퍼티를 메소드(method)라고 한다.
	
	ex)
	'''
	var cat = "나비"; //일반적인 변수의 선언
	// 객체도 많은 값을 가질 수 있는 변수이다.
	var kitty = {
		name:"나비",
		family:"코리안 숏 헤어",
		age:1,
		weight:0.1
	};
	
	cat //나비
	cat.name //나비
	'''
	-->

	<h1> 객체의 개념 </h1>
	<script>
		var cat = "나비"; //일반적인 변수의 선언
		// 객체도 많은 값을 가질 수 있는 변수이다.
		var kitty = {
			name:"나비",
			family:"코리안 숏 헤어",
			age:1,
			weight:0.1
		};
		
		document.write(cat + "<br>");
		document.write(kitty.name);
	</script>
	
	
	<!-- ---------------------------- -->	
	
	<!-- 
	
	객체의 프로퍼티 참조
	
	자바스크립크트에서 객체의 프로퍼티(메소드)를 참조하는 방법은 다음과 같다.
	문법:
	'''
	객체이름.메소드 이름
	또는
	객체이름.["메소드 이름"]
	'''
	
	
	예제
	'''
	
	var person = {
		name:"nincastle",  // 이름 프로퍼티(메소드)를 정의함
		birthday:"123456", // 생년월일 프로퍼티를 정의함.
		pId:"987654",      // 개인 id 프로퍼티를 정의함
		fullId:function(){ // 생년월일과 개인 id를 합쳐서 주민등록번호를 반환함.
			return this.birthday + this.pId;
		}
	};
	person.name     //nincaslte
	person.["name"] //nincastle
	'''
		
	-->
	<script>
		var person = {
				name:"nincastle",  // 이름 프로퍼티(메소드)를 정의함
				birthday:"123456", // 생년월일 프로퍼티를 정의함.
				pId:"987654",      // 개인 id 프로퍼티를 정의함
				fullId:function(){ // 생년월일과 개인 id를 합쳐서 주민등록번호를 반환함.
					return this.birthday + this.pId;
				}
		};
	
		document.write(person.name + "<br>"); //nincastle
		document.write(person['name']);       //nincastle
	</script> 
	
	<!-- ---------------------------- -->	
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
				document.getElementById("text2").innerHTML = "What is your name? " + inputStr + " that is my name";
 			}
		}
	</script>
	
</body>
</html>