
var weburl = "http://localhost:8081";

var ad = document.querySelector('h4');
setTimeout(function () {
    ad.style.display = 'none';
}, 1000);

//验证用户名
var flag1 = false;
var uPattern;
var tipUsername = document.getElementById("inputname");
tipUsername.onblur = checkUsername;
function checkUsername() {

    var inputUsername = tipUsername.value.trim();

    uPattern = /^[a-zA-Z0-9_-]{1,10}$/;

    var flag = uPattern.test(inputUsername);

    if (flag) {

        document.getElementById("tip_username").style.display = "none";
        //异步判断用户名是否存在
        var xhttp;
        if (window.XMLHttpRequest) {
            xhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }

        xhttp.open("POST", weburl+"/register?username=" + inputUsername + "&status=1", true);
        xhttp.send();

        xhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {

                console.log("username:"+this.responseText);

                if (this.responseText === "true") {

                    document.getElementById("p").innerHTML = "用户名已存在";

                    document.getElementById("p").style.display = '';

                    setTimeout(function () {
                        document.getElementById("p").style.display = 'none';
                    }, 1000);

                    flag1 = false;

                } else {

                    flag1 = true;

                }

            }
        };


    } else {

        document.getElementById("tip_username").style.display = '';

    }

    return flag;

}

//验证邮箱
var flag2 = true;
var tipEmail = document.getElementById("email");
tipEmail.onblur = checkEmail;
function checkEmail() {

    var inputEmail = tipEmail.value.trim();
    uPattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    var flag = uPattern.test(inputEmail);

    if (flag) {

        document.getElementById("tip_email").style.display = 'none';

        //异步判断邮箱是否存在
        var xhttp;
        if (window.XMLHttpRequest) {
            xhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }

        xhttp.open("POST", weburl+"/register?email=" + inputEmail + "&status=2", true);
        xhttp.send();



        xhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {

                if (this.responseText === "true") {

                    document.getElementById("p").innerHTML = "该邮箱已被注册";

                    document.getElementById("p").style.display = '';

                    setTimeout(function () {
                        document.getElementById("p").style.display = 'none';
                    }, 1000);

                    flag2 = false;

                } else {

                    flag2 = true;

                }

            }
        };

    } else {

        document.getElementById("tip_email").style.display = '';

    }

    return flag;

}

//验证密码
var inputRPassword;
var tipRPassword = document.getElementById("rpassword");

tipRPassword.onblur = checkRPassword;
function checkRPassword() {

    inputRPassword = tipRPassword.value.trim();

    uPattern = /^(\w){6,20}$/;

    if (uPattern.test(inputRPassword)) {

        document.getElementById("tip_password").style.display = 'none';

    } else {

        document.getElementById("tip_password").style.display = '';

    }

    return uPattern.test(inputRPassword);

}

//验证再次输入密码
var tipCheckPassword = document.getElementById("checkpassword");

tipCheckPassword.onblur = checkAgainPassword;
function checkAgainPassword() {

    var inputCheckPassword = tipCheckPassword.value.trim();

    console.log(inputCheckPassword);

    if (inputCheckPassword === inputRPassword) {

        document.getElementById("tip_checkpassword").style.display = 'none';

    } else {

        document.getElementById("tip_checkpassword").style.display = '';

    }

    return inputCheckPassword === inputRPassword;

}

//验证所有表单是否都符合规则
var regForm = document.getElementById("registerform");

regForm.onsubmit = function () {


    return checkUsername() && checkEmail() && checkRPassword() && checkAgainPassword() && flag1 && flag2;

}

//登录验证
//异步判断用户名和密码是否正确

