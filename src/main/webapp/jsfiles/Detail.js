
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

//接收返回的softName值对象
const detailName = GetUrlParam();

console.log(detailName);

//获取softName的值
const softDetailName = detailName.softName;

console.log(softDetailName);

//对中文的softName值进行编码
url=decodeURI(softDetailName);

urlname=decodeURI(url)

console.log(urlname);

var commentsNum1;
var commentsNum2;

var weburl = "http://localhost:8080";


var xhttp;
if (window.XMLHttpRequest) {
    xhttp = new XMLHttpRequest();
} else {
    // code for IE6, IE5
    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
}

var wurl = weburl + "/detail?softname=" + urlname + "&status=" + "softInformation";

console.log(wurl);

xhttp.open("POST", wurl,true);

xhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

xhttp.send();

xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {

        var softDetailInfo = JSON.parse(this.responseText);

        console.log(softDetailInfo);

        commentsNum1 = softDetailInfo.softComments1;
        commentsNum2 = softDetailInfo.softComments2;

        if (commentsNum1 !== 0 && commentsNum2 !== 0){

            var number = commentsNum1/(commentsNum1+commentsNum2)*10;

            document.getElementById("number").innerHTML = number.toFixed(1);

        }else {

            document.getElementById("number").innerHTML = '0.0';

        }

        var goodnumber = commentsNum1 * 6;

        var badnumber = commentsNum2 * 6;

        if (goodnumber >= 600){
            document.getElementById("goodnum").style.width = 600;
        }else {
            document.getElementById("goodnum").style.width = goodnumber;
        }

        if (badnumber === 600){
            document.getElementById("badnum").style.width = 600;
        }else {
            document.getElementById("badnum").style.width = badnumber;
        }


        var softInfoHtml ="<h2 id=\"h2\">"+urlname+"</h2>"+
            "<p>"+softDetailInfo.softCrack+"</p>\n" +
            "<p>系统 : <span>"+softDetailInfo.softSystem+"</span></p>\n" +
            "<p>版本 : <span>"+softDetailInfo.softVersion+"</span></p>\n" +
            "<p>大小 : <span>"+softDetailInfo.softSize+"</span></p>"

        var softInfoHtml2 = "<div id='text'>"+softDetailInfo.softOverview+"</div>"

        //var softInfoHtml3 = "<img src=\"/AoYuResourceLibrary/imagefiles/softdetail/"+softDetailInfo.softImg+"\" alt=\"\">\n"

        document.getElementById("softinfocontents").innerHTML = softInfoHtml;
        document.getElementById("txt1").innerHTML = softInfoHtml2;
        //document.getElementById("softdetailimg").innerHTML = softInfoHtml3;

    }
};

function commentsbutton(commentsStatus) {

    console.log(commentsNum1);
    console.log(commentsNum2);

    var xhttp1;
    if (window.XMLHttpRequest) {
        xhttp1 = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xhttp1 = new ActiveXObject("Microsoft.XMLHTTP");
    }

    var url;

    if (commentsStatus === "good"){
         url = weburl + "/detail?commentvalue=" + commentsStatus + "&status=" + "commentsValue" + "&commentsNum=" + commentsNum1 + "&softName=" + urlname;

    }else {
         url = weburl + "/detail?commentvalue=" + commentsStatus + "&status=" + "commentsValue" + "&commentsNum=" + commentsNum2+ "&softName=" + urlname;

    }

    url=encodeURI(url);

    url=encodeURI(url)

    xhttp1.open("POST", url,true);

    xhttp1.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

    xhttp1.send();

    xhttp1.onreadystatechange = function() {

        if (this.readyState == 4 && this.status == 200) {

            var softCommentsNum = JSON.parse(this.responseText);

            console.log(softCommentsNum);

            number = softCommentsNum[0]/(softCommentsNum[0] + softCommentsNum[1])*10;

            var goodnumber = softCommentsNum[0] * 6;

            var badnumber = softCommentsNum[1] * 6;

            console.log(goodnumber);

            document.getElementById("number").innerHTML = number.toFixed(1);


            if (goodnumber >= 600){
                document.getElementById("goodnum").style.width = 600;
            }else {
                document.getElementById("goodnum").style.width = goodnumber;
            }

            if (badnumber === 600){
                document.getElementById("badnum").style.width = 600;
            }else {
                document.getElementById("badnum").style.width = badnumber;
            }


        }
    };


}

//请求下载数据
function goDownload() {

    console.log(urlname);

    //发送请求
    var url = weburl + "/download?downloadSoftName=" + urlname;

    console.log(url)

    url=encodeURI(url);

    url=encodeURI(url)

    window.location.href = url;


}