<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Error Page - Ace Admin</title>

<meta name="description" content="500 Error Page" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<jsp:include page="/partviews/includecss.jsp"></jsp:include>
</head>

<body class="no-skin">
	<div class="main-container ace-save-state" id="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="error-container">
						<div class="well">
							<h1 class="grey lighter smaller">
								<span class="blue bigger-125"> <i
									class="ace-icon fa fa-random"></i> Error
								</span> Something Went Wrong
							</h1>

							<hr />
							<h3 class="lighter smaller">
								But we are working <i
									class="ace-icon fa fa-wrench icon-animated-wrench bigger-125"></i>
								on it!
							</h3>
							<div class="space"></div>

							<div>
								<h4 class="lighter smaller">Meanwhile, try one of the
									following:</h4>

								<ul class="list-unstyled spaced inline bigger-110 margin-15">
									<li><i class="ace-icon fa fa-hand-o-right blue"></i> Read
										the faq</li>

									<li><i class="ace-icon fa fa-hand-o-right blue"></i> Give
										us more info on how this specific error occurred!</li>
								</ul>
							</div>

							<hr />
							<div class="space"></div>

							<div class="center">
								<a href="javascript:history.back()" class="btn btn-grey"> <i
									class="ace-icon fa fa-refresh"></i> 重 试
								</a> <a href="#" class="btn btn-primary"> <i
									class="ace-icon fa fa-tachometer"></i> 回首页
								</a>
							</div>
						</div>
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
	<script src="assets/js/jquery-2.1.4.min.js"></script>
	<!-- <![endif]-->
	<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<!-- inline scripts related to this page -->
</body>
</html>