//判断用户名和密码是否都输入
var regLoginForm = document.getElementById("loginform");
var flag3 = false;
var flag4 = false;
regLoginForm.onsubmit = function () {

    var loginUserName = document.getElementById("username");

    var inputLoginName = loginUserName.value.trim();

    var loginPassword = document.getElementById("password");

    var inputPassword = loginPassword.value.trim();

    if (inputLoginName === "") {

        document.getElementById("tip_login").style.display = '';

        document.getElementById("tip_login").innerHTML = "<i class=\"iconfont\" style='margin-right: 4px;'>&#xe642;</i>用户名不能为空";

        setTimeout(function () {
            document.getElementById("tip_login").style.display = 'none';
        }, 500);

        flag3 = false;

    } else {
        flag3 = true;
    }

    if (inputPassword === "") {

        document.getElementById("tip_login").style.display = '';

        document.getElementById("tip_login").innerHTML = "<i class=\"iconfont\" style='margin-right: 4px;'>&#xe642;</i>密码不能为空";

        setTimeout(function () {
            document.getElementById("tip_login").style.display = 'none';
        }, 500);

        flag4 = false;

    } else {
        flag4 = true;
    }

    if (inputLoginName === "" && inputPassword === "") {

        document.getElementById("tip_login").style.display = '';

        document.getElementById("tip_login").innerHTML = "<i class=\"iconfont\" style='margin-right: 4px;'>&#xe642;</i>请输入用户名和密码";

        setTimeout(function () {
            document.getElementById("tip_login").style.display = 'none';
        }, 500);

    }

    return flag3 && flag4;

}




// 获取去注册按钮元素
let register = document.getElementById("gologin");

// 获取去登录按钮元素
let login = document.getElementById("goregister");

//获取登录和注册盒子下面的盒子的第一个class元素
let formbox = document.getElementsByClassName("formbox")[0];

//获取注册盒子的第一个class元素
let register_box = document.getElementsByClassName("register")[0];

//获取登录盒子的第一个class元素
let login_box = document.getElementsByClassName("login")[0];

let registerbutton = document.getElementById("registerbutton");

let loginbutton = document.getElementById("loginbutton");

let forget_div = document.getElementById("forgetbig");




//去注册按钮点击事件
login.addEventListener('click', () => {

    formbox.style.transform = 'translateX(80%)';
    login_box.classList.add('hidden');
    register_box.classList.remove('hidden');
    forget_div.classList.add('hidden');

})

//去登录按钮点击事件
register.addEventListener('click', () => {

    formbox.style.transform = 'translateX(0%)';
    register_box.classList.add('hidden');
    login_box.classList.remove('hidden');
    forget_div.classList.add('hidden');


})

var memory = document.getElementById("memory");
let forget = document.getElementById("forgetbutton");

var count = 1;

//保持登录

//判断cookies值
var cookiesValue;

memory.addEventListener('click', () => {

    count++;

    if (count % 2 !== 0) {

        cookiesValue = document.getElementById("remember").value = '0';
        memory.innerHTML = '';

        console.log("cookiesValue:" + cookiesValue);


    } else {

        cookiesValue = document.getElementById("remember").value = '1';
        memory.innerHTML = "<i class=\"iconfont\" style='font-size:10px;color: #3DB2FF;font-weight: 900'>&#xe610;</i>"

        console.log("cookiesValue:" + cookiesValue);


    }

})

cookiesValue2 = document.getElementById("remember").value;

if (cookiesValue2 === '1'){

    console.log("cookiesValue2:" + cookiesValue2);

    memory.innerHTML = "<i class=\"iconfont\" style='font-size:10px;color: #3DB2FF;font-weight: 900'>&#xe610;</i>"

    count ++;
}else {

    console.log("cookiesValue2:" + cookiesValue2);


    memory.innerHTML = '';

}

//忘记密码
//忘记密码点击事件
forget.addEventListener('click', () => {

    formbox.style.transform = 'translateX(80%)';
    login_box.classList.add('hidden');
    register_box.classList.add('hidden');
    forget_div.classList.remove('hidden');

})

