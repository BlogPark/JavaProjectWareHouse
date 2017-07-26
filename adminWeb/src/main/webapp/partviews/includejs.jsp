<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- basic scripts -->

	<!--[if !IE]> -->
	<script src="${pageContext.request.contextPath }/js/jquery-2.1.4.min.js"></script>

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
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="${pageContext.request.contextPath }/js/excanvas.min.js"></script>
		<![endif]-->
	<script src="${pageContext.request.contextPath }/js/jquery-ui.custom.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.ui.touch-punch.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.easypiechart.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.sparkline.index.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.flot.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.flot.pie.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.flot.resize.min.js"></script>

	<!-- ace scripts -->
	<script src="${pageContext.request.contextPath }/js/ace-elements.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/ace.min.js"></script>

<!--<script src="${pageContext.request.contextPath }/js/ace.js"></script>-->