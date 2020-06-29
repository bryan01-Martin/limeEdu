<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>LIME INTERVIEW TEST</title>

	<link rel="stylesheet" href="/css/sample.css"/>
	<jsp:include page="/WEB-INF/includeJSP/commonJsImport.jsp"></jsp:include>
	
	
	<script type="text/javascript">
		var snb;
		var snbList;
		var prefix = "/contentBody/";
		var surfix = ".jsp";
		$(document).ready(function(){
			initEvent();
			snb = jQuery("#snb");
			createSnbElement(afterCreateElement);
		});
		
		function initEvent() {
			$("#screenShot").click(function() {
				
				var targetElement = document.getElementsByClassName("content")[0];
				
				getScreenshotOfElement(targetElement, 0, 0, targetElement.offsetWidth, targetElement.offsetHeight, afterScreenShot )
			});
		}
		
		function createSnbElement(callback) {
			var appendLiElement = document.createElement("li");
			$(appendLiElement).data("fileUrl","interviewTest");
			$(appendLiElement).append($(document.createElement("a")).text("LIME 문제 출력"));
			snb.append(appendLiElement);
			if(callback) {callback();}
		}
		function afterCreateElement() {
			
			snb.children().on("click", function (e) {
				
			});
			
		}
		
		function afterScreenShot(data) {
			 $("#imgData").attr("src", "data:image/png;base64,"+data); 
		}
	</script>
</head>

<body>

	<header>
		<div style="background: #333; height: 50px;">
			<jsp:include page="/WEB-INF/views/template/layout/defaultHeader.jsp"></jsp:include>
		</div>
	</header>
	
	
	<div class="wrap">
		<aside>
			<ul id="snb">
				
			</ul>
		</aside>
		<div class="content">
			<div id="question_1">
				<strong name="question_1_title">
					<span>1. id="question_1_answer에 "hello world!"를 출력하세요.</span>
				</strong>
				<div class="answer_area">
					<span id="question_1_answer"></span>
				</div>
			</div>
			
			<div id="question_2">
				<strong name="question_2_title">
					<span>2. id="question_2_answer에 ajax를 이용해서 database의 정보를 출력하세요.</span>
				</strong>
				<div class="answer_area">
					
				</div>
			</div>
			<input type="button" id="screenShot" value="캡쳐"> </input>
			<img id="imgData"/>
		</div>
	</div>
	
	

</body>
</html>