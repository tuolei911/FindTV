<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomList.aspx.cs" Inherits="WebTV.RoomList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Shows</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->

<script src="js/jquery-1.11.1.min.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
 <link href='css/OpenSans.css' rel='stylesheet' type='text/css' />
  <link href='css/PoiretOne.css' rel='stylesheet' type='text/css' />
<!-- //fonts -->
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
</head>
<body>
    <form id="form1" runat="server">
   <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html"><h1><img src="images/logo.png" alt="" /></h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<div class="top-search">
				<div class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="查找...">
					<input type="submit" value=" ">
				</div>
			</div>  
			<div class="header-top-right">
				<%--<div class="file">
					<a href="upload.html">Upload</a>
				</div>--%>	
				<div class="signin">
					<a href="#small-dialog2" class="play-icon popup-with-zoom-anim">注册</a>
					<!-- pop-up-box -->
									<script type="text/javascript" src="js/modernizr.custom.min.js"></script>    
									<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
									<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
									<!--//pop-up-box -->
									<div id="small-dialog2" class="mfp-hide">
										<h3>注册</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">微信登录</a>
											</div>
											<div class="chrome-button">
												<a href="#">微博登录</a>
											</div>
											<div class="button-bottom">
												<p>Already have an account? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form>
												<input type="text" class="email" placeholder="手机号" maxlength="10" pattern="[1-9]{1}\d{9}" title="请填写数字" />
											</form>
											<div class="continue-button">
												<a href="#small-dialog3" class="hvr-shutter-out-horizontal play-icon popup-with-zoom-anim">登录</a>
											</div>
										</div>
										<div class="clearfix"> </div>
									</div>	
									<div id="small-dialog3" class="mfp-hide">
										<h3>注册</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">微信登录</a>
											</div>
											<div class="chrome-button">
												<a href="#">微博登录</a>
											</div>
											<div class="button-bottom">
												<p>Already have an account? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form>
												<input type="text" class="email" placeholder="邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="请填写邮箱地址"/>
												<input type="password" placeholder="密码" required="required" pattern=".{6,}" title="需要6位以上密码" autocomplete="off" />
												<input type="text" class="email" placeholder="手机号" maxlength="10" pattern="[1-9]{1}\d{9}" title="请填写数字" />
												<input type="submit"  value="注册"/>
											</form>
										</div>
										<div class="clearfix"> </div>
									</div>	
									<div id="small-dialog7" class="mfp-hide">
										<h3>Create Account</h3> 
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">微信登录</a>
											</div>
											<div class="chrome-button">
												<a href="#">微博登录</a>
											</div>
											<div class="button-bottom">
												<p>Already have an account? <a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a></p>
											</div>
										</div>
										<div class="signup">
											<form action="upload.html">
												<input type="text" class="email" placeholder="邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="请填写邮箱地址"/>
												<input type="password" placeholder="密码" required="required" pattern=".{6,}" title="Minimum 6 characters required" autocomplete="off" />
												<input type="submit"  value="登录"/>
											</form>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div id="small-dialog8" class="mfp-hide">
										<h3>Subscribe to our newsletters</h3> 
										<div class="signup subscribe-grid">
											<form>
												<input type="text" class="email" placeholder="邮箱地址" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="请填写邮箱地址"/>
												<input type="submit"  value="Subscribe"/>
											</form>
										</div>
									</div>
									<div id="small-dialog4" class="mfp-hide">
										<h3>Feedback</h3> 
										<div class="feedback-grids">
											<div class="feedback-grid">
												<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											</div>
											<div class="button-bottom">
												<p><a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign in</a> to get started.</p>
											</div>
										</div>
									</div>
									<div id="small-dialog5" class="mfp-hide">
										<h3>Help</h3> 
											<div class="help-grid">
												<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											</div>
											<div class="help-grids">
												<div class="help-button-bottom">
													<p><a href="#small-dialog4" class="play-icon popup-with-zoom-anim">Feedback</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Lorem ipsum dolor sit amet</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Nunc vitae rutrum enim</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris at volutpat leo</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Mauris vehicula rutrum velit</a></p>
												</div>
												<div class="help-button-bottom">
													<p><a href="#small-dialog6" class="play-icon popup-with-zoom-anim">Aliquam eget ante non orci fac</a></p>
												</div>
											</div>
									</div>
									<div id="small-dialog6" class="mfp-hide">
										<div class="video-information-text">
											<h4>Video information & settings</h4>
											<p>Suspendisse tristique magna ut urna pellentesque, ut egestas velit faucibus. Nullam mattis lectus ullamcorper dui dignissim, sit amet egestas orci ullamcorper.</p>
											<ol>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
												<li>Nunc vitae rutrum enim. Mauris at volutpat leo. Vivamus dapibus mi ut elit fermentum tincidunt.</li>
											</ol>
										</div>
									</div>
									<script>
											$(document).ready(function() {
											$('.popup-with-zoom-anim').magnificPopup({
												type: 'inline',
												fixedContentPos: false,
												fixedBgPos: true,
												overflowY: 'auto',
												closeBtnInside: true,
												preloader: false,
												midClick: true,
												removalDelay: 300,
												mainClass: 'my-mfp-zoom-in'
											});
																											
											});
									</script>	
				</div>
				<div class="signin">
					<a href="#small-dialog" class="play-icon popup-with-zoom-anim">登录</a>
					<div id="small-dialog" class="mfp-hide">
						<h3>登录</h3>
						<div class="social-sits">
							<div class="facebook-button">
								<a href="#">Connect with Facebook</a>
							</div>
							<div class="chrome-button">
								<a href="#">Connect with Google</a>
							</div>
							<div class="button-bottom">
								<p>New account? <a href="#small-dialog2" class="play-icon popup-with-zoom-anim">登录</a></p>
							</div>
						</div>
						<div class="signup">
							<form>
								<input type="text" class="email" placeholder="邮箱地址/手机号" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?"/>
								<input type="password" placeholder="密码" required="required" pattern=".{6,}" title="Minimum 6 characters required" autocomplete="off" />
								<input type="submit"  value="登录"/>
							</form>
							<div class="forgot">
								<a href="#">Forgot password ?</a>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
        </div>
		<div class="clearfix"> </div>
      </div>
    </nav>
		<div class="col-sm-3 col-md-2 sidebar">
			<div class="top-navigation">
				<div class="t-menu">导航</div>
				<div class="t-img">
					<img src="images/lines.png" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
				<div class="drop-navigation drop-navigation" >
				  <ul class="nav nav-sidebar">
					<li class="active"><a href="index.aspx" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
					<li ><a href="RoomList.aspx?tpye=直播" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>直播</a></li>
					<li><a href="#" class="menu1"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>游戏<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-2">
							<li><a href="RoomList.aspx?tpye=Dota">Dota</a></li>                                             
							<li><a href="RoomList.aspx?tpye=英雄联盟">英雄联盟</a></li>
							<li><a href="RoomList.aspx?tpye=星际2">星际2</a></li> 
						</ul>
						<!-- script-for-menu -->
						<script>
							$( "li a.menu1" ).click(function() {
							$( "ul.cl-effect-2" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<li><a href="#" class="menu"><span class="glyphicon glyphicon-film glyphicon-king" aria-hidden="true"></span>体育<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
						<ul class="cl-effect-1">
							<li><a href="RoomList.aspx?tpye=足球">足球</a></li>                                             
							<li><a href="RoomList.aspx?tpye=NBA">NBA</a></li>
							<li><a href="RoomList.aspx?tpye=摔跤">摔跤</a></li> 
							<li><a href="RoomList.aspx?tpye=NFL">NFL</a></li>  
						</ul>
						<!-- script-for-menu -->
						<script>
							$( "li a.menu" ).click(function() {
							$( "ul.cl-effect-1" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<li><a href="RoomList.aspx?tpye=音乐" class="song-icon"><span class="glyphicon glyphicon-music" aria-hidden="true"></span>音乐</a></li>
					<li><a href="RoomList.aspx?tpye=消息" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>消息</a></li>
				  </ul>
				  <!-- script-for-menu -->
						<script>
							$( ".top-navigation" ).click(function() {
							$( ".drop-navigation" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
						</script>
					<div class="side-bottom">
						<div class="side-bottom-icons">
							<ul class="nav2">
								<li><a href="#" class="facebook"> </a></li>
								<li><a href="#" class="facebook twitter"> </a></li>
								<li><a href="#" class="facebook chrome"> </a></li>
								<li><a href="#" class="facebook dribbble"> </a></li>
							</ul>
						</div>
                        <div class="copyright">
						
                            </div>
					</div>
				</div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="show-top-grids">
				<div class="col-sm-10 show-grid-left main-grids">
					<div class="recommended">
						<div class="recommended-grids english-grid">
							<div class="recommended-info">
								<div class="heading">
									<h3>热门</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">订阅</a>
								</div>
								<div class="clearfix"> </div>
							</div>
                            <!-- -->
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>7:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">1,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>9:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">4,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg3.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:04</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg4.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>2:06</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,114 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>4:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,114 views</p>
								</div>
							</div>

							<div class="clearfix"> </div>
						</div>


                        	<div class="recommended-grids english-grid">
						
                            <!-- -->
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>7:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">1,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>9:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">4,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg3.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:04</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg4.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>2:06</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,114 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="Room.aspx"><img src="images/eg2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>4:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="Room.aspx" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,114 views</p>
								</div>
							</div>

							<div class="clearfix"> </div>
						</div>
					</div>
					
				</div>
		
				<div class="clearfix"> </div>
			</div>
			<!-- footer -->
			<div class="footer">
				<div class="footer-grids">
					<div class="footer-top">
					
						<div class="footer-bottom-nav">
							<ul>
								<li><a href="about.html">关于我们</a></li>
								<li><a href="press.html">联系我们</a></li>
								<li><a href="developers.html">商务合作</a></li>
							</ul>
						</div>
					</div>
				
				</div>
			</div>
			<!-- //footer -->
		</div>
		<div class="clearfix"> </div>
	<div class="drop-menu">
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
		  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Regular link</a></li>
		  <li role="presentation" class="disabled"><a role="menuitem" tabindex="-1" href="#">Disabled link</a></li>
		  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another link</a></li>
		</ul>
	</div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    </form>
</body>
</html>
