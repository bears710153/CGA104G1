<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!doctype html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="description" content="">
            <meta name="author" content="Dashboard">
            <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">


            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
                crossorigin="anonymous">

            <!-- import jquery-3.6.0 -->
            <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

            <!-- import icon -->
            <script src="https://kit.fontawesome.com/b5ef6b60f3.js" crossorigin="anonymous"></script>

            <style>
                .dropdown:hover .dropdown-menu {
                    display: block;
                    margin-top: 0;
                }

                ul.navbar-nav a:hover {
                    color: #FFC107 !important;
                }

                #none {
                    height: 66px;
                }
            </style>
        </head>

        <body>
            <section id="container">
                <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
                <header>
                    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#"><img
                                    src="<%=request.getContextPath()%>/backend/asset/img/share_icon/ba-rei 02.png"
                                    width="100px" height="40px"></a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item dropdown"><a class="nav-link" href="#" role="button"
                                            aria-expanded="false"> ???????????? </a>
                                        <ul class="dropdown-menu bg-dark">
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">??????????????????</a></li>
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">??????????????????</a></li>
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">??????????????????</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item dropdown"><a class="nav-link" href="#" role="button"
                                            aria-expanded="false"> ???????????? </a>
                                        <ul class="dropdown-menu bg-dark">
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">????????????</a></li>
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">??????????????????</a></li>
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">???????????????</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item dropdown"><a class="nav-link" href="#" role="button"
                                            aria-expanded="false"> ???????????? </a>
                                        <ul class="dropdown-menu bg-dark">
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">??????????????????</a></li>
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">??????????????????</a></li>
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">??????????????????</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#">???????????????</a></li>
                                    <li class="nav-item dropdown"><a class="nav-link" href="#" role="button"
                                            aria-expanded="false"> ???????????? </a>
                                        <ul class="dropdown-menu bg-dark">
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">????????????</a></li>
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">Q&A??????</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item dropdown"><a class="nav-link" href="#" role="button"
                                            aria-expanded="false"> ???????????? </a>
                                        <ul class="dropdown-menu bg-dark">
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">??????????????????</a></li>
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">??????????????????</a></li>
                                            <li><a class="dropdown-item bg-dark text-white-50" href="#">?????????????????????</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <div id="none"></div>
                </header>
                <!-- **********************************************************************************************************************************************************
      MAIN CONTENT ?????????????????????
      *********************************************************************************************************************************************************** -->
                <!--main content start-->
                <!-- 		<section id="main-content"> -->
                <!-- 			<section class="wrapper"> -->

                <!-- 				<div class="row"> -->

                <!-- 					<div class="col-lg-9 main-chart"> -->

                <!-- <!-- 						????????????????????? -->


                <!-- 					</div> -->
                <!-- <!-- 					/col-lg-9 END SECTION MIDDLE -->

                <!-- 				</div> -->
                <!-- 			</section> -->
                <!-- 		</section> -->

                <!--main content end-->
            </section>
        </body>

        </html>