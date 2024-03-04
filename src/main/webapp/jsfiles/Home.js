
//展示soft列表信息
var xhttp;
if (window.XMLHttpRequest) {
    xhttp = new XMLHttpRequest();
} else {
    // code for IE6, IE5
    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
}

var weburl = "http://localhost:8080";

xhttp.open("POST", weburl + "/softInfo", true);
xhttp.send();

xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {

        var contents1 = "";
        var contents2 = "";
        var contents3 = "";
        var contents4 = "";
        var contents5 = "";
        var contents6 = "";
        var contents7 = "";
        var contents8 = "";
        var contents9 = "";
        var contents10 = "";
        var contents11 = "";
        var contents12 = "";
        var contents13 = "";
        var contents14 = "";
        var contents15 = "";


        var softArray = JSON.parse(this.responseText);

        for (let i = 0; i < softArray.length; i++) {

            var soft = softArray[i];

            console.log(soft.softName);
            var imgurl = "/AoYuResourceLibrary/imagefiles/softicon/"+soft.softIcon;

            var s = "<div class=\"contentsdiv\">"+
                "<div class=\"softinfo\">"+
                "<div class=\"softimg\">"+
                "<img "+"src="+"\""+imgurl+"\""+" alt=\"\">"+
                "</div>"+
                "<h5>"+soft.softName+"</h5>"+
                "<p>"+soft.softCategory+"</p>"+
                "<p>"+soft.softIntroduce+"</p>"+
                "<p>下载次数 : <span>"+soft.softDownload+"</span>次</p>"+
                "<button " + "onclick=\"window.open('" + weburl + "/detail?softName=" + soft.softName + "&softIcon=" + soft.softIcon + "')\">查看详情</button>" +
                "</div>"+
                "</div>";

            var f = "<div class=\"contentsdiv\">"+
                "<div class=\"softinfo\">"+
                "<div class=\"softimg\">"+
                "<img "+"src="+"\""+imgurl+"\""+" alt=\"\">"+
                "</div>"+
                "<h5>"+soft.softName+"</h5>"+
                "<p>"+soft.softCategory+"</p>"+
                "<p>"+soft.softIntroduce+"</p>"+
                "<p>访问次数 : <span>"+soft.softDownload+"</span>次</p>"+
                "<button "+"onclick=\"window.open('"+"https://"+soft.softAddress+"')\">前往网站</button>"+
                "</div>"+
                "</div>";


            //获取contents值
            var contentsValue = soft.softContents;

            console.log(contentsValue);

            switch (contentsValue) {

                case "contents1":
                    contents1 += s;
                    break;
                case "contents2":
                    contents2 += s;
                    break;
                case "contents3":
                    contents3 += s;
                    break;
                case "contents4":
                    contents4 += s;
                    break;
                case "contents5":
                    contents5 += s;
                    break;
                case "contents6":
                    contents6 += s;
                    break;
                case "contents7":
                    contents7 += s;
                    break;
                case "contents8":
                    contents8 += s;
                    break;
                case "contents9":
                    contents9 += s;
                    break;
                case "contents10":
                    contents10 += s;
                    break;
                case "contents11":
                    contents11 += s;
                    break;
                case "contents12":
                    contents12 += s;
                    break;
                case "contents13":
                    contents13 += s;
                    break;
                case "contents14":
                    contents14 += f;
                    break;
                case "contents15":
                    contents15 += f;
                    break;
                default:
                    console.log("Error");
                    break;

            }
        }

        document.getElementById("contents1").innerHTML = contents1;
        document.getElementById("contents2").innerHTML = contents2;
        document.getElementById("contents3").innerHTML = contents3;
        document.getElementById("contents4").innerHTML = contents4;
        document.getElementById("contents5").innerHTML = contents5;
        document.getElementById("contents6").innerHTML = contents6;
        document.getElementById("contents7").innerHTML = contents7;
        document.getElementById("contents8").innerHTML = contents8;
        document.getElementById("contents9").innerHTML = contents9;
        document.getElementById("contents10").innerHTML = contents10;
        document.getElementById("contents11").innerHTML = contents11;
        document.getElementById("contents12").innerHTML = contents12;
        document.getElementById("contents13").innerHTML = contents13;
        document.getElementById("contents14").innerHTML = contents14;
        document.getElementById("contents15").innerHTML = contents15;

    }
};

var count = 0;

//获取搜索框对象
var searchinput = document.getElementById("searchinput1");

//获取搜索框焦点
searchinput.onfocus = function () {

    document.getElementById("searchtiplist").style.display = '';

    //实时获取搜索框输入的值
    searchinput.oninput = function(){

        var inputValue = document.getElementById("searchinput1").value;

        searchrequest(inputValue);

    }



}

//点击回车键调用前往搜索页函数
searchinput.addEventListener("keyup", function(event) {
    event.preventDefault()
    if (event.keyCode === 13) {
        searchSend();
    }
})

//失去焦点提示信息消失
searchinput.onblur = function () {

    setTimeout(function() {
        document.getElementById("searchtiplist").style.display = 'none';
    },300);

}


