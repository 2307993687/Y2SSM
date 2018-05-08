<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${message }</h1>
<img src="${pageContext.request.contextPath }/resources/img/y.png" alt="无图平时显示" title="导入静态资源的方法"/>
<form class="loginForm" action="${pageContext.request.contextPath }/add"  name="actionForm" id="actionForm"  method="post" >
    <div class="info">${error }</div>
    <div class="inputbox">
        <label >用户名：</label>
        <input type="text" class="input-text" name="userCode" placeholder="请输入用户名" required/>
    </div>
    <div class="inputbox">
        <label >密码：</label>
        <input type="password" name="userPassword" placeholder="请输入密码" required/>
    </div>
    <div class="subBtn">

        <input type="submit" value="登录"/>
        <input type="reset" value="重置"/>
    </div>
</form>
<h3><a href="${pageContext.request.contextPath }/add">进入实验页面</a></h3>
</body>
</html>