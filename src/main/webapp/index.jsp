<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>introduce</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--    <meta http-equiv="refresh" content="0;url=http://localhost:8080/home">--%>
    <?php wp_head(); ?>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
    .container-fluid {
        background-color: black;
    }

    .navbar-brand {

        width: 50px;
        height: 50px;
    }



    p, h1 {
        text-align: center;
    }

    p:hover {
        color: white;


    }

    .memu-button {
        color: white;
        border: none;
        cursor: pointer;
        padding: 5px 30px;
        font-size: 18px;
        text-align: center;
    }


    .gallery-box {
        display: grid;
        grid-gap: 30px;
        padding: 50px;
        grid-template-columns: 1fr 1fr 1fr;
        grid-template-rows: 300px 300px;

    }

    .gallery-img {
        width: 100%;
        height: 100%;
        border-radius: 10px;
        object-fit: cover;
    }

    .gallery-item:hover {
        transform: scale(1.05);
    }


    .gallery-item:hover .test {
        position: absolute;
        font-size: 30px;
        height: 50px;
        width: 100%;
        display: flex;
        align-items: end;
        background: linear-gradient(to top, rgba(0, 0, 0, 0.9) 0%,
        rgba(0, 0, 0, 0) 100%);
        color: white;
        text-align: center;
        bottom: -5px;
        padding-left: 12px;

    }


    .gallery-item {
        position: relative;
        border-radius: 10px;
        overflow: hidden;
        transition: 1s all;
        transform-origin: center;
        box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
        outline: 1px solid darkslategray;

    }

    .dropdown, .b {
        background-color: white;
    }


    :root {
        --bgColor: rgb(255, 252, 241);
    }


    #slider {
        position: relative;
        width: 50%;
        height: 32vw;
        margin: 80px auto;
        transform-style: preserve-3d;
        font-family: sans-serif;
        perspective: 1400px;
    }

    input[type="radio"] {
        position: relative;
        top: 100%;
        left: 50%;
        width: 18px;
        height: 18px;
        margin: 0 15px 0 0;
        transform: translateX(-83px);
        cursor: pointer;
        opacity: 0.4;
    }

    input[type="radio"]:checked {
        opacity: 1;
    }

    #slider label, #slider label img {
        display: flex;
        position: absolute;
        top: 0;
        left: 0;
        align-items: center;
        justify-content: center;
        width: 100%;
        height: 100%;
        object-fit: cover;
        border-radius: 3px;
        color: white;
        font-size: 70px;
        font-weight: bold;
        cursor: pointer;
        transition: transform 400ms ease;
    }

    #slider label img, #slider label {
        height: 350px;
    }

    /*1*/

    #s1:checked ~ #slider1,
    #s2:checked ~ #slider2,
    #s3:checked ~ #slider3,
    #s4:checked ~ #slider4,
    #s5:checked ~ #slider5 {
        transform: translate3d(0%, 0, 0);
        box-shadow: 0 13px 26px rgb(0, 0, 0, 0.3), 0 12px 6px rgb(0, 0, 0, 0.2);

    }

    /*2*/

    #s1:checked ~ #slider2,
    #s2:checked ~ #slider3,
    #s3:checked ~ #slider4,
    #s4:checked ~ #slider5,
    #s5:checked ~ #slider1 {
        transform: translate3d(20%, 0, -100px);
        box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3), 0 2px 2px rgba(0, 0, 0, 0.2);

    }

    /*3*/

    #s1:checked ~ #slider5,
    #s2:checked ~ #slider1,
    #s3:checked ~ #slider2,
    #s4:checked ~ #slider3,
    #s5:checked ~ #slider4 {
        transform: translate3d(-20%, 0, -1000px);
        box-shadow: 0 6px 10px rgba(0, 0, 0, 0.3), 0 2px 2px rgba(0, 0, 0, 0.2);
    }

    /*5*/

    #s1:checked ~ #slider4,
    #s2:checked ~ #slider5,
    #s3:checked ~ #slider1,
    #s4:checked ~ #slider2,
    #s5:checked ~ #slider3 {
        transform: translate3d(-40%, 0, -250px);
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.4);
    }

    /*4*/

    #s1:checked ~ #slider3,
    #s2:checked ~ #slider4,
    #s3:checked ~ #slider5,
    #s4:checked ~ #slider1,
    #s5:checked ~ #slider2 {
        transform: translate3d(40%, 0, -250px);
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.4);
    }

