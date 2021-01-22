<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <title>
      HIGHLIGHT
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="../assets/css/blk-design-system.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="landing-page">
 <% 
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String)session.getAttribute("userID");
		}
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg fixed-top navbar-transparent " color-on-scroll="100">
    <div class="container">
      <div class="navbar-translate">
        <a class="navbar-brand" href="index.jsp" rel="tooltip" title="Developed by 김동현 " data-placement="bottom" target="_blank">
          <span>SHINHEUNG</span> HIGHLIGHT
        </a>
        <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-bar bar1"></span>
          <span class="navbar-toggler-bar bar2"></span>
          <span class="navbar-toggler-bar bar3"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse justify-content-end" id="navigation">
        <div class="navbar-collapse-header">
          <div class="row">
            <div class="col-6 collapse-brand">
              <a>
                HIGHLIGHT
              </a>
            </div>
            <div class="col-6 collapse-close text-right">
              <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                <i class="tim-icons icon-simple-remove"></i>
              </button>
            </div>
          </div>
        </div>
        <ul class="navbar-nav">
          <li class="nav-item p-0">
            <a class="nav-link" rel="tooltip" title="개발 코드 보기" data-placement="bottom" href="https://github.com/kimdong1304" target="_blank">
              <i class="fab fa-github"></i>
              <p class="d-lg-none d-xl-none">Github</p>
            </a>
          </li>
          <li class="nav-item p-0">
            <a class="nav-link" rel="tooltip" title="개발자 SNS" data-placement="bottom" href="https://www.instagram.com/kim_dong_h24/?hl=ko" target="_blank">
              <i class="fab fa-instagram"></i>
              <p class="d-lg-none d-xl-none">Instagram</p>
            </a>
          </li>
          <li class="dropdown nav-item">
            <a href="form.jsp"class="nav-link" >
              <i class="fa fa-cogs d-lg-none d-xl-none"></i> Join
            </a>
          </li>
          <li class="dropdown nav-item">
            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
              <i class="fa fa-cogs d-lg-none d-xl-none"></i> Menu
            </a>
            <div class="dropdown-menu dropdown-with-icons">
              <a href="high.jsp" class="dropdown-item">
                <i class="tim-icons icon-paper"></i> 동아리 소개
              </a>
              <a href="bbs.jsp" class="dropdown-item">
                <i class="tim-icons icon-bullet-list-67"></i>게시판
              </a>
              <a href="jsj.jsp" class="dropdown-item">
                <i class="tim-icons icon-image-02"></i>파일공유
              </a>
            </div>
          </li>
          
          
            <%
				if(userID == null) {
			%>
			
          <li class="dropdown nav-item">
            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
              <i class="fa fa-cogs d-lg-none d-xl-none"></i> Connect
            </a>
            <div class="dropdown-menu dropdown-with-icons">
              <a href="login.jsp" class="dropdown-item">
                <i class="tim-icons icon-single-02"></i>로그인
              </a>
             <a href="join.jsp" class="dropdown-item">
                <i class="tim-icons icon-single-02"></i>회원가입
              </a>
            </div>
          </li>
            <%
				} else {
			%>
             <li class="dropdown nav-item">
            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
              <i class="fa fa-cogs d-lg-none d-xl-none"></i> Connect
            </a>
            <div class="dropdown-menu dropdown-with-icons">
              <a href="login.jsp" class="dropdown-item">
                <i class="tim-icons icon-single-02"></i>회원관리
              </a>
             <a href="logoutAction.jsp" class="dropdown-item">
                <i class="tim-icons icon-single-02"></i>로그아웃
              </a>
            </div>
          </li>
            <%
				}
			%>
        </ul>		
      </div>
    </div>
  </nav>
  <!-- End Navbar -->
  <div class="wrapper">
    <div class="page-header">
      <img src="../assets/img/blob.png" class="path">
      <img src="../assets/img/path2.png" class="path2">
      <img src="../assets/img/triunghiuri.png" class="shapes triangle">
      <img src="../assets/img/waves.png" class="shapes wave">
      <img src="../assets/img/patrat.png" class="shapes squares">
      <img src="../assets/img/cercuri.png" class="shapes circle">
      <div class="content-center">
        <div class="row row-grid justify-content-between align-items-center text-left">
          <div class="col-lg-6 col-md-6">
            <h1 class="text-white">What is a HIGHLIGHT?
              <br/>
              <span class="text-white">  </span>
            </h1>                     
            <p class="text-white mb-3"> 
                                        신흥고등학교 하이라이트는 교내 유일한 시사과학 동아리이며<br>
                                        우리 삶 속의 과학을 시사적으로 표현하는 동아리로, 실험뿐만 <br>
                                        아니라  기사작성,포스터제작등 다양한 활동을 기반으로<br>
                                        문이과를 떠나서 모두가 가입해 유익하게 활동할수있는<br>
                                        신흥고의 핵심 동아리입니다</p>
            <div class="btn-wrapper mb-3">
              <a href="form.jsp"><p href="form.jsp" class="category text-success d-inline">신청하러 가기</p></a>
              <a href="form.jsp" class="btn btn-success btn-link btn-sm"><i class="tim-icons icon-minimal-right"></i></a>
            </div>
          </div>
          <div class="col-lg-4 col-md-5">
            <img src="../assets/img/etherum.png" alt="Circle image" class="img-fluid">
          </div>
        </div>
      </div>
    </div>
    <section class="section section-lg">
      <section class="section">
        <img src="../assets/img/path4.png" class="path">
        <div class="container">
          <div class="row row-grid justify-content-between">
            <div class="col-md-5 mt-lg-5">
              <div class="row">
                <div class="col-lg-6 col-sm-12 px-2 py-2">
                  <div class="card card-stats ">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-5 col-md-4">
                          <div class="icon-big text-center icon-warning">
                            <i class="tim-icons icon-atom text-warning"></i>
                          </div>
                        </div>
                        <div class="col-7 col-md-8">
                          <div class="numbers">
                            <p class="card-title">Science
                              <p>
                                <p class="card-category">순수 과학 연구</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 col-sm-12 px-2 py-2">
                  <div class="card card-stats upper bg-default">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-5 col-md-4">
                          <div class="icon-big text-center icon-warning">
                            <i class="tim-icons icon-bank text-white"></i>
                          </div>
                        </div>
                        <div class="col-7 col-md-8">
                          <div class="numbers">
                            <p class="card-title">History
                              <p>
                                <p class="card-category">역사속 과학</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6 col-sm-12 px-2 py-2">
                  <div class="card card-stats ">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-5 col-md-4">
                          <div class="icon-big text-center icon-warning">
                            <i class="tim-icons icon-user-run text-info"></i>
                          </div>
                        </div>
                        <div class="col-7 col-md-8">
                          <div class="numbers">
                            <p class="card-title">Sports
                              <p>
                                <p class="card-category">운동속 과학</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6 col-sm-12 px-2 py-2">
                  <div class="card card-stats ">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-5 col-md-4">
                          <div class="icon-big text-center icon-warning">
                            <i class="tim-icons icon-chat-33 text-success"></i>
                          </div>
                        </div>
                        <div class="col-7 col-md-8">
                          <div class="numbers">
                            <p class="card-title">Debate
                              <p>
                                <p class="card-category">토론활동</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="pl-md-5">
                <h1>Lots of Activities</h1>
                <p>시사과학은 삶에서 볼수있는 각종분야는 물론 우리가 쉽게 접하지못한<br>
                                           순수과학분야까지 다양한 과학적 시각으로 시사하는 동아리로써<br>
                                           다양한 활동을 진행하고 있으며 누구나 프로젝트를 제안하고 <br>
                                           진행할수있는 자유로운 분위기의 동아리입니다.</p>
                <br/>
                <p>이과는 물론 문과인 학생들도 자신의 장래희망에 맞춰 기사를 작성하고 <br>
                                           잡지를 발간할수있으며 다양한 프로젝트를 직접 기획하고 진행하면서<br>
                                           자신의 진로에 대해 탐색하는 동시에 풍족한 생기부를 동시에 챙길수 있습니다!</p>
                <br/>
                <a href="form.jsp" class="font-weight-bold text-info mt-5">신청하러 가기 <i class="tim-icons icon-minimal-right text-info"></i></a>
              </div> 
            </div>
          </div>
        </div>
      </section>
    </section>
    <section class="section section-lg">
      <img src="../assets/img/path4.png" class="path">
      <img src="../assets/img/path5.png" class="path2">
      <img src="../assets/img/path2.png" class="path3">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-12">
            <h1 class="text-center">하이라이트만의 특별활동!</h1>
            <div class="row row-grid justify-content-center">
              <div class="col-lg-3">
                <div class="info">
                  <div class="icon icon-primary">
                    <i class="tim-icons icon-wallet-43"></i>
                  </div>
                  <h4 class="info-title">타학교 연합활동</h4>
                  <hr class="line-primary">
                  <p>우리학교 인근에 있는 청주여자고등학교<br>
                                               과학동아리와 연합해 활동함으로써 더욱 <br>
                                               다양한 활동은 물론 교내 동아리에서 <br>
                                               익숙한 사람들과 하는 활동보다 훨씬<br>
                                               새로운 경험을 할 수 있습니다. </p>
                </div>
              </div>
              <div class="col-lg-3">
                <div class="info">
                  <div class="icon icon-warning">
                    <i class="tim-icons icon-chart-pie-36"></i>
                  </div>
                  <h4 class="info-title">정기 토론및 발표회</h4>
                  <hr class="line-warning">
                  <p>정기적으로 특정주제를 정해 다양한 <br>
                                               방식으로 토론을 하면서 논리력과 <br>
                                               논설력을 향상시킬수 있으며 자신의 <br>
                                               주제에 대한 프로젝트 진행결과를 <br>
                                               발표하는 등의 활동을 하며 풍성한 <br>
                                               고등학교 생활을 할수있습니다.</p>
                </div>
              </div>
              <div class="col-lg-3">
                <div class="info">
                  <div class="icon icon-success">
                    <i class="tim-icons icon-components"></i>
                  </div>
                  <h4 class="info-title">산출물 전시</h4>
                  <hr class="line-success">
                  <p>동아리 활동으로 제작된 산출물을 교내 <br>
                                                축제에서 전시하고 다양한 활동을 기획<br>
                                                및 진행하면서 교내활동에 집중하면서 <br>
                                                가능하다면 외부 전시회에 참가해 활동<br>
                                                결과물을 공유할 수 있을것입니다.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="section section-lg section-safe">
      <img src="../assets/img/path5.png" class="path">
      <div class="container">
        <div class="row row-grid justify-content-between">
          <div class="col-md-5">
            <img src="../assets/img/chester-wade.jpg" class="img-fluid floating">
            <div class="card card-stats bg-danger">
              <div class="card-body">
                <div class="justify-content-center">
                  <div class="numbers">
                    <p class="card-title">인원</p>
                    <p class="card-category text-white">20명 (1-2학년)</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="card card-stats bg-info">
              <div class="card-body">
                <div class="justify-content-center">
                  <div class="numbers">
                    <p class="card-title">문의</p>
                    <p class="card-category text-white">김동현 (개발정보 참고)</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="card card-stats bg-default">
              <div class="card-body">
                <div class="justify-content-center">
                  <div class="numbers">
                    <p class="card-title">일정</p>
                    <p class="card-category text-white">추후공지</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="px-md-5">
              <hr class="line-success">
              <h3>2020 하이라이트 부원모집!</h3>
              <p>2020년도 부원모집은 온라인으로 제출된 서류를 바탕으로<br>
                 1차 서류평가를 진행해 적합성을 판단 후<br>
                 2차 대면면접을 거쳐 진행됩니다</p>
              <ul class="list-unstyled mt-5">
                <li class="py-2">
                  <div class="d-flex align-items-center">
                    <div class="icon icon-success mb-2">
                      <i class="tim-icons icon-vector"></i>
                    </div>
                    <div class="ml-3">
                      <h6>동아리에 적합한 목적성과 목표</h6>
                    </div>
                  </div>
                </li>
                <li class="py-2">
                  <div class="d-flex align-items-center">
                    <div class="icon icon-success mb-2">
                      <i class="tim-icons icon-tap-02"></i>
                    </div>
                    <div class="ml-3">
                      <h6>활동에 필요한 기본지식</h6>
                    </div>
                  </div>
                </li>
                <li class="py-2">
                  <div class="d-flex align-items-center">
                    <div class="icon icon-success mb-2">
                      <i class="tim-icons icon-single-02"></i>
                    </div>
                    <div class="ml-3">
                      <h6>인성과 책임감 및 자신감</h6>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
   
    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <h1 class="title">BLK•</h1>
          </div>
          <div class="col-md-3">
            <ul class="nav">
              <li class="nav-item">
                <a href="../index.html" class="nav-link">
                  Home
                </a>
              </li>
              <li class="nav-item">
                <a href="../examples/landing-page.html" class="nav-link">
                  Landing
                </a>
              </li>
              <li class="nav-item">
                <a href="../examples/register-page.html" class="nav-link">
                  Register
                </a>
              </li>
              <li class="nav-item">
                <a href="../examples/profile-page.html" class="nav-link">
                  Profile
                </a>
              </li>
            </ul>
          </div>
          <div class="col-md-3">
            <ul class="nav">
              <li class="nav-item">
                <a href="https://creative-tim.com/contact-us" class="nav-link">
                  Contact Us
                </a>
              </li>
              <li class="nav-item">
                <a href="https://creative-tim.com/about-us" class="nav-link">
                  About Us
                </a>
              </li>
              <li class="nav-item">
                <a href="https://creative-tim.com/blog" class="nav-link">
                  Blog
                </a>
              </li>
              <li class="nav-item">
                <a href="https://opensource.org/licenses/MIT" class="nav-link">
                  License
                </a>
              </li>
            </ul>
          </div>
          <div class="col-md-3">
            <h3 class="title">Follow us:</h3>
            <div class="btn-wrapper profile">
              <a target="_blank" href="https://twitter.com/creativetim" class="btn btn-icon btn-neutral btn-round btn-simple" data-toggle="tooltip" data-original-title="Follow us">
                <i class="fab fa-twitter"></i>
              </a>
              <a target="_blank" href="https://www.facebook.com/creativetim" class="btn btn-icon btn-neutral btn-round btn-simple" data-toggle="tooltip" data-original-title="Like us">
                <i class="fab fa-facebook-square"></i>
              </a>
              <a target="_blank" href="https://dribbble.com/creativetim" class="btn btn-icon btn-neutral  btn-round btn-simple" data-toggle="tooltip" data-original-title="Follow us">
                <i class="fab fa-dribbble"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
  <script src="../assets/js/plugins/bootstrap-switch.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="../assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
  <script src="../assets/js/plugins/moment.min.js"></script>
  <script src="../assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!-- Black Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <!-- Control Center for Black UI Kit: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/blk-design-system.min.js?v=1.0.0" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
      demo.initLandingPageChart();
    });
  </script>
</body>

</html>