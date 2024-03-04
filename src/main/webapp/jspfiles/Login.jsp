<%--
  Created by IntelliJ IDEA.
  User: AOYU
  Date: 2022/11/8
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fontsfiles/iconfont.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/cssfiles/Login.css">
</head>
<body>
<h4 id="h4" class="h4">${registerResult } ${loginResult} ${resetResult}</h4>
<!-- 底层背景 -->
<div class="background">
    <!-- 登录和注册盒子下面的盒子 -->
    <div class="formbox">
        <!-- 注册盒子 -->
        <div class="register hidden">
            <p id="p" style="display:none;">用户名已存在!</p>
            <h1>register</h1>
            <!-- 用户注册信息表单 -->
            <form action="/AoYuResourceLibrary/register" method="post" id="registerform">
                <!-- 输入框 -->
                <input type="text" id="inputname" name="registerName" placeholder="用户名" />
                <span id="tip_username" style="display: none; font-size: 13px; color: #E97777; margin-right: 55px;">
						请输入1到10位字母数字下划线!
					</span>


                <input type="text" id="email" name="registerEmail" placeholder="邮箱" />
                <span id="tip_email" style="display: none; font-size: 13px; color: #E97777; margin-right: 141px;">
						邮箱格式不正确!
					</span>

                <input type="password" id="rpassword" name="registerPassword" placeholder="密码" />
                <span id="tip_password" style="display: none;font-size: 13px; color: #E97777; margin-right: 26px;">
						密码请输入6到15位字母数字下划线!
					</span>

                <input type="password" id="checkpassword" placeholder="确认密码" />
                <span id="tip_checkpassword"
                      style="display: none;font-size: 13px; color: #E97777; margin-right: 110px;">
						两次输入密码不一致!
					</span>
                <input type="hidden" name="status" value="0">

                <button type="submit" id="registerbutton">注册</button>
            </form>
        </div>
        <!-- 忘记密码盒子 -->
        <div class="fotgetbox hidden" id="forgetbig">
            <h1>reset密码</h1>
            <form action="/AoYuResourceLibrary/resetpwd" id="forgetsmall" method="post">
                <input type="text" id="resetname" placeholder="用户名" />
                <span id="tip_checkuser" style="display: none; font-size: 11px; color: #E97777; margin-right: 100px;">
						用户不存在,请检查输入！
                </span>
                <input type="text" id="resetemail" placeholder="验证邮箱" name="userEmail"/>
                <span id="tip_checkemail1" style="display: none; font-size: 11px; color: #E97777; margin-right: 113px;">
						用户名和邮箱不匹配！
                </span>
                <span id="tip_checkemail2" style="display: none; font-size: 11px; color: #E97777; margin-right: 137px;">
						请先输入用户名！
                </span>
                <span id="tip_checkemail3" style="display: none; font-size: 11px; color: #E97777; margin-right: 148px;">
						邮箱不能为空！
                </span>
                <input type="password" id="resetpassword"  placeholder="新密码" />
                <span id="tip_checkpassword1" style="display: none; font-size: 11px; color: #E97777; margin-right: 34px;">
						密码请输入6到15位字母数字下划线！
                </span>
                <input type="password" id="resetpassword2" placeholder="再次输入新密码" name="newPassword"/>
                <input type="hidden" name="status" value="setPassword">
                <span id="tip_checkpassword2" style="display: none; font-size: 11px; color: #E97777; margin-right: 114px;">
						两次输入密码不一致！
                </span>
                <button type="submit" id="resetbutton">重置密码</button>
            </form>
        </div>
        <!-- 登录盒子 -->
        <div class="login">
            <h1>login</h1>

            <p id="tip_login" style="display: none;font-size: 14px;color: #E97777;margin-bottom: 5px;"><i
                    class="iconfont">&#xe642;</i>用户名不能为空</p>
            <!-- 用户登录表单 -->
            <form action="/AoYuResourceLibrary/login" method="post" id="loginform">
                <!-- 输入框 -->
                <input type="text" id="username" name="loginName" placeholder="用户名" value="${cookie.username.value}"/>
                <input type="password" id="password" name="loginPassword" placeholder="密码" value="${cookie.userpassword.value}"/>
                <input type="hidden" value="${cookie.rememberValue.value}" name="remember" id="remember" >
                <div class="forgetpassword">
                    <button type="button" id="memory"></button>记住密码
                    <button type="button" id="forgetbutton">忘记密码</button>
                </div>
                <button type="submit" id="loginbutton">登录</button>
            </form>
        </div>

    </div>

    <!-- 登录和注册盒子下面的盒子里左边的盒子 -->
    <div class="introduce_box left">
        <h2>欢迎来到<span>AoYu的小破站</span></h2>
        <h5>只分享最优质的资源</h5>
        <img src="${pageContext.request.contextPath}/imagefiles/logo.png" alt="">
        <p>已有账号?</p>
        <button id="gologin">去登录</button>
    </div>

    <!-- 登录和注册盒子下面的盒子里左边的盒子 -->
    <div class="introduce_box right">
        <h2>欢迎来到<span>AoYu的小破站</span></h2>
        <h5>只分享最优质的资源</h5>
        <img src="${pageContext.request.contextPath}/imagefiles/logo.png" alt="">
        <p>没有账号?</p>
        <button id="goregister">去注册</button>
    </div>


</div>
<script src="${pageContext.request.contextPath}/jsfiles/Login.js"></script>
</body>
</html>
