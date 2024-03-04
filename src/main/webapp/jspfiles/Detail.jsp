<%--
  Created by IntelliJ IDEA.
  User: AOYU
  Date: 2022/11/24
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小破站soft详情</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/cssfiles/Detail.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/fontsfiles/iconfont.css">
</head>
<body>
<div class="nav">
    <div class="navbox">
        <div class="detailnav">
            <div class="logo">
                <span class="iconfont">&#xe69c;</span>
                AoYu的资源库
            </div>
            <div class="logo2">
                <span>只分享最优质的资源</span>
            </div>
        </div>
    </div>
</div>
<div class="mainbox">
    <div class="softinfobox">
        <div class="softinfodiv">
            <div class="infodiv">
                <div class="softinfoimg">
                    <img src="${pageContext.request.contextPath}/imagefiles/softicon/${softIcon}" alt="">
                </div>
                <div class="softinfocontents" id="softinfocontents">
                    <h2 id="h2">${softName}</h2>
                    
                </div>
            </div>
            <div class="downloadbutton">
                <button onclick="goDownload()">立即下载</button>
            </div>
            <div class="logo3">
                <img src="${pageContext.request.contextPath}/imagefiles/logo.png">
            </div>
        </div>
    </div>

    <div class="softdetailimg" id="softdetailimg">

    </div>

    <div class="softintroduction">
        <h3>软件概述 : </h3>
        <div class="txt1" id="txt1">

        </div>
    </div>
    <h3>软件评价 : </h3>
    <div class="softcomments">
        <div class="commentsbar">
            <div class="commentsnumber" id="number">
                10.0
            </div>
            <div class="commentsgoodorbad">
                <div class="commentsgood">
                    <div class="goodshow" id="goodnum" style="width: 0;"></div>
                </div>
                <div class="commentsbad">
                    <div class="badshow" id="badnum" style="width: 0;"></div>
                </div>
            </div>
            <div class="commentsimg">
                <img src="${pageContext.request.contextPath}/imagefiles/commentsimg.png">
            </div>
        </div>
        <div class="commentsbutton">
            <span>评价一下 : </span>
            <button class="buttongood" onclick="commentsbutton('good')"><i class="iconfont">&#xe651;</i></button>
            <button class="buttonbad" onclick="commentsbutton('bad')"><i class="iconfont">&#xe659;</i></button>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/jsfiles/Detail.js"></script>
</body>
</html>
