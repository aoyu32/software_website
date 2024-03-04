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
    <title>小破站soft搜索</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/cssfiles/Search.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fontsfiles/iconfont.css">
</head>
<body>

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
        <span>正在搜索中...</span>
    </div>
    <div class="navlist">
        <div class="ul-list">
            <ul>
                <li><a href=""><span class="iconfont">&#xe60b;</span>电脑必备<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe8d5;</span>常用社交<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe61d;</span>影音播放<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe622;</span>系统美化<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe607;</span>系统工具<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe605;</span>编程必备<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe654;</span>效率办公<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe69d;</span>好用插件<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe655;</span>常用网盘<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe60c;</span>学习必备<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe64e;</span>前往海外<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe855;</span>下载工具<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe602;</span>安卓应用<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe62b;</span>优质网站<i class="iconfont">&#xe88e;</i></a></li>
                <li><a href=""><span class="iconfont">&#xe608;</span>学习网站<i class="iconfont">&#xe88e;</i></a></li>


            </ul>
        </div>
    </div>
    <div class="feedback">
        <ul>
            <li><a href=""><span class="iconfont">&#xe908;</span><span>留言反馈</span></a></li>
            <li><a href=""><span class="iconfont">&#xe60f;</span><span>网站投稿</span></a></li>
        </ul>
    </div>
</div>
<div class="maincontents">
    <div class="searchbackground">
        <div class="searchbox">
            <input type="text" class="inputsearch" id="searchshowinput" placeholder="search hear...." value="">
            <button onclick="searchSendShow()"><i class="iconfont">&#xe693;</i></button>
            <div class="searchtipbox" id="searchtiplist" style="display: none;">
                <ul id="searchtipul">

                </ul>
            </div>
        </div>
    </div>
    <div class="searchh3lable">
        <span class="iconfont">&#xe65c;</span>
        <h3 id="top">搜索结果 : </h3>
    </div>
    <div class="searchcontentsbox">

        <div class="searchdiv">
            <div class="searchshowbox" id="searchshowresultbox">
            </div>
        </div>
    </div>

</div>


<script src="${pageContext.request.contextPath}/jsfiles/Search.js" charset="UTF-8"></script>
</body>
</html>
