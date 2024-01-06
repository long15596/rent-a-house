<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="0;url=http://localhost:8080/home">
    <?php wp_head(); ?>
    <link href="WEB-INF/introduce.css" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%--<div class="wrapper cleafix">--%>
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
                    <ul class="nav navbar-nav navbar-right">

                        <li>
                            <a href="#"
                               target="_blank"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                 <%-- anh dẫn link vào đây để sang login--%>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="header">
<%--        <iframe class="muzik" width="500" height="80"--%>
<%--                src="https://zingmp3.vn/bai-hat/Anh-Chi-Muon-Ronboogz/Z700D6WC.html" frameborder="0"--%>
<%--                allowfullscreen></iframe>--%>
<%--Muốn nghe nhạc thif bỏ comment--%>
        <div class="nav-link">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Vận
                        chuyển <span
                                class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">select1</a></li>
                        <li><a href="#">select2</a></li>
                        <li><a href="#">select3</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Chỗ
                        ở <span
                                class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">select1</a></li>
                        <li><a href="#">select2</a></li>
                        <li><a href="#">select3</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Hoạt
                        động giải trí <span
                                class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">select1</a></li>
                        <li><a href="#">select2</a></li>
                        <li><a href="#">select3</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Sản
                        phẩm bổ sung<span
                                class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">select1</a></li>
                        <li><a href="#">select2</a></li>
                        <li><a href="#">select3</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
    <div class="gallery">
        <h1 onclick="checkLogin()" style="cursor: pointer;color: white">OUR GALLERY</h1>


        </p>
        <div class="container" style="height: 40px">
            <div class="memu-button">
                <button class="btn-btn">Tất cả</button>
                <button class="btn-btn">Home Stay</button>
                <button class="btn-btn">Villas</button>
                <button class="btn-btn">Event</button>
                <button class="btn-btn">View</button>
            </div>
        </div>
    </div>
    <div class="gallery-box">
        <div class="gallery-item">
            <img src="https://images.unsplash.com/photo-1565380405453-a60d3941c3a3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjYwfHxob3RlbHxlbnwwfHwwfHx8MA%3D%3D"
                 alt="" class="gallery-img">
            <a class="test" style="text-decoration: none"
               href="#"
               target="_blank"><i>
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

            <a class="test" style="text-decoration: none"
               href="#"
               target="_blank"><i> <!--a có thể dẫn link đến đki hoặc home-->
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor"
                     class="bi bi-house-add" viewBox="0 0 16 16">
                    <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h4a.5.5 0 1 0 0-1h-4a.5.5 0 0 1-.5-.5V7.207l5-5 6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293z"/>
                    <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0m-3.5-2a.5.5 0 0 0-.5.5v1h-1a.5.5 0 0 0 0 1h1v1a.5.5 0 1 0 1 0v-1h1a.5.5 0 1 0 0-1h-1v-1a.5.5 0 0 0-.5-.5"/>
                </svg>
            </i></a>
        </div>
        <div class="gallery-item">

            <img src="https://images.unsplash.com/photo-1582247854288-d12c8a2d9acb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzAyfHxob3RlbHxlbnwwfHwwfHx8MA%3D%3D">
            <a class="test" style="text-decoration: none"
               href="#"
               target="_blank"><i> <!--a có thể dẫn link đến đki hoặc home-->
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

            <a class="test" style="text-decoration: none"
               href="#"
               target="_blank"><i> <!--a có thể dẫn link đến đki hoặc home-->
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

            <a class="test" style="text-decoration: none"
               href="#"
               target="_blank"><i> <!--a có thể dẫn link đến đki hoặc home-->
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

            <a class="test" style="text-decoration: none"
               href="#"
               target="_blank"><i> <!--a có thể dẫn link đến đki hoặc home-->
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
            <img src="../1.jpg"
                 alt="">
        </label><label for="s2" id="slider2">
        <img src="../5.jpg"
             alt="">
    </label><label for="s3" id="slider3">
        <img src="../3.jpg"
             alt="">
    </label><label for="s4" id="slider4">
        <img src="../4.jpg"
             alt="">
    </label><label for="s5" id="slider5">
        <img src=../2.jpg
             alt="">
    </label>
    </div>
</div>
</div>

<script>
    function checkLogin() {
        alert("Bạn phải đăng nhập để sử dụng chức năng này!");
        window.location.href = "http://localhost:63342/bucumd3/login/Login.html?_ijt=ojmqg3mud1o9pla4bggovih3s4&_ij_reload=RELOAD_ON_SAVE", "_blank";
    }
</script>


</div>
</body>
</html>