//请求搜索数据
function searchrequest(inputValue){

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

            //展示提示信息
            var searh = "";

            for (let i = 0; i < softSearchArray.length; i++) {

                var softSearch = softSearchArray[i];

                var softSearchName = softSearch.softName;

                var okSearchName = changeKeyRed(softSearchName,inputValue);

                var searchList = "<li onclick='setInput(\"" + softSearchName + "\")'>" + okSearchName + "</li>";

                searh += searchList;

            }

            document.getElementById("searchtipul").innerHTML = searh;

            //获取搜索提示信息列表
            var list = document.getElementById("searchtipul").getElementsByTagName("li");

            //调用上下选择提示信息函数,list:提示信息列表数组,softSearchArray:提示信息列表里面的内容
            upOrDownSelect(list,softSearchArray);

        }

    };


}

//搜索关键字变红
function changeKeyRed(str,keyWord) {

    var oRegExp = new RegExp('('+keyWord+')',"ig");
    str = str.replace(oRegExp,`<span style='color:#E97777;'>$1</span>`);
    return str;
}

//提示列表点击填充到搜索框
function setInput(softSearchName){

    document.getElementById("searchinput1").value = softSearchName;
    document.getElementById("searchtiplist").style.display='none';
    searchrequest(softSearchName);
    searchSend();

}

//点击搜索按钮跳转到搜索展示界面
function searchSend() {

    var searchInputValue = document.getElementById("searchinput1").value.trim();

    if (searchInputValue !== ""){

        var url = weburl + "/jspfiles/Search.jsp?searchShowName="+searchInputValue;

        window.open(url);

    }

}

// 搜索提示上下选择
function upOrDownSelect(list,softSearchArray) {

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
                document.getElementById("searchinput1").value = t;
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

// 留言反馈和网站投稿事件

// 显示盒子
function openbox(type) {

    if (type === 'type1'){

        document.getElementById("messagebox").style.display = '';
        document.getElementById("contributebox").style.display = 'none';

    }
    if (type === 'type2'){

        document.getElementById("messagebox").style.display = 'none';
        document.getElementById("contributebox").style.display = '';

    }


}

// 关闭盒子
function hiddenbox(type) {

    if (type === 'box1'){

        var messagebox = document.getElementById("messagebox");
        messagebox.style.display = 'none';
        document.getElementById("text").value = '';

    }
    if (type === 'box2'){

        document.getElementById("contributebox").style.display = 'none';
        document.getElementById("text2").value = '';
        document.getElementById("text3").checked = false;
        document.getElementById("text4").checked = false;
        document.getElementById("text5").checked = false;
        document.getElementById("text6").value = '';

    }

}



// 提交数据
function submitData(type) {

    if (type === 'data1'){

        //获取输入的值
        var inputValue = document.getElementById("text").value;

        var inputValueArr = [inputValue];

        if (inputValue !== ''){

            userFeedback('data1',inputValueArr);

            document.getElementById("p2").style.display = '';

            setTimeout(function (){
                document.getElementById("p2").style.display = 'none';
                hiddenbox('box1');
            },1000);

        }else {


            document.getElementById("p1").style.display = '';

            setTimeout(function (){
                document.getElementById("p1").style.display = 'none';
            },1000);

        }

    }

    if (type === 'data2'){


        console.log(document.getElementById("text3").checked);
        console.log(document.getElementById("text4").checked);
        console.log(document.getElementById("text5").checked);


        var dataOfRadio = '';

        if (document.getElementById("text3").checked === true){

            dataOfRadio = document.getElementById("text3").value;

        }
        if (document.getElementById("text4").checked === true){

            dataOfRadio = document.getElementById("text4").value;

        }
        if (document.getElementById("text5").checked === true){

            dataOfRadio = document.getElementById("text5").value;

        }

        var dataOfName = document.getElementById("text2").value;

        var dataOfText = document.getElementById("text6").value;

        var inputValueArr2 = [dataOfName,dataOfRadio,dataOfText];

        if (dataOfName !== '' && dataOfRadio !== '' && dataOfText !== ''){


            userFeedback('data2',inputValueArr2);

            document.getElementById("p3").style.display = '';

            setTimeout(function (){
                document.getElementById("p3").style.display = 'none';
                hiddenbox('box2');
            },1000);


        }else {

            document.getElementById("p4").style.display = '';

            setTimeout(function (){
                document.getElementById("p4").style.display = 'none';
            },1000);

        }


    }



}

function userFeedback(status,inputData){

    //获取用户名
    var userName = document.getElementById("username").innerHTML;

    var xhttp1;
    if (window.XMLHttpRequest) {
        xhttp1 = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xhttp1 = new ActiveXObject("Microsoft.XMLHTTP");
    }

    var url;

    if (status === 'data1'){

        url = weburl + "/userfeedback?inputData="+ inputData[0] + "&status=messageData" + "&userName=" + userName;
        console.log(url);

    }
    if (status === 'data2'){

        url = weburl + "/userfeedback?dataOfName="+ inputData[0] + "&dataOfRadio=" + inputData[1] + "&dataOfText=" + inputData[2] + "&status=contributeData" + "&userName=" + userName;

        console.log(url);

    }

    url=encodeURI(url);

    url=encodeURI(url)

    xhttp1.open("POST", url,true);

    xhttp1.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

    xhttp1.send();

    xhttp1.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {



        }

    };


}