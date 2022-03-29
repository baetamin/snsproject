<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인스타그램</title>


	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/static/css/style.css" type="text/css">

</head>
<body>

	<c:import url="/WEB-INF/jsp/include/header.jsp"/>
	<div id="wrap">
	
		<section class="content d-flex justify-content-center my-5">
			<div>
				<div class="login-box d-flex justify-content-center align-items-start bg-white  border rounded">
					<div class="w-100 p-5">
						<h2 class="text-center">Instagram</h2>
						<br>
						<div class="text-center">
							<b class="text-secondary">친구들의 사진과 동영상을 보려면<br> 가입하세요.</b>
						</div>
						
						<div class="d-flex  mt-3">
							<input type="text" id="loginIdInput" class="form-control" placeholder="아이디">
							<button type="button" class="btn btn-info btn-sm ml-2" id="isDuplicateBtn">중복확인</button>
						</div>
						<div id="duplicateText" class="d-none"><small class="text-danger">중복된 ID 입니다</small></div>
						<div id="possibleText" class="d-none"><small class="text-success">사용가능한 ID 입니다</small></div>
						<input type="password" id="passwordInput" class="form-control mt-3" placeholder="패스워드">
						<input type="password" id="passwordConfirmInput" class="form-control mt-3" placeholder="패스워드 확인">
						
						<input type="text" id="nameInput" class="form-control mt-3" placeholder="이름">
						<input type="text" id="emailInput" class="form-control mt-3" placeholder="이메일">
						
						<button type="button" id="signUpBtn" class="btn btn-info btn-block mt-3">회원가입</button>
				
					</div>
					
				</div>
				<div class="mt-4 p-3 d-flex justify-content-center align-items-start bg-white  border rounded">
					계정이 있으신가요? <a href="/user/signin_view">로그인</a>
				</div>
			</div>
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>
	</div>

	<script type="text/javascript">
		$(document).ready(function(){
			
			var isChecked = false;
			var isDuplicate = true;
			
			$("#loginIdInput").on("input", function(){
				 
				 isChecked = false;
				 isDuplicate = true;
				 
				$("#duplicateText").addClass("d-none");
				$("#possibleText").addClass("d-none");
			});
			
			$("#signUpBtn").on("click", function(e){
				
				e.preventDefault();
				
				var loginId = $("#loginIdInput").val();
				var password = $("#passwordInput").val();
				var passwordConfirm = $("#passwordConfirmInput").val();
				var name = $("#nameInput").val().trim();
				var email = $("#emailInput").val().trim();
				
				if(loginId == ""){
					alert("아이디를 입력하세요");
					return;
				}
				if(!isChecked) {
					alert("중복체크를 하지 않았습니다.")
					return;
				}
				if(isDupulicate) {
					alert("중복된 아이디 입니다.")
					return;
				}
				if(password == "") {
					alert("비밀번호를 입력하세요");
					return ;
				}
				
				if(password != passwordConfirm) {
					alert("비밀번호를 확인하세요");
					return ;
				}
				
				if(name == "") {
					alert("이름을 입력하세요");
					return ;
				}
				
				if(email == "") {
					alert("이메일을 입력하세요");
					return ;
				}
				
				
				
			});
			
			
			
		});
	
	
	</script>


</body>
</html>