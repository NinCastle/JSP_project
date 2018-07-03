<!-- 



본문의 내용은 다음의 링크를 정리한것   
http://webberstudy.com/html-css/html-1/head-element/


-->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!-- DOCTYPE은 HTML문서의 맨처음에 명시하는 부분으로 문서의 버전에 관한 정보를 나타낸다. -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<!-- head는 '문서의 메타데이터 집합'이다. 웹 페이지에 직접적으로 보이지 안흔 정보라고 이해하면 좋다. -->
<head>

<!-- title 문서의 제목이나 이름을 나타낸다. 안에는 텍스트만 넣을 수 이씅며, 문서내에 한 번만 사용가능 -->
<title>Insert title here</title>


<!-- 
meta 매타태그는 스스로 닫는 태그이기 때문에 아래와 같이 작성되고 속성값으로 정보를 나타낸다.
<meta 속성="속성값" />
아래의 메타(charset)는 현재 페이지의 인코딩에 관한 정보를 담고 있다. 
현재 페이지의 인코딩이 utf-8방식으로 작성되었다는 뜻으로 브라우저가 이 메타를 읽고 글자를 올바르게 랜더링 한다.
보통 국내에서는  'utf-8'과 'euc-kr'을 많이 사용하고 있으며, 새로운 서비스를 구축한다면 다른 언어에서도 볼 수 있는 'utf-8'을 권장한다.
-->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- 
아래의 Description 메타는 현재 페이지에 대한 설명을 담고 있으며,
이 정보는 주로 검색엔진이 확인한다.
구글의 경우 페이지 제목 아래로 페이지를 소개하는 내용을 주로 이 메타 정보를 이용한다.
글자수는 160자 이내로 작성하는 것을 권장.
 -->
<meta name="Description" content="소개 내용"/>


<!-- 아래의 keywords 메타는 페이지에 대한 주요 키워드들을 담고 있으며, 
이 정보 역시 검색엔진이 확인하는 정보이다. 
키워드들을 나열해서 적어놓으면 검색엔진이 저장하였다가 해당 관련검색어가 나왔을 때 보다 잘 찾아준다. 
content속성게 작성하며, 콤마(,)를 구분 자로 사용한다.
(예: 홈페이지, 웹 제작, 웹 기초....)

검색에 많이 노출되기 위해서 관련 없는 키워드를 굉장히 많이 넣기도 하는데,
이럴경우 오히려 검색엔진에서 스팸과 같이 인식하여 더 하위에 노출 될 가능성이 있다.
따라서 키워드의 개수는 30개 이상 200개 이하로 정하는 것이 좋다.
-->
<meta name="Keywords" content="키워드들의 나열"/>


<!-- 
robots 메타는 검색엔진이 수집 할 지 안 할지를 정하는 정보이다. 아래와 같이 content값을 noindex, nofollow로 줄 경우,
검색엔진은 우리의 페이지를 색인하지 않는다. 따라서 검색엔진에 노출 되지 않는다.
반대로 검색엔진에 노출 되고 싶다면 content 값을 ;index, follow' 로 넣어주면 되며, 위의 메타가 없을 경우 기본적으로 수집, 검색이 된다.
 -->
<meta name="robots" content="noindex, nofollow"/>


<!-- 
link 요소는 주로 CSS파일을 연결할 때 사용하는 요소이다.
href는 css의 경로를 적어준다.
type과 rel를 적어주는 이유는, 이 link요소의 쓰임새가 css파일과 연결이 외에도 사용되기 때문이다. rel은 relationship(관계)의 줄임말이다.
 -->
<link href="style.css" type="text/css" rel="stylesheet" />



<!-- 
style 요소는 cnn를 html에서 사용하는 방법이다.
아래와 같이 style을 사용하면 css 내용을 굳이 외부 css를 사용할 필요 없이 html에서 사용가능하다.
하지만 많이 사용면 메모리를 많이 사용하기 때문에 간단하게 사용하거나 테스트로만 사용한다.
 -->
<style type="text/css">
	body{
		color:#333;
	}
</style>



<!-- 
script 요소는 위와 같이 작성을 하며, src속성에 js 파일 주소를 적으면 외부 css 연결하듯 외부 js파일을 연결시킨다.
또한 src 속성 없이  scripty요소 안에는 stype요소처럼 js를 html파일 안에 직접 적어 넣을 수 있다.
참고로 script요소는 head 뿐만 아니라 body안에서 도 사용이 가능하다.-->
<script type="text/javascript" src="abc.js"></script> <!-- 또는 -->
<script type="text/javascript">
	//script Text
</script>
</head>


<!-- 
body요소는 크게 두가지로 나눠지는데
'Block(블록)'과 'inline(인라인)'요소이다.

Block Level Elements
블럭 요소는 일단 기본적으로 줄바꿈이 일어나는 형태로 영역의 너비가 사위 영역의 전체 너비만큼 되는 형태이다.
이 블록 요소에 들어가는 요소들로는 h1~6요소, p요소, div등이 있다.

아래의 주소를 참고
http://webberstudy.com/html-css/html-1/block-and-inline/
 -->
<body>
<h1>블록요소</h1>
<p>p 요소는 블록 형태이다.</p>
<div>div 역시 블록 형태이다.</div>



<!-- 
Inline Elements
인라인 요소는 블로요소와 반대되는 형태로 줄바꿈이 일어나지 앟는 요소들이다.
 -->
<strong>이 요소는 strong 요소 이다.</strong>
<a href="">링크가 있는 a 요소 역시 인라인 형태이다.</a>
<span>이것은 span요소이다.</span>



<!-- 
블록요소와 인라인요소의 규칙
이 블록 형태와 인라인 형태의 요소들에는 규칙이 있다.
이 기본적인 규칙을 지키면 웹 표준을 준수하는 것이 매우 쉬워진다.
* 대부분의 요소는 같은 형태의 다른 요소를 안에 포함할 수 있다.(블록 요소안에 블록요소, 인라인 요소 안에 인라인 요소)
* 대부분의 블록 요소는 다른 이란인 요소도 안에 포함 할 수 있다.
* 하지만, 인라인 요소는 블록 요소를 포함 할 수 없다.
 -->
</body>
</html>