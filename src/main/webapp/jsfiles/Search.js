//获取url中的参数
function GetUrlParam() {
    let url = document.location.toString();
    let arrObj = url.split("?");
    let params = Object.create(null)
    if (arrObj.length > 1) {
        arrObj = arrObj[1].split("&");
        arrObj.forEach(item => {
            item = item.split("=");
            params[item[0]] = item[1]
        })
    }
    return params;
}

var weburl = "http://localhost:8080";

//接收返回的softName值对象
const searchShowName = GetUrlParam();

//获取softName的值
const searchName = searchShowName.searchShowName;

//对中文的softName值进行编码
url=decodeURI(searchName);

url=decodeURI(url)

//把值带入数据框
setInput(url);

//调用请求搜索数据函数
searchrequest(url,"result");

//点击搜索按钮显示搜索结果
function searchSendShow() {

    var inputSearchName = document.getElementById("searchshowinput").value.trim();

    if (inputSearchName !== ""){

        document.getElementById("searchtiplist").style.display = 'none';

        searchrequest(inputSearchName,"result");

    }

}

//获取搜索框对象
var searchinput = document.getElementById("searchshowinput");

//获取焦点显示搜索提示
searchinput.onfocus = function () {

    document.getElementById("searchtiplist").style.display = '';

    searchinput.oninput = function(){

        var inputValue = document.getElementById("searchshowinput").value;

        searchrequest(inputValue,"tip");

        document.getElementById("searchtiplist").style.display = '';

    }
}

//点击回车显示搜索结果
searchinput.addEventListener("keyup", function(event) {
    event.preventDefault()
    if (event.keyCode === 13) {
        searchSendShow();
    }
})

//失去焦点让搜索提示消失
searchinput.onblur = function () {

    setTimeout(function() {
        document.getElementById("searchtiplist").style.display = 'none';
    },200);

}

//请求搜索数据
function searchrequest(inputValue,status){

    var xhttp1;
    if (window.XMLHttpRequest) {
        xhttp1 = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xhttp1 = new ActiveXObject("Microsoft.XMLHTTP");
    }

    var url = weburl + "/search?inputValue="+ inputValue;

    url=encodeURI(url);

    url=encodeURI(url)

    xhttp1.open("POST", url,true);

    xhttp1.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

    xhttp1.send();

    xhttp1.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            var softSearchArray = JSON.parse(this.responseText);

            //展示搜索结果信息
            if (status === "tip"){

                //展示提示信息
                var searh = "";

                for (let i = 0; i < softSearchArray.length; i++) {

                    var softSearch = softSearchArray[i];

                    var softSearchName = softSearch.softName;

                    var redFont = changeKeyRed(softSearchName,inputValue);

                    var searchList = "<li onclick='setInput(\"" + softSearchName + "\")'>" + redFont + "</li>";

                    searh += searchList;

                }

                document.getElementById("searchtipul").innerHTML = searh;

                //获取搜索提示信息列表
                var list = document.getElementById("searchtipul").getElementsByTagName("li");

                //调用上下选择提示信息函数,list:提示信息列表数组,softSearchArray:提示信息列表里面的内容
                upOrDownSelect(list,softSearchArray);

            }

            if (status === "result") {

                if (softSearchArray.length !== 0) {
                    var searchstring = "";

                    //遍历展示soft信息
                    for (let i = 0; i < softSearchArray.length; i++) {

                        var softresultlist = softSearchArray[i];

                        console.log(softSearchArray);

                        var imgurl1 = "/AoYuResourceLibrary/imagefiles/softicon/" + softresultlist.softIcon;


                        var soft = "<div class=\"searchshowdiv\">\n" +
                            "<div class=\"searchimg\">\n" +
                            "<img src=\"" + imgurl1 + "\" alt=\"\">\n" +
                            "</div>\n" +
                            "<div class=\"searchtextdiv\">\n" +
                            "<h5>" + softresultlist.softName + "</h5>\n" +
                            "<p>" + softresultlist.softCategory + "</p>\n" +
                            "<p>下载次数 : <span>" + softresultlist.softDownload + "</span>次</p>\n" +
                            "<p>" + softresultlist.softIntroduce + "</p>\n" +
                            "</div>\n" +
                            "<div class=\"lookbutton\">\n" +
                            "<button " + "onclick=\"window.open('" + weburl + "/detail?softName=" + softresultlist.softName + "&softIcon=" + softresultlist.softIcon + "')\">查看详情</button>" +
                            "</div>\n" +
                            "</div>";

                        searchstring += soft;

                    }

                    document.getElementById("searchshowresultbox").innerHTML = searchstring;
                }else {

                    document.getElementById("searchshowresultbox").innerHTML = "<div class=\"noResult\">\n" +
                        "                        <div class=\"text\">\n" +
                        "                         <i class=\"iconfont\">&#xe69e;</i>暂时没有你要的软件......\n" +
                        "                        </div>\n" +
                        "                    </div>";

                }

            }

        }

    };


}

//点击搜索提示显示搜索结果
function setInput(softSearchName){

    document.getElementById("searchshowinput").value = softSearchName;
    document.getElementById("searchtiplist").style.display='none';
    searchrequest(softSearchName);
    searchSendShow();

}

//搜索关键字变红
function changeKeyRed(str,keyWord) {

    var oRegExp = new RegExp('('+keyWord+')',"ig");
    str = str.replace(oRegExp,`<span style='color:#E97777;'>$1</span>`);
    return str;
}


// 搜索提示上下选择
function upOrDownSelect(list,softSearchArray) {

    console.log(list);
    console.log(softSearchArray);

    var index = -1;
    function addIndex() {
        index = index>=softSearchArray.length-1 ? 0 : ++index;
        return index;
    }
    function reduceIndex() {
        index = index <= 0 ? 9 : --index;
        return index;
    }
    document.onkeydown = function(e) {
        e = e || window.event;
        switch(e.keyCode){
            case 13:
                var t = softSearchArray[index].softName;
                console.log(t);
                document.getElementById("searchshowinput").value = t;
                break;
            case 38:
                reduceIndex();
                setLiColorByClass();
                break;
            case 40:
                addIndex();
                setLiColorByClass();
                break;
        }
        function setLiColorByClass(){
            for(var i = 0,len=list.length; i<len; i++) {
                list[i].className = i === index ? "current" : "";
            }
        }
    };

}