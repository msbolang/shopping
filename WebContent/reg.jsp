<%@ page language="java" import="com.boli.shopping.user.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<title>用户注册</title>
<%
    request.setCharacterEncoding("UTF-8");
    String action = request.getParameter("action");
    if(action!=null && action.trim().equals("reg")) {
    	User u = new User();
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");
    	String phone = request.getParameter("phone");
    	String addr = request.getParameter("addr");
    	u.setUsername(username);
    	u.setPassword(password);
    	u.setPhone(phone);
    	u.setRdate(new Date());
    	u.save();
    }
	
%>
</head>
<body>
	<form id="mobileregister" method="post" style="background: #efefef;">
				<div class="leftList">
	                <ul class="formList">
	                    <li style="position: relative;">
	                        <label>手机号码：</label>
	                        <input type="text" class="inputStyle" id="strMobile" name="phone" maxlength="13">
	                        <div class="" id="div_strMobile" style="position: absolute; top: 0; left: 62%;"></div>
	                    </li>
	
	                    <li id="usernameregion" style="position: relative; z-index: 2;">
	                        <label> 用户名：</label><input type="text" id="strUsername" name="username" class="inputStyle">
	                        <!--用于自动检索用户名下拉-->
	                        <div class="dropdown" id="userDiv" style="display: none;"></div>
	                        <div class="" id="div_strUsername" style="position: absolute; top: 0; left: 62%;"></div>
	                    </li>
	                    
	                    <li style="position: relative;">
	                        <label> 请设置密码：</label><input type="password" class="inputStyle" id="strPassword" name="password">
	                        <div class="" id="div_strPassword" style="position: absolute; top: 0; left: 62%;"></div>
	                    </li>
	                    
	                    <li style="position: relative;">
	                        <label> 地址：</label><input type="text" class="inputStyle" id="strPasswordConfirm" name="addr">
	                        <div class="" id="div_strPasswordConfirm" style="position: absolute; top: 0; left: 62%;"></div>
	                    </li>
	
	                    <li id="li_submit">
	                        <label></label>
	                           <input type="hidden" name="action" value="reg">
	                        <input type="submit" value="立即开通" class="btnStyle" id="img_submit">
	                    </li>
	               
	                </ul>
	            </div>
	</form>
</body>
</html>