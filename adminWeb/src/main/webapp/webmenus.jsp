<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统菜单管理--管理系统</title>
<jsp:include page="/partviews/includecss.jsp"></jsp:include>

</head>
<body class="no-skin">
	<div id="navbar" class="navbar navbar-default ace-save-state">
		<jsp:include page="/part/top"></jsp:include>
		<!--<jsp:include page="/index2"></jsp:include>-->
	</div>

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>

		<div id="sidebar" class="sidebar  responsive ace-save-state">
			<jsp:include page="/part/menu">
				<jsp:param value="usergroup" name="viewname" />
			</jsp:include>
		</div>
		<!-- 页面主体 -->
		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">首页</a>
						</li>
						<li><a href="#">系统设置</a></li>
						<li class="active">系统菜单管理</li>
					</ul>
					<!-- /.breadcrumb -->

					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="Search ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" /> <i
								class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div>
					<!-- /.nav-search -->
				</div>

				<div class="page-content">
					<div class="page-header">
						<h1>
							系统菜单管理 <small> <i
								class="ace-icon fa fa-angle-double-right"></i> 设置或修改系统操作菜单
							</small> <input type="text" id="ids" />
						</h1>
					</div>
					<!-- /.page-header -->
					<div class="row">
						<div class="col-xs-12">
							<!-- 查询条件区 -->
							<div class="row">
								<div class="col-xs-12">
									<div class="clearfix">
										<div class="pull-left  tableTools-container">
											<div class="dt-buttons btn-overlap btn-group">
												<a
													class="dt-button buttons-collection buttons-colvis btn btn-white btn-primary btn-bold "
													data-toggle="modal" href="#modal-addform"
													onclick="settype(1)"> <span> <i
														class="fa fa-plus bigger-110 blue"></i> <span>添加新菜单</span>
												</span>
												</a> <a
													class="dt-button buttons-collection buttons-colvis btn btn-white btn-primary btn-bold "
													onclick="del()"> <span> <i
														class="fa fa-trash-o bigger-110 red"></i> <span>批量禁用</span>
												</span>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 查询条件区 -->
							<!-- 主内容区1 -->
							<div class="row">
								<div class="col-xs-12">
									<table id="grouptable"
										class="table  table-bordered table-hover">
										<thead>
											<tr>
												<th class="center"><label class="pos-rel"> <input
														type="checkbox" class="ace" /> <span class="lbl"></span>
												</label></th>
												<th>编号</th>
												<th>菜单名称</th>
												<th>菜单描述</th>
												<th>上级菜单</th>
												<th>菜单Controller</th>
												<th>菜单Action</th>
												<th>菜单链接</th>
												<th>菜单标志</th>
												<th class="hidden-480">菜单状态</th>
												<th><i
													class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
													添加时间</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${requestScope.menulist }" var="item">
												<tr id="data${item.mID}" data-gid="${item.mID}">
													<td class="center"><label class="pos-rel"> <input
															type="checkbox" class="ace" /> <span class="lbl"></span>
													</label></td>
													<td class="center">${item.mID}</td>
													<td>${item.mName }</td>
													<td>${item.mAlt }</td>
													<td data-fatherid="${item.mFatherID }">${item.mFatherName }</td>
													<td>${item.mController }</td>
													<td>${item.mAction }</td>
													<td>${item.mLinkUrl }</td>
													<td>${item.mStatus }</td>
													<td>${item.mIconName }</td>
													<td><fmt:formatDate value="${item.mAddTime}"
															pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
													<td>
														<div class="hidden-sm hidden-xs btn-group">
															<button class="btn btn-xs btn-success">
																<i class="ace-icon fa fa-check bigger-120"></i>
															</button>

															<a class="btn btn-xs btn-info"
																onclick="update(${item.mID})" data-toggle="modal"
																href="#modal-addform" data-rel="tooltip"
																data-placement="top" title="编辑"> <i
																class="ace-icon fa fa-pencil bigger-120"></i>
															</a>

															<button class="btn btn-xs btn-danger">
																<i class="ace-icon fa fa-trash-o bigger-120"></i>
															</button>

															<button class="btn btn-xs btn-warning">
																<i class="ace-icon fa fa-flag bigger-120"></i>
															</button>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button
																	class="btn btn-minier btn-primary dropdown-toggle"
																	data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
																</button>

																<ul
																	class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li><a class="tooltip-info"
																		onclick="update(${item.mID})" data-toggle="modal"
																		href="#modal-addform" data-rel="tooltip"
																		data-placement="top" data-rel="tooltip" title="View">
																			<span class="blue"> <i
																				class="ace-icon fa fa-search-plus bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-success"
																		data-rel="tooltip" title="Edit"> <span
																			class="green"> <i
																				class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																		</span>
																	</a></li>

																	<li><a href="#" class="tooltip-error"
																		data-rel="tooltip" title="Delete"> <span
																			class="red"> <i
																				class="ace-icon fa fa-trash-o bigger-120"></i>
																		</span>
																	</a></li>
																</ul>
															</div>
														</div>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- /.span -->
							</div>
							<!-- /.row -->
							<!-- 主内容区1 -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- 页面主体 -->
		<!-- 页面浮层 -->
		<div id="modal-addform" class="modal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="blue bigger modal-title">添加网站菜单</h4>
					</div>

					<div class="modal-body">
						<div class="row">
							<form class="form-horizontal" role="form" id="form1"
								action="${pageContext.request.contextPath }/admin/addgroup"
								method="post">
								<div class="col-xs-11 col-sm-10 col-xs-offset-1 col-sm-offset-2">

									<div class="form-group">
										<label for="form-field-username">菜单名称</label>
										<div>
											<input type="text" id="groupName" name="groupName"
												placeholder="菜单名称" class="col-xs-11 col-sm-7" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label for="form-field-first">菜单简介</label>
										<div>
											<input type="text" id="groupAlt" name="groupAlt"
												placeholder="菜单简介" class="col-xs-11 col-sm-8" />
										</div>
									</div>
									<div class="space-4"></div>
									<div class="form-group">
										<label for="form-field-username">父级菜单</label>
										<div>
											<input type="text" id="groupName" name="groupName"
												placeholder="父级菜单" class="col-xs-11 col-sm-7" />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label for="form-field-username">菜单Controller</label>
										<div>
											<input type="text" id="groupName" name="groupName"
												placeholder="菜单Controller" class="col-xs-11 col-sm-7" />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label for="form-field-username">菜单Action</label>
										<div>
											<input type="text" id="groupName" name="groupName"
												placeholder="菜单Action" class="col-xs-11 col-sm-7" />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label for="form-field-username">菜单链接</label>
										<div>
											<input type="text" id="groupName" name="groupName"
												placeholder="菜单链接" class="col-xs-11 col-sm-7" />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label for="form-field-username">菜单标识</label>
										<div>
											<input type="text" id="groupName" name="groupName"
												placeholder="菜单标识" class="col-xs-11 col-sm-7" />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label for="form-field-first">菜单状态</label>
										<div>
											<div id="chk_status" class="make-switch" data-on="success"
												data-off="danger" data-on-label="启用" data-off-label="禁用">
												<input type="checkbox" checked>
											</div>
											<input id="groupStatus" name="groupStatus" type="hidden"
												value="1">
										</div>
									</div>
									<input id="ID" name="ID" type="hidden" value="1"> <input
										id="type" name="type" type="hidden" value="100">
								</div>
							</form>
						</div>
					</div>

					<div class="modal-footer">
						<button class="btn btn-sm" data-dismiss="modal">
							<i class="ace-icon fa fa-times"></i> 取 消
						</button>
						<button class="btn btn-sm btn-primary"
							onclick="submitform('form1')">
							<i class="ace-icon fa fa-check"></i> 保 存
						</button>
					</div>

				</div>
			</div>
		</div>
		<!-- 页面浮层 -->
		<div class="footer">
			<jsp:include page="/part/footer"></jsp:include>
		</div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
	<jsp:include page="/partviews/includejs.jsp"></jsp:include>

	<script type="text/javascript">
		$(function() {
			$('[data-rel=tooltip]').tooltip();
			$('#chk_status').on('switch-change', function(e, data) {
				var value = data.value;
				if (value) {
					$("#groupStatus").val(1);
				} else {
					$("#groupStatus").val(0);
				}
			});

			//表格选择 开始
			var active_class = 'active';
			$('#grouptable > thead > tr > th input[type=checkbox]').eq(0).on(
					'click',
					function() {
						var th_checked = this.checked;//checkbox inside "TH" table header
						$(this).closest('table').find('tbody > tr').each(
								function() {
									var row = this;
									var gid = $(this).data("gid");
									if (th_checked) {
										if ($("#ids").val() == "")
											$("#ids").val(",");
										var temptext = $("#ids").val() + gid
												+ ",";
										$("#ids").val(temptext);
										$(row).addClass(active_class).find(
												'input[type=checkbox]').eq(0)
												.prop('checked', true);
									} else {
										var temptext = $("#ids").val().replace(
												"," + gid + ",", ",");
										$("#ids").val(temptext);
										$(row).removeClass(active_class).find(
												'input[type=checkbox]').eq(0)
												.prop('checked', false);
									}
								});
					});

			$('#grouptable').on(
					'click',
					'td input[type=checkbox]',
					function() {
						var $row = $(this).closest('tr');
						if ($row.is('.detail-row '))
							return;
						var gid = $row.data("gid");
						if (this.checked) {
							if ($("#ids").val() == "")
								$("#ids").val(",");
							var temptext = $("#ids").val() + gid + ",";
							$("#ids").val(temptext);
							$row.addClass(active_class);
						} else {
							var temptext = $("#ids").val().replace(
									"," + gid + ",", ",");
							$("#ids").val(temptext);
							$row.removeClass(active_class);
						}
					});
			//表格选择 结束
		});
		function update(id) {
			var row = $("#data" + id);
			var gid = row.find("td").eq(1).html();
			var gname = row.find("td").eq(2).html();
			var galt = row.find("td").eq(3).html();
			var gta = row.find("td").eq(4).html();
			$("#ID").val(gid);
			$("#groupName").val(gname);
			$("#groupAlt").val(galt);
			$("#groupStatus").val(gta);
			$("#type").val(2)
			if (gta == 1)
				$("#chk_status").bootstrapSwitch('setState', true);
			else
				$("#chk_status").bootstrapSwitch('setState', false);
		}

		function del() {
			var ids = $("#ids").val();
			$.ajax({
                     url : '@Url.Action("DelUserGroup", "UserMenus", new { area = "AdminArea" })',
					 datatype : 'json',
					 type : 'POST',
					 data : {
							'ids' : ids
						},
					 success : function(data) {
							if (data == "1") {
								location.reload();
							} else {
								bootbox.alert("操作失败！！");
							}
						}
					});
		}
		function singledel(id) {
			$.ajax({
					 url : '@Url.Action("DelUserGroup", "UserMenus", new { area = "AdminArea" })',
					 datatype : 'json',
					 type : 'POST',
					 data : {
							'ids' : id
						},
					 success : function(data) {
							if (data == "1") {
								location.reload();
							} else {
								bootbox.alert("操作失败！！");
							}
						}
					});
		}
		function settype(type){
			$("#type").val(type);
		}
		function submitform(name) {
			//var textstr = $("#" + name).valid();
			//if (textstr)
				document.getElementById(name).submit();
		}
	</script>
</body>
</html>