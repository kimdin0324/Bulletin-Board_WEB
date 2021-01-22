<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "form.FormDAO" %>
<%@ page import = "form.Form" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./assets/img/favicon.png">
  <title>
      HIGHLIGHT
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="./assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="./assets/css/blk-design-system.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="./assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="index-page">
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
    <div class="page-header header-filter">
      <div class="squares square1"></div>
      <div class="squares square2"></div>
      <div class="squares square3"></div>
      <div class="squares square4"></div>
      <div class="squares square5"></div>
      <div class="squares square6"></div>
      <div class="squares square7"></div>
      <div class="container">
        <div class="content-center brand">
          <h1 class="h1-seo">시사과학</h1>
          <h3>신흥고등학교<br>시사과학 동아리<br>하이라이트 전용<br> 웹사이트입니다</h3>
        </div>
      </div>
    </div>
    <div class="main">
     
      <div class="section section-tabs">
        <div class="container">
          <div class="title">
            <h3 class="mb-3">동아리 QnA</h3>
          </div>
          <div class="row">
            <div class="col-md-10 ml-auto col-xl-6 mr-auto">
              <div class="mb-3">
                <small class="text-uppercase font-weight-bold">With text</small>
              </div>
              <!-- Tabs with Background on Card -->
              <div class="card">
                <div class="card-header">
                  <ul class="nav nav-tabs nav-tabs-primary" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" data-toggle="tab" href="#link4" role="tablist">
                        Profile
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-toggle="tab" href="#link5" role="tablist">
                        Settings
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-toggle="tab" href="#link6" role="tablist">
                        Options
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="card-body">
                  <!-- Tab panes -->
                  <div class="tab-content tab-space">
                    <div class="tab-pane active" id="link4">
                      <p> These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.
                        <br/>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures</p>
                    </div>
                    <div class="tab-pane" id="link5">
                      <p> I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. </p>
                    </div>
                    <div class="tab-pane" id="link6">
                      <p>I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. So when you get something that has the name Kanye West on it, it’s supposed to be pushing the furthest possibilities. I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus.</p>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Tabs on plain Card -->
            </div>
            
            <div class="col-md-10 ml-auto col-xl-6 mr-auto">
              <div class="mb-3">
                <small class="text-uppercase font-weight-bold">With text</small>
              </div>
              <!-- Tabs with Background on Card -->
              <div class="card">
                <div class="card-header">
                  <ul class="nav nav-tabs nav-tabs-primary" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" data-toggle="tab" href="#link4" role="tablist">
                        Profile
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-toggle="tab" href="#link5" role="tablist">
                        Settings
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" data-toggle="tab" href="#link6" role="tablist">
                        Options
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="card-body">
                  <!-- Tab panes -->
                  <div class="tab-content tab-space">
                    <div class="tab-pane active" id="link4">
                      <p> These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.
                        <br/>But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures</p>
                    </div>
                    <div class="tab-pane" id="link5">
                      <p> I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. </p>
                    </div>
                    <div class="tab-pane" id="link6">
                      <p>I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at. So when you get something that has the name Kanye West on it, it’s supposed to be pushing the furthest possibilities. I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus.</p>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Tabs on plain Card -->
            </div>
          </div>
        </div>
      </div>
      
       <div class="section">
          <div class="container">
            <div class="row justify-content-between align-items-center">
              <div class="col-lg-5 mb-5 mb-lg-0 ">
                <h1 class="text-white font-weight-light">우리 시사과학은?</h1>
                <p class="text-white mt-4">Black Design comes with three pre-built pages to help you get started faster. You can change the text and images and you're good to go.</p>
                <a href="high.jsp" class="btn btn-warning mt-4">Read more</a>
              </div>
              <div class="col-lg-6">
                <div id="carouselExampleControls" class="carousel slide">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img class="d-block w-100" src="assets/img/denys.jpg" alt="First slide">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
      <!-- 지울수있는 경고창 소스
      <div class="section section-notifications" id="notifications">
        <div class="container">
          <div class="space"></div>
          <h3>Notifications</h3>
          <div class="alert alert-primary alert-with-icon">
            <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
              <i class="tim-icons icon-simple-remove"></i>
            </button>
            <span data-notify="icon" class="tim-icons icon-coins"></span>
            <span>
              <b> Congrats! - </b> This is a regular notification made with ".alert-primary"</span>
          </div>
          <div class="alert alert-info alert-with-icon">
            <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
              <i class="tim-icons icon-simple-remove"></i>
            </button>
            <span data-notify="icon" class="tim-icons icon-trophy"></span>
            <span>
              <b> Heads up! - </b> This is a regular notification made with ".alert-info"</span>
          </div>
          <div class="alert alert-success alert-with-icon">
            <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
              <i class="tim-icons icon-simple-remove"></i>
            </button>
            <span data-notify="icon" class="tim-icons icon-bell-55"></span>
            <span>
              <b> Well done! - </b> This is a regular notification made with ".alert-success"</span>
          </div>
          <div class="alert alert-warning alert-with-icon">
            <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
              <i class="tim-icons icon-simple-remove"></i>
            </button>
            <span data-notify="icon" class="tim-icons icon-bulb-63"></span>
            <span>
              <b> Warning! - </b> This is a regular notification made with ".alert-warning"</span>
          </div>
          <div class="alert alert-danger alert-with-icon">
            <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
              <i class="tim-icons icon-simple-remove"></i>
            </button>
            <span data-notify="icon" class="tim-icons icon-support-17"></span>
            <span>
              <b> Oh snap! - </b> This is a regular notification made with ".alert-danger"</span>
          </div>
        </div>
      </div>
      
      -->
      
      
      
      
      
      
      <!-- 각종 글씨및 글씨 창 소스
      <div class="section section-typo">
        <img src="assets/img/path1.png" class="path">
        <img src="assets/img/path3.png" class="path path1">
        <div class="container">
          <h3 class="title">Typography</h3>
          <div id="typography">
            <div class="row">
              <div class="col-md-12">
                <div class="typography-line">
                  <h1>
                    <span>Header 1</span>The Life of BLK• Design System </h1>
                </div>
                <div class="typography-line">
                  <h2>
                    <span>Header 2</span>The Life of BLK• Design System</h2>
                </div>
                <div class="typography-line">
                  <h3>
                    <span>Header 3</span>The Life of BLK• Design System</h3>
                </div>
                <div class="typography-line">
                  <h4>
                    <span>Header 4</span>The Life of BLK• Design System</h4>
                </div>
                <div class="typography-line">
                  <h5>
                    <span>Header 5</span>The Life of BLK• Design System</h5>
                </div>
                <div class="typography-line">
                  <h6>
                    <span>Header 6</span>The Life of BLK• Design System</h6>
                </div>
                <div class="typography-line">
                  <p>
                    <span>Paragraph</span>
                    I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at.
                  </p>
                </div>
                <div class="typography-line">
                  <span>Quote</span>
                  <blockquote>
                    <p class="blockquote blockquote-primary">
                      "I will be the leader of a company that ends up being worth billions of dollars, because I got the answers. I understand culture. I am the nucleus. I think that’s a responsibility that I have, to push possibilities, to show people, this is the level that things could be at."
                      <br>
                      <br>
                      <small>
                        - Noaa
                      </small>
                    </p>
                  </blockquote>
                </div>
                <div class="typography-line">
                  <span>Muted Text</span>
                  <p class="text-muted">
                    I will be the leader of a company that ends up being worth billions of dollars, because I got the answers...
                  </p>
                </div>
                <div class="typography-line">
                  <span>Primary Text</span>
                  <p class="text-primary">
                    I will be the leader of a company that ends up being worth billions of dollars, because I got the answers...</p>
                </div>
                <div class="typography-line">
                  <span>Info Text</span>
                  <p class="text-info">
                    I will be the leader of a company that ends up being worth billions of dollars, because I got the answers... </p>
                </div>
                <div class="typography-line">
                  <span>Success Text</span>
                  <p class="text-success">
                    I will be the leader of a company that ends up being worth billions of dollars, because I got the answers... </p>
                </div>
                <div class="typography-line">
                  <span>Warning Text</span>
                  <p class="text-warning">
                    I will be the leader of a company that ends up being worth billions of dollars, because I got the answers...
                  </p>
                </div>
                <div class="typography-line">
                  <span>Danger Text</span>
                  <p class="text-danger">
                    I will be the leader of a company that ends up being worth billions of dollars, because I got the answers... </p>
                </div>
                <div class="typography-line">
                  <h2>
                    <span>Small Tag</span>
                    Header with small subtitle
                    <br>
                    <small>Use "small" tag for the headers</small>
                  </h2>
                </div>
              </div>
            </div>
          </div>
          <div class="space-50"></div>
          <div id="images">
            <h3 class="mb-5">Images</h3>
            <div class="row">
              <div class="col-sm-3 col-6">
                <small class="d-block text-uppercase font-weight-bold mb-4">Image</small>
                <img src="assets/img/ryan.jpg" alt="Rounded image" class="img-fluid rounded shadow" style="width: 150px;">
              </div>
              <div class="col-sm-3 col-6">
                <small class="d-block text-uppercase font-weight-bold mb-4">Circle Image</small>
                <img src="assets/img/james.jpg" alt="Circle image" class="img-fluid rounded-circle shadow" style="width: 150px;">
              </div>
              <div class="col-sm-3 col-6 mt-5 mt-sm-0">
                <small class="d-block text-uppercase font-weight-bold mb-4">Raised</small>
                <img src="assets/img/lora.jpg" alt="Raised image" class="img-fluid rounded shadow-lg" style="width: 150px;">
              </div>
              <div class="col-sm-3 col-6 mt-5 mt-sm-0">
                <small class="d-block text-uppercase font-weight-bold mb-4">Circle Raised</small>
                <img src="assets/img/mike.jpg" alt="Raised circle image" class="img-fluid rounded-circle shadow-lg" style="width: 150px;">
              </div>
            </div>
          </div>
        </div>
      </div>
      -->
      
      
      
      <!-- 클릭시 팝업창 소스
      <div class="section section-javascript" id="javascriptComponents">
        <img src="assets/img/path5.png" class="path">
        <img src="assets/img/path5.png" class="path path1">
        <div class="container">
          <h4 class="mb-5">Modal</h4>
          <div class="row" id="modals">
            <div class="col-md-4">
              <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                Launch Modal
              </button>
            </div>
            <div class="col-md-4">
              <button class="btn btn-warning" data-toggle="modal" data-target="#myModal1">
                Launch Modal Mini
              </button>
            </div>
            <div class="col-md-4">
              <button class="btn btn-success" data-toggle="modal" data-target="#myModal2">
                Launch Modal Form
              </button>
            </div>
          </div>
         -->
        </div>
        
      </div>
     
      <div class="section section-signup">
        <div class="container">
          <div class="squares square-1"></div>
          <div class="squares square-2"></div>
          <div class="squares square-3"></div>
          <div class="squares square-4"></div>
          <div class="row row-grid justify-content-between align-items-center">
            <div class="col-lg-6">
              <h3 class="display-3 text-white">Join the HIGHLIGHT
              </h3>
              <p class="text-white mb-3">The Design System comes with four pre-built pages to help you get started faster. You can change the text and images and you're good to go. More importantly, looking at them will give you a picture of what you can built with this powerful Bootstrap 4 Design System.</p>
              <div class="btn-wrapper">
                <a href="examples/register-page.html" class="btn btn-info">동아리 소개</a>
              </div>
            </div>
            <div class="col-lg-6 mb-lg-auto">
              <div class="card card-register">
                <div class="card-header">
                  <img class="card-img" src="assets/img/square1.png" alt="Card image">
                  <h4 class="card-title">Register</h4>
                </div>
                <div class="card-body">
                  <form method="post" action="formAction.jsp">
                    <div class="input-group">
                         <input type="text" class="form-control" placeholder="이름_학번" name="formTitle" maxlength="50">
                    </div>
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="전화번호" name="code" maxlength="50">
                    </div>
                    <div class="input-group">
                         <textarea class="form-control" placeholder="자기소개" name="formContent" maxlength="2048" style="height: 350px;"></textarea>
                    
                  
                </div>
                <div class="card-footer">
                   <input type="submit" class="btn btn-primary form-control" value="동아리 신청">
                </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <h1 class="title">HIGHLIGHT<br>시사과학</h1>
            <div class="btn-wrapper profile">
              <a target="_blank" href="https://github.com/kimdong1304" class="btn btn-icon btn-neutral btn-round btn-simple" data-toggle="tooltip" data-original-title="개발 코드 보기">
                <i class="fab fa-github"></i>
              </a>
              <a target="_blank" href="https://www.instagram.com/kim_dong_h24/?hl=ko" class="btn btn-icon btn-neutral btn-round btn-simple" data-toggle="tooltip" data-original-title="개발자 SNS">
                <i class="fab fa-instagram"></i>
              </a>
            </div>
          </div>
          <div class="col-md-3">
            <ul class="nav">
              <li class="nav-item">
                <a href="./index.html" class="nav-link">
                    > 동아리소개
                </a>
              </li>
              <li class="nav-item">
                <a href="./examples/landing-page.html" class="nav-link">
                    > 게시판
                </a>
              </li>
              <li class="nav-item">
                <a href="./examples/register-page.html" class="nav-link">
                    > 파일공유
                </a>
              </li>
              <li class="nav-item">
                <a href="./examples/profile-page.html" class="nav-link">
                    > 회원관리
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
            <h3 class="title">김동현</h3>
            <p>신흥고 2학년 6반 <br>
                                  시사과학 부장<br>
                                  네뷸라 부장<br><br>
                                 ☏ 010-9357-8201<br>  
                                 ☏ kimdin0324@gmail.com                 
             </p>
            
          </div>
        </div>
      </div>
    </footer>
  </div>
  <!--   Core JS Files   -->
  <script src="./assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="./assets/js/core/bootstrap.min.js" type="text/javascript"></script>
  <script src="./assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
  <script src="./assets/js/plugins/bootstrap-switch.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!-- Chart JS -->
  <script src="./assets/js/plugins/chartjs.min.js"></script>
  <!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
  <script src="./assets/js/plugins/moment.min.js"></script>
  <script src="./assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!-- Black Dashboard DEMO methods, don't include it in your project! -->
  <script src="./assets/demo/demo.js"></script>
  <!-- Control Center for Black UI Kit: parallax effects, scripts for the example pages etc -->
  <script src="./assets/js/blk-design-system.min.js?v=1.0.0" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
      blackKit.initDatePicker();
      blackKit.initSliders();
    });

    function scrollToDownload() {

      if ($('.section-download').length != 0) {
        $("html, body").animate({
          scrollTop: $('.section-download').offset().top
        }, 1000);
      }
    }
  </script>
</body>

</html>