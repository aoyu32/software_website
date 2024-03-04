<%--
  Created by IntelliJ IDEA.
  User: AOYU
  Date: 2022/11/18
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AoYu的小破站</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/cssfiles/Home2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fontsfiles/iconfont.css">
</head>
<body>

<%--右小--%>
<div class="navbackground">

    <div class="logo">
        <span class="iconfont">&#xe69c;</span>
        AoYu的小破站
    </div>
    <div class="loginimage">
        <div class="headimage">
            <img src="${pageContext.request.contextPath}/imagefiles/userlogin.png" alt="">
        </div>
    </div>
    <div class="loginname">
        <span id="username">${userName}</span>
    </div>
    <div class="navlist">
        <div class="ul-list">
            <ul>
                <li><a href="#c1"><span class="iconfont">&#xe60b;</span>电脑必备<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c2"><span class="iconfont">&#xe8d5;</span>常用社交<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c3"><span class="iconfont">&#xe61d;</span>影音播放<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c4"><span class="iconfont">&#xe622;</span>系统美化<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c5"><span class="iconfont">&#xe607;</span>系统工具<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c6"><span class="iconfont">&#xe605;</span>编程必备<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c7"><span class="iconfont">&#xe654;</span>效率办公<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c8"><span class="iconfont">&#xe69d;</span>好用插件<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c9"><span class="iconfont">&#xe655;</span>常用网盘<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c10"><span class="iconfont">&#xe60c;</span>学习必备<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c11"><span class="iconfont">&#xe64e;</span>前往海外<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c12"><span class="iconfont">&#xe855;</span>下载工具<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c13"><span class="iconfont">&#xe602;</span>安卓应用<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c14"><span class="iconfont">&#xe62b;</span>优质网站<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href="#c15"><span class="iconfont">&#xe608;</span>学习网站<i class="iconfont">&#xe88e;</i></a></li>


            </ul>
        </div>
    </div>
    <div class="feedback">
        <ul>
            <li onclick="openbox('type1')"><span class="iconfont">&#xe908;</span><span>留言反馈</span></li>
            <li onclick="openbox('type2')"><span class="iconfont">&#xe60f;</span><span>网站投稿</span></li>
        </ul>
    </div>
</div>
<%--左大--%>
<div class="maincontents">

<%--    留言反馈--%>
    <div class="message" id="messagebox" style="display: none;">
        <button class="b1" onclick="hiddenbox('box1')"><i class="iconfont">&#xe609;</i></button>
        <div class="title">
            <h3>留言反馈</h3>
            <p id="p1" style="color: red;font-size: 12px;margin-top: 5px;display: none"><i class="iconfont" style="margin-right: 5px;font-size: 12px">&#xe618;</i>你还没有输入内容呢</p>
            <p id="p2" style="color: #3DB2FF;font-size: 12px;margin-top: 5px;display: none"><i class="iconfont" style="margin-right: 5px;font-size: 12px">&#xe61a;</i>提交成功，站长已收到</p>

        </div>
        <div class="messagetext">
            <textarea class="textinput" placeholder="请输入您的留言或反馈......" id="text"></textarea>
        </div>
        <div class="messagebutton">
            <button class="b2" onclick="submitData('data1')">提交反馈</button>
        </div>
    </div>
<%--     网站投稿--%>
    <div class="contribute" id="contributebox" style="display: none;">
        <button class="b1" onclick="hiddenbox('box2')"><i class="iconfont">&#xe609;</i></button>
        <div class="title">
            <h3>投&nbsp;&nbsp;&nbsp;&nbsp;稿</h3>
            <p id="p4" style="color: red;font-size: 12px;margin-top: 5px;display: none"><i class="iconfont" style="margin-right: 5px;font-size: 12px">&#xe618;</i>你信息还没输完整呢</p>
            <p id="p3" style="color: #3DB2FF;font-size: 12px;margin-top: 5px;display: none"><i class="iconfont" style="margin-right: 5px;font-size: 12px">&#xe61a;</i>提交成功，站长已收到</p>
        </div>
        <div class="contributetext">
            <p>名称 : </p>
            <input type="text" class="input1" placeholder="软件名称/网站名称" id="text2" name="softOrWebName">
            <p>类别 : </p>
            <div class="checkinputdiv">
                <input type="radio" class="checkinput" name="type" value="app" id="text3"><span>应用</span>
                <input type="radio" class="checkinput" name="type" value="web" id="text4"><span>网站</span>
                <input type="radio" class="checkinput" name="type" value="other" id="text5"><span>其他</span>
            </div>
            <p>概述 : </p>
            <textarea class="contributeinfo" placeholder="请输入应用或网站简介......" id="text6"></textarea>
            <button class="b3" onclick="submitData('data2')">提交信息</button>
        </div>
    </div>


<%--    搜索--%>
    <div class="searchbackground">
        <div class="searchbox">
            <input type="text" class="inputsearch" id="searchinput1" placeholder="search hear...." value="">
            <button onclick="searchSend()"><i class="iconfont">&#xe693;</i></button>
            <div class="searchtipbox" id="searchtiplist" style="display: none;">
                <ul id="searchtipul">

                </ul>
            </div>
        </div>
    </div>

<%--    soft信息展示--%>
    <div class="contentsbox">

        <h4 id="c1"><i class="iconfont">&#xe6bf;</i>电脑必备</h4>

        <div id="contents1">

        </div>

        <h4 id="c2"><i class="iconfont">&#xe6bf;</i>常用社交</h4>

        <div id="contents2">

        </div>

        <h4 id="c3"><i class="iconfont">&#xe6bf;</i>影音播放</h4>

        <div id="contents3">

        </div>

        <h4 id="c4"><i class="iconfont">&#xe6bf;</i>系统美化</h4>

        <div id="contents4">

        </div>

        <h4 id="c5"><i class="iconfont">&#xe6bf;</i>系统工具</h4>

        <div id="contents5">

        </div>

        <h4 id="c6"><i class="iconfont">&#xe6bf;</i>编程必备</h4>

        <div id="contents6">

        </div>

        <h4 id="c7"><i class="iconfont">&#xe6bf;</i>效率办公</h4>

        <div id="contents7">

        </div>

        <h4 id="c8"><i class="iconfont">&#xe6bf;</i>好用插件</h4>

        <div id="contents8">

        </div>

        <h4 id="c9"><i class="iconfont">&#xe6bf;</i>常用网盘</h4>

        <div id="contents9">

        </div>

        <h4 id="c10"><i class="iconfont">&#xe6bf;</i>学习必备</h4>

        <div id="contents10">

        </div>

        <h4 id="c11"><i class="iconfont">&#xe6bf;</i>前往海外</h4>

        <div id="contents11">

        </div>

        <h4 id="c12"><i class="iconfont">&#xe6bf;</i>下载工具</h4>

        <div id="contents12">

        </div>

        <h4 id="c13"><i class="iconfont">&#xe6bf;</i>安卓应用</h4>

        <div id="contents13">


        </div>

        <h4 id="c14"><i class="iconfont">&#xe6bf;</i>优质网站</h4>

        <div id="contents14">


        </div>

        <h4 id="c15"><i class="iconfont">&#xe6bf;</i>学习网站</h4>

        <div id="contents15">

        </div>

    </div>

    <div class="rottenside">

        <ul>
            <li><a href="#contents1"><i class="iconfont">&#xeb0a;</i></a></li>
            <li><a href="#contents15"><i class="iconfont">&#xeb0b;</i></a></li>
        </ul>

    </div>

</div>


<script src="${pageContext.request.contextPath}/jsfiles/Home.js" charset="UTF-8"></script>
</body>
</html>