//修改密码
//获取”验证用户名/邮箱“
let resetName = document.getElementById("resetname");
//监听焦点
let checkUserName3 = '';
// 失去焦点获取输入的值并判断
resetName.onblur = checkUser;
var flagOfUserName = false;
function checkUser() {

    var checkUserName = document.getElementById("resetname").value.trim();

    // 用户名中文转码
    let checkUserName2=encodeURI(checkUserName);

    checkUserName3 =encodeURI(checkUserName2)

    //异步判断输入的用户名是否存在
    if (checkUserName !== ''){

        var xhttp;
        if (window.XMLHttpRequest) {
            xhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }

        xhttp.open("POST", weburl+"/resetpwd?checkusername=" + checkUserName3+"&status=username", true);
        xhttp.send();

        xhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {

                console.log(this.responseText);

                if (this.responseText === "true"){

                    flagOfUserName = true;

                }else {

                    flagOfUserName = false;
                    // 用户不存在，显示提示信息
                    document.getElementById("tip_checkuser").style.display = '';

                    setTimeout(function () {

                        document.getElementById("tip_checkuser").style.display = 'none';

                    },1000);

                }

            }
        };

    }else {

        flagOfUserName = false;


    }

    return flagOfUserName;

}

//验证邮箱
var resetEmail = document.getElementById("resetemail");
var okOrNo = false;
resetEmail.onblur = checkUserEmail;
function checkUserEmail() {

    //获取输入的邮箱
    var inputCheckEmail = document.getElementById("resetemail").value.trim();

    // 用户名中文转码
    var inputCheckEmail2=encodeURI(inputCheckEmail);

    var inputCheckEmail3 =encodeURI(inputCheckEmail2)

    //判断邮箱是否和用户名匹配
    if (checkUserName3 !== ''){

        if (inputCheckEmail3 !== ''){

            var xhttp;
            if (window.XMLHttpRequest) {
                xhttp = new XMLHttpRequest();
            } else {
                // code for IE6, IE5
                xhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }

            xhttp.open("POST", weburl+"/resetpwd?checkusername=" + checkUserName3 + "&checkuseremail="+inputCheckEmail3+"&status=useremail", true);
            xhttp.send();
            xhttp.onreadystatechange = function () {
                if (this.readyState === 4 && this.status === 200) {

                    console.log(this.responseText);
                    if (this.responseText === "true"){

                        okOrNo = true;

                    }else {

                        okOrNo = false;

                        document.getElementById("tip_checkemail1").style.display = '';
                        setTimeout(function () {

                            document.getElementById("tip_checkemail1").style.display = 'none';

                        },1000);

                    }

                }
            };

        }else {

            okOrNo = false;

            document.getElementById("tip_checkemail3").style.display = '';
            setTimeout(function () {

                document.getElementById("tip_checkemail3").style.display = 'none';

            },1000);

        }


    }else{

        okOrNo = false;

        document.getElementById("tip_checkemail2").style.display = '';
        setTimeout(function () {

            document.getElementById("tip_checkemail2").style.display = 'none';

        },1000);

    }

    return okOrNo;

}

//验证输入的密码是否符号规则
let tipPassword1 = document.getElementById("resetpassword");

let inputPassword1;

var flagOfCheck1 = true;

tipPassword1.onblur = checkPassword1;

function checkPassword1() {

    inputPassword1 = tipPassword1.value.trim();

    let uPattern = /^(\w){6,20}$/;

    if (uPattern.test(inputPassword1)) {

        document.getElementById("tip_checkpassword1").style.display = 'none';

        flagOfCheck1 = true;

    } else {

        flagOfCheck1 = false;


        document.getElementById("tip_checkpassword1").style.display = '';

    }

    return flagOfCheck1;

}

//验证再次输入密码
let tipPassword2 = document.getElementById("resetpassword2");

tipPassword2.onblur = checkPassword2;

var flagOfCheck2 = true;

function checkPassword2() {

    let inputPassword2 = tipPassword2.value.trim();

    if (inputPassword2 === inputPassword1) {

        document.getElementById("tip_checkpassword2").style.display = 'none';

        flagOfCheck2 = true;

    } else {

        document.getElementById("tip_checkpassword2").style.display = '';

        flagOfCheck2 = false;

    }

    return flagOfCheck2;

}

//判断修改信息是否都填写完整
let resetInfo = document.getElementById("forgetsmall");

resetInfo.onsubmit = function () {

    return checkUser() && checkUserEmail() && checkPassword1() && checkPassword2();

}