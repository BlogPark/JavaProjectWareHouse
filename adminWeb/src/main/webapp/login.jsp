<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page - Ace Admin</title>

<meta name="description" content="User login page" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/font-awesome/4.5.0/css/font-awesome.min.css" />

<!-- text fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/ace.css" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="${pageContext.request.contextPath }/css/ace-part2.min.css" />
		<![endif]-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/ace-rtl.min.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/ace-ie.min.css" />
		<![endif]-->

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="${pageContext.request.contextPath }/js/html5shiv.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/respond.min.js"></script>
		<![endif]-->
</head>
<body class="login-layout light-login">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="ace-icon fa fa-leaf green"></i> <span class="red">东航</span>
								<span class="grey" id="id-text2">管理平台</span>
							</h1>
							<h4 class="blue" id="id-company-text">&copy; 三赢伟业</h4>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<!-- login start -->
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h2 class="header blue lighter bigger">
											<i class="ace-icon fa fa-coffee green"></i> 平台登录
										</h2>
										<div class="space-6"></div>
										<form method="post" action="${pageContext.request.contextPath }/userlogin">
											<fieldset>
												<p>用户名</p>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="用户名"
														id="username" name="username" /> <i
														class="ace-icon fa fa-user"></i>
												</span>
												</label>
												<p>密&nbsp;&nbsp;码</p>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="用户密码"
														id="password" name="password" /> <i
														class="ace-icon fa fa-lock"></i>
												</span>
												</label>
												<h4 class="errstr center"></h4>
												<div class="space"></div>
												<input type="hidden" value=""
													id="model_ReturnUrl" name="">
												<div class="clearfix">
													<button type="submit"
														class="width-35 pull-right btn btn-sm btn-primary">
														<i class="ace-icon fa fa-key"></i> <span
															class="bigger-110">登&nbsp;&nbsp;录</span>
													</button>
												</div>
												<div class="space-4"></div>
											</fieldset>
										</form>
									</div>
									<!-- /.widget-main -->
									<div class="toolbar clearfix">
										<div>
											<a href="#" data-target="#forgot-box"
												class="forgot-password-link"> <i
												class="ace-icon fa fa-arrow-left"></i> 忘记密码？点此重置
											</a>
										</div>

										<div>
											<a href="#" data-target="#signup-box"
												class="user-signup-link"> 点此去注册账户 <i
												class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>
									</div>
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.login-box -->
							<!-- login end -->
							<!-- Retrieve Password begin -->
							<div id="forgot-box" class="forgot-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h2 class="header red lighter bigger">
											<i class="ace-icon fa fa-key"></i> 重置密码
										</h2>

										<div class="space-6"></div>
										<p>输入邮箱地址</p>
										<form method="post" action="/home/resetpwd">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="email" class="form-control" placeholder="邮箱地址"
														id="useremail" name="useremail" /> <i
														class="ace-icon fa fa-envelope"></i>
												</span>
												</label>
												<div class="clearfix center clearfix20">
													<button type="button"
														class="width-35  btn btn-sm btn-danger">
														<i class="ace-icon fa fa-lightbulb-o"></i> <span
															class="bigger-110">重&nbsp;&nbsp;置</span>
													</button>
												</div>
											</fieldset>
										</form>
									</div>
									<!-- /.widget-main -->

									<div class="toolbar center">
										<a href="#" data-target="#login-box"
											class="back-to-login-link"> 退出去登录 <i
											class="ace-icon fa fa-arrow-right"></i>
										</a>
									</div>
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.forgot-box -->
							<!-- Retrieve Password end -->
							<!-- Registration begin -->
							<div id="signup-box" class="signup-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h2 class="header green lighter bigger">
											<i class="ace-icon fa fa-users blue"></i> 用户注册
										</h2>

										<div class="space-6"></div>
										<form method="post" action="/home/reigernewuser">
											<fieldset>
												<p>登&nbsp;录&nbsp;名:</p>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="登录名"
														id="register_LoginName" name="register.LoginName" /> <i
														class="ace-icon fa fa-user"></i>
												</span>
												</label>
												<p>邮&nbsp;&nbsp;箱:</p>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="email" class="form-control" placeholder="邮箱地址"
														id="register_UserEmail" name="register.UserEmail" /> <i
														class="ace-icon fa fa-envelope"></i>
												</span>
												</label>
												<p>真实姓名:</p>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="真实姓名"
														id="register_TruethName" name="register.TruethName" /> <i
														class="ace-icon fa fa-user"></i>
												</span>
												</label>
												<p>登录密码:</p>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="设置密码"
														id="register_UserPwd" name="register.UserPwd" /> <i
														class="ace-icon fa fa-lock"></i>
												</span>
												</label>
												<p>联系方式:</p>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="联系方式"
														id="register_UserPhone" name="register.UserPhone" /> <i
														class="ace-icon fa fa-phone-square"></i>
												</span>
												</label>
												<p>密保问题:</p>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="密保问题"
														id="register_Question" name="register.Question" /> <i
														class="ace-icon fa fa-question-circle"></i>
												</span>
												</label>
												<p>密保答案:</p>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="密保答案"
														id="register_Answer" name="register.Answer" /> <i
														class="ace-icon fa fa-unlock"></i>
												</span>
												</label> <label class="block"> <input type="checkbox"
													class="ace" /> <span class="lbl"> 我已阅读并接受 <a
														href="#my-modal" role="button" data-toggle="modal">《用户操作和许可协议》</a>
												</span>
												</label>
												<div class="space-24"></div>
												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm">
														<i class="ace-icon fa fa-refresh"></i> <span
															class="bigger-110">Reset</span>
													</button>
													<button type="button"
														class="width-65 pull-right btn btn-sm btn-success">
														<span class="bigger-110">注册账户</span> <i
															class="ace-icon fa fa-arrow-right icon-on-right"></i>
													</button>
												</div>
											</fieldset>
										</form>
									</div>

									<div class="toolbar center">
										<a href="#" data-target="#login-box"
											class="back-to-login-link"> <i
											class="ace-icon fa fa-arrow-left"></i> 退出去登录
										</a>
									</div>
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.signup-box -->
							<!-- Registration end -->
						</div>
						<!-- /.position-relative -->
						<!-- 用户协议 开始 -->
						<div id="my-modal" class="modal fade" tabindex="-1">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h3 class="smaller lighter blue no-margin">用户协议</h3>
									</div>
									<div class="modal-body">
										Some content <br /> Some content <br /> Some content <br />
										Some content <br /> Some content <br /> Some content <br />
										Some content <br /> Some content <br /> Some content <br />
										Some content <br /> Some content
									</div>
									<div class="modal-footer">
										<button class="btn btn-sm btn-danger pull-right"
											data-dismiss="modal">
											<i class="ace-icon fa fa-times"></i> Close
										</button>
									</div>
								</div>
								<!-- /.modal-content -->
							</div>
							<!-- /.modal-dialog -->
						</div>
						<!-- 用户协议 结束 -->						
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.main-content -->
	</div>
	<!-- /.main-container -->
	<!-- basic scripts -->
	<!--[if !IE]> -->
	<script
		src="${pageContext.request.contextPath }/js/jquery-2.1.4.min.js"></script>
	<!-- <![endif]-->

	<!--[if IE]>
<script src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='${pageContext.request.contextPath }/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			$(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			});
		});
	</script>
</body>
</html>