</style>
<body>

<div class="wrapper">
    <div class="main-top">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Home</a></li>
                        <li class="dropdown1">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu<span
                                    class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Page 1-1</a></li>
                                <li><a href="#">Page 1-2</a></li>
                                <li><a href="#">Page 1-3</a></li>
                            </ul>
                        </li>
                        <li><a href="#">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10m0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6"/>
                            </svg>
                            CHECK IN</a></li>
                        <li><a href="#">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-headset" viewBox="0 0 16 16">
                                <path d="M8 1a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a6 6 0 1 1 12 0v6a2.5 2.5 0 0 1-2.5 2.5H9.366a1 1 0 0 1-.866.5h-1a1 1 0 1 1 0-2h1a1 1 0 0 1 .866.5H11.5A1.5 1.5 0 0 0 13 12h-1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h1V6a5 5 0 0 0-5-5"/>
                            </svg>
                            CONTACT US</a></li>
                    </ul>

                </div>
            </div>
        </nav>
    </div>

    <div class="gallery" style="margin-top: 50px">
        <h1 onclick="checkLogin()" style="cursor: pointer;color: black">OUR GALLERY</h1>



    </div>
    <div class="gallery-box">
        <div class="gallery-item">
            <img src="https://images.unsplash.com/photo-1565380405453-a60d3941c3a3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjYwfHxob3RlbHxlbnwwfHwwfHx8MA%3D%3D"
                 alt="" class="gallery-img">
            <a class="test" style="text-decoration: none" href="http://localhost:8080/home" target="_blank"><i>
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor"
                     class="bi bi-house-add" viewBox="0 0 16 16">
                    <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h4a.5.5 0 1 0 0-1h-4a.5.5 0 0 1-.5-.5V7.207l5-5 6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
                    <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0m-3.5-2a.5.5 0 0 0-.5.5v1h-1a.5.5 0 0 0 0 1h1v1a.5.5 0 1 0 1 0v-1h1a.5.5 0 1 0 0-1h-1v-1a.5.5 0 0 0-.5-.5"/>
                </svg>
            </i></a>

        </div>
        <div class="gallery-item">
            <img src="https://images.unsplash.com/photo-1584970091438-19edea48bdc3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjcyfHxob3RlbHxlbnwwfHwwfHx8MA%3D%3D"
                 alt="" class="gallery-img">
            <a class="test" style="text-decoration: none" href="http://localhost:8080/home" target="_blank"><i>
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor"
                     class="bi bi-house-add" viewBox="0 0 16 16">
                    <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h4a.5.5 0 1 0 0-1h-4a.5.5 0 0 1-.5-.5V7.207l5-5 6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
                    <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0m-3.5-2a.5.5 0 0 0-.5.5v1h-1a.5.5 0 0 0 0 1h1v1a.5.5 0 1 0 1 0v-1h1a.5.5 0 1 0 0-1h-1v-1a.5.5 0 0 0-.5-.5"/>
                </svg>
            </i></a>

        </div>
        <div class="gallery-item">

            <img src="https://images.unsplash.com/photo-1582247854288-d12c8a2d9acb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzAyfHxob3RlbHxlbnwwfHwwfHx8MA%3D%3D"
                 alt="" class="gallery-img">
            <a class="test" style="text-decoration: none" href="http://localhost:8080/home" target="_blank"><i>
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor"
                     class="bi bi-house-add" viewBox="0 0 16 16">
                    <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h4a.5.5 0 1 0 0-1h-4a.5.5 0 0 1-.5-.5V7.207l5-5 6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
                    <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0m-3.5-2a.5.5 0 0 0-.5.5v1h-1a.5.5 0 0 0 0 1h1v1a.5.5 0 1 0 1 0v-1h1a.5.5 0 1 0 0-1h-1v-1a.5.5 0 0 0-.5-.5"/>
                </svg>
            </i></a>

        </div>
        <div class="gallery-item">
            <img src="https://images.unsplash.com/photo-1505576391880-b3f9d713dc4f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzUyfHxob3RlbHxlbnwwfHwwfHx8MA%3D%3D"
                 alt="" class="gallery-img">
            <a class="test" style="text-decoration: none" href="http://localhost:8080/home" target="_blank"><i>
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor"
                     class="bi bi-house-add" viewBox="0 0 16 16">
                    <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h4a.5.5 0 1 0 0-1h-4a.5.5 0 0 1-.5-.5V7.207l5-5 6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
                    <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0m-3.5-2a.5.5 0 0 0-.5.5v1h-1a.5.5 0 0 0 0 1h1v1a.5.5 0 1 0 1 0v-1h1a.5.5 0 1 0 0-1h-1v-1a.5.5 0 0 0-.5-.5"/>
                </svg>
            </i></a>

        </div>
        <div class="gallery-item">
            <img src="https://images.unsplash.com/photo-1559910369-3924e235c1cf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzY0fHxob3RlbHxlbnwwfHwwfHx8MA%3D%3D"
                 alt="" class="gallery-img">
            <a class="test" style="text-decoration: none" href="http://localhost:8080/home" target="_blank"><i>
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor"
                     class="bi bi-house-add" viewBox="0 0 16 16">
                    <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h4a.5.5 0 1 0 0-1h-4a.5.5 0 0 1-.5-.5V7.207l5-5 6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
                    <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0m-3.5-2a.5.5 0 0 0-.5.5v1h-1a.5.5 0 0 0 0 1h1v1a.5.5 0 1 0 1 0v-1h1a.5.5 0 1 0 0-1h-1v-1a.5.5 0 0 0-.5-.5"/>
                </svg>
            </i></a>

        </div>
        <div class="gallery-item">
            <img src="https://images.unsplash.com/photo-1505334086731-6579ef4cf449?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDAyfHxob3RlbHxlbnwwfHwwfHx8MA%3D%3D"
                 alt="" class="gallery-img">
            <a class="test" style="text-decoration: none" href="http://localhost:8080/home" target="_blank"><i>
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor"
                     class="bi bi-house-add" viewBox="0 0 16 16">
                    <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h4a.5.5 0 1 0 0-1h-4a.5.5 0 0 1-.5-.5V7.207l5-5 6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
                    <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0m-3.5-2a.5.5 0 0 0-.5.5v1h-1a.5.5 0 0 0 0 1h1v1a.5.5 0 1 0 1 0v-1h1a.5.5 0 1 0 0-1h-1v-1a.5.5 0 0 0-.5-.5"/>
                </svg>
            </i></a>

        </div>

    </div>
    <div id="slider">
        <input type="radio" name="slider" id="s1" checked/>
        <input type="radio" name="slider" id="s2"/>
        <input type="radio" name="slider" id="s3"/>
        <input type="radio" name="slider" id="s4"/>
        <input type="radio" name="slider" id="s5"/>
        <label for="s1" id="slider1">
            <img src="https://images.unsplash.com/photo-1518733057094-95b53143d2a7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aG90ZWwlMjBjYXRlZ29yeXxlbnwwfHwwfHx8MA%3D%3D"
                 alt="">
        </label><label for="s2" id="slider2">
        <img src="https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVsJTIwY2F0ZWdvcnl8ZW58MHx8MHx8fDA%3D"
             alt="">
    </label><label for="s3" id="slider3">
        <img src="https://images.unsplash.com/photo-1522798514-97ceb8c4f1c8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGhvdGVsJTIwY2F0ZWdvcnl8ZW58MHx8MHx8fDA%3D"
             alt="">
    </label><label for="s4" id="slider4">
        <img src="https://images.unsplash.com/photo-1522587750645-7e0e798b2b59?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fGhvdGVsJTIwY2F0ZWdvcnl8ZW58MHx8MHx8fDA%3D"
             alt="">
    </label><label for="s5" id="slider5">
        <img src=https://images.unsplash.com/photo-1566073771259-6a8506099945?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGhvdGVsJTIwY2F0ZWdvcnl8ZW58MHx8MHx8fDA%3D
             alt="">
    </label>
    </div>
</div>
<script>
    function checkLogin(){
        window.location.href='http://localhost:8080/home'
    }
</script>
</body>
</html>
