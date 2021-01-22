<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter"%>    
<%@ page import = "bbs.BbsDAO" %>
<%@ page import = "bbs.Bbs" %>

<%@ page import = "user.User"%>
<%@ page import = "user.UserDAO"%>

<%@ page import = "com.ComDAO" %>
<%@ page import = "com.Com" %>

<%@ page import = "java.util.ArrayList" %>
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

<body class="profile-page">
 <% 
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String)session.getAttribute("userID");
		}
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
		

		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
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
			
			<script>
		          location.href = "need_login.jsp";
	        </script>
	        
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
            
        </ul>	
        
      </div>
    </div>
  </nav>
  <!-- End Navbar -->
  <div class="wrapper">
    <div class="container">
    <img src="../assets/img/dots.png" class="dots">
      <img src="../assets/img/path4.png" class="path">
      <div class="container align-items-center">
        <div class="row">
          <div class="col-md-5">
            <h1 class="profile-title text-left">View written articles</h1>
            <h5 class="text-on-back">view</h5>
          </div>
          
          <div class="col-lg-12 col-md-12 ml-auto mr-auto">
            <div class="card card-coin card-plain">
              <div class="card-body">
                
                <div class="tab-content tab-subcategories">
                  <div class="tab-pane active" id="linka">
                    <div class="table-responsive">
                      <table class="table tablesorter " id="plain-table">
                        <thead>
					<tr>
						<th colspan="3" style=" text-align: center;">게시판 글 보기</th>
					</tr>
				</thead>
                        <tbody>
                        <tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%=bbs.getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll("\n","<br>")%></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%=bbs.getUserID()  %></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시 " + bbs.getBbsDate().substring(14, 16) + "분 " %></td>
					</tr>
					<tr>
						<td  valign=top>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%=bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll("\n","<br>") %></td>
					</tr>
                          
                        </tbody>
                      </table>
                      <!-- 페이지 넘기기 -->
				<a href="bbs.jsp" class="btn btn-primary">목록</a>
			<%
				if(userID != null && userID.equals(bbs.getUserID())) {
			%>
				<a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">수정</a>
				<a onclick="return confirm('정말 삭제하시겠습니까?')" href="deleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">삭제</a>
			<%
				}
			%>	
                      
                      
       <%
		   }
		%>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    
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
</body>

</html>