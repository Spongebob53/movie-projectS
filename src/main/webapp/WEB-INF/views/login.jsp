<%--
  Created by IntelliJ IDEA.
  User: spongebob53
  Date: 2022/01/31
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 아이디 저장 쿠키 유무 확인
    Cookie[] cookies = request.getCookies();
    String save_id = "";
    String checked = "";
    if(cookies != null){
        for(Cookie c : cookies){
            if(c.getName().equals("save_id")){
                save_id = c.getValue();
                checked = "checked";
            }
        }
    }
%>
<html>
<head>
    <title>로그인</title>
    <link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/text.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/logo.css" rel="stylesheet" type="text/css">
    <link href="/resources/css/login.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div class="login">
	
		<div class="login-logo">
			<a href="/"><img src="/resources/img/logo/textLogo-color.png" class="logo-large"></a>
		</div>

		<div class="login-form">
			<form action="checkLogin" method="post">
			    <input type="text" name="customer_id" class="input-box input_id" placeholder="아이디" value="<%=save_id%>">
			    <input type="password" name="customer_pw" class="input-box input_pass" placeholder="비밀번호">
			    <button type="submit" class="input-box btn_login main-txt">로그인</button>
			    <section class="input_login-service">
				    <div class="input_save-id list-txt">
					    <input type="checkbox" name="save_id" id="save_id" <%=checked%>>
					    <label for="save_id">아이디 저장</label>
					</div>
					<div class="input_find-id list-txt">
						<a href="#">아이디 / 비밀번호 찾기</a>
					</div>
				</section>
			</form>
		</div>
		
		<hr>
		
		<div class="login-join">
			<form action="join" method="post">
				<button type="submit" class="input-box btn_join main-txt">회원가입</button>
			</form>
		</div>

	</div>
	

</body>
</html>
