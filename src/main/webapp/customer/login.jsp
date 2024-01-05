<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 04/01/2024
  Time: 10:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            background-image: linear-gradient(to bottom right, #BEEBF1, #F3ACCC);
            height:100vh;
            overflow: hidden;
            font-family: monospace;
        }
        .container{
            position: absolute;
            top:45%;
            left:50%;
            transform: translate(-50%,-50%);
            width:400px;
            height:70vh;
            z-index: 1;
        }
        .container::before{
            position: absolute;
            bottom: 50%;
            left:80%;
            width:600px;
            height:600px;
            content:'';
            background-image: linear-gradient(to top right, #B1BAF5, #C2ADF3);
            border-radius: 50%;
            z-index: -1;
            animation: backgroundanimation 2s ease-in-out 2s infinite alternate;
        }
        .container::after{
            position: absolute;
            top: 50%;
            right:60%;
            width:400px;
            height:400px;
            content:'';
            background-image: linear-gradient(to top right, #B1BAF5, #C2ADF3);
            border-radius: 50%;
            z-index: -1;
            filter: blur(10px);
            animation: backgroundanimation 5s ease-in-out infinite alternate;
        }
        @keyframes backgroundanimation{
            from{
                transform: translate(0,0);
            }to{
                 transform: translate(0,100px);
             }
        }
        .form{
            background-color: rgb(239, 239, 239, 0.3);
            width:100%;
            height:110%;
            border-radius: 30px;
            overflow: hidden;
            position: absolute;
        }
        .content{
            width:80%;
            padding:10%;
            height:65%;
            position: absolute;
            margin-top:0;
            overflow: hidden;
        }

        h1{
            color:#fff;
            margin-bottom:50px;
        }
        button{
            width:80%;
            border:none;
            margin-top:20px;
            padding:15px 0;
            position: absolute;
            bottom:10px;
            background-image: linear-gradient(to right, #90ABF4, #E697D5);
            color:#fff;
        }
        .group{
            height:60px;
            position: relative;
            margin-bottom: 30px;
        }
        .group label{
            position:absolute;
            top:45px;
            left:0;
            transition: 0.5s;

        }
        .group .inputText{
            /*margin-top:-20px;*/
            width:80%;
            padding: 0 10%;
            height:50px;
            border:none;
            outline: none;
            background-color: rgb(255, 255, 255, 0.6);
        }





        .inputText:focus + label,
        .inputText:not(:placeholder-shown) + label
        {
            top:0;
            left:10%;
        }
        .inputText:valid{
            border-bottom:1px solid #909fee;
        }
        input[type='checkbox'] + label{
            position: unset;
        }
        .form-rotate{
            position: absolute;
            top:0;
            left:0;
            width:100%;
            height:100%;
            overflow: hidden;
            border-top-left-radius:30px;
            border-top-right-radius:30px;
            z-index: -1;

        }
        #rotate{
            background-image: linear-gradient(to right, #909FEE, #D292F3);
            width:500px;
            height:500px;
            border-radius: 30% 70% 70% 30% / 30% 43% 57% 70% ;
            z-index: -1;
            position: absolute;
            top :-200px;
            left:50%;
            transform: translate(-50%);
            transition: 1s;
        }
        .option{
            position: absolute;
            bottom:-15px;width:70%;
            left:50%;
            transform: translate(-50%);
        }
        .changeType{
            width:50%;
            float: left;
            display: flex;
            justify-content: center;
            align-items: center;
            transition:1s;
            height:40px;
        ;

        }
        .bg-active{
            position: absolute;
            width:50%;
            left:0;
            transition: 1s;
            background-color: #909FEE;
            height:40px;
            z-index: -1;
            border-radius: 20px;
        }
        .changeType.active {
            color:#fff;
        }


        .form.login .content:nth-child(1){
            z-index: 1;
            animation:nextContent 1s ease-in-out 1 forwards
        }
        .form.login .content:nth-child(2){
            z-index: 1;
            animation:outContent 1s ease-in-out 1 forwards
        }
        @keyframes nextContent{
            from{
                transform: translate(100%,0px);
            }to{
                 transform: translate(0,0px);
             }
        }
        @keyframes outContent{
            from{
                transform: translate(0,0px);
            }to{
                 transform: translate(-100%,0px);
             }
        }
        .form.register .content:nth-child(2){
            z-index: 1;
            animation:nextContent 1s ease-in-out 1 forwards
        }
        .form.register .content:nth-child(1){
            z-index: 1;
            animation:outContent 1s ease-in-out 1 forwards
        }
        .r-inputText{
            height: 25px;
            width: 100%;
            margin-bottom: -5px;
        }
        select{
            margin-bottom: 20px;
            height: 31px;
            width: 328px;
            background-color: white;
        }
        .group {
            height: auto;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="form login" id="form">
        <form action="" method="post">
            <div class="content">
                <h1>Login</h1>
                <div class="group">
                    <input type="text" id="username-login" class="inputText" placeholder="Username" required name="username">
                    <label for="username-login"></label>
                </div>
                <div class="group">
                    <input type="password" id="pass-login" class="inputText" placeholder="Password" required name="password">
                    <label for="pass-login"></label>
                </div>
                <div class="group">
                    <input type="checkbox"> Save login
                </div>
                <button>Login</button>
            </div>
        </form>
        <div class="content">
            <h1>Register</h1>
            <div class="group">
                <input type="text" id="username-reg" class="r-inputText" placeholder="Username" required>
                <label for="username-reg"></label>
            </div>
            <div class="group">
                <input type="text" id="1email-reg" class="r-inputText" placeholder="Password" required>
                <label for="1email-reg"></label>
            </div>
            <select>
                <option>Ngươì dùng</option>
                <option>Chủ nhà</option>
            </select>
            <div class="group">
                <input type="text" id="2email-reg" class="r-inputText" placeholder="Name" required>
                <label for="2email-reg"></label>
            </div>
            <div class="group">
                <input type="number" id="3email-reg" class="r-inputText" placeholder="Phone-number" required>
                <label for="3email-reg"></label>
            </div>
        </div>
        <div class="form-rotate">
            <div id="rotate"></div>
        </div>
    <div class="option">
        <div class="bg-active" id="bg-active"></div>
        <div class="changeType active" id="login">Login</div>
        <div class="changeType" id="register">Register</div>
    </div>
</div>
<script>
    let options = document.querySelectorAll('.changeType');
    let form = document.getElementById('form');
    let bgactive = document.getElementById('bg-active')
    var rotatedeg=0;

    options.forEach(val =>{
        val.addEventListener('click',function (event){
            // alert(this.id);
            /* thống báo trạng thái */
            form.classList.remove('login')
            form.classList.remove('register')
            form.classList.add(this.id);
            bgactive.style.left=this.offsetLeft + 'px';
            options.forEach(item =>{
                item.classList.remove('active');
            });
            this.classList.add('active');

            rotatedeg = rotatedeg +200;
            document.getElementById('rotate').style.transform= 'translate(-50%) rotate('+rotatedeg +'deg)';
        })
    } )
</script>
</div>
</body>
</html>
