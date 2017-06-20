<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

	<head>
	
		<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>Widgets | Fire - Admin Template</title>
	   
		<!-- Mobile Metas -->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		

		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/ico/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon.png" />
		<link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-72x72.png" />
		<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-76x76.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-114x114.png" />
		<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-120x120.png" />
		<link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-144x144.png" />
		<link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/assets/ico/apple-touch-icon-152x152.png" />
		
	    <!-- start: CSS file-->
		
		<!-- Vendor CSS-->
		<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/vendor/css/pace.preloader.css" rel="stylesheet" />
		
		<!-- Plugins CSS-->	
		<link href="${pageContext.request.contextPath}/assets/plugins/scrollbar/css/mCustomScrollbar.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />			
		<link href="${pageContext.request.contextPath}/assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/magnific-popup/css/magnific-popup.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/pnotify/css/pnotify.custom.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/summernote/css/summernote.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" />

	<!-- Theme CSS -->
		<link href="${pageContext.request.contextPath}/assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->		
		<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/css/add-ons.min.css" rel="stylesheet" />

		<!-- end: CSS file-->
		<!-- Head Libs -->
		<script src="${pageContext.request.contextPath}/assets/plugins/modernizr/js/modernizr.js"></script>
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

	</head>
	
	<body>
	
		<!-- Start: Header -->
		<div class="navbar" role="navigation">
			<div class="container-fluid container-nav">
				<!-- Navbar Action -->
				<ul class="nav navbar-nav navbar-actions navbar-left">
					<li class="visible-md visible-lg"><a href="#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
					<li class="visible-xs visible-sm"><a href="#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>			
				</ul>
				<!-- Navbar Left -->
				<div class="navbar-left">
					<!-- Search Form -->					
					<form class="search navbar-form">
						<div class="input-group input-search">
							<input type="text" class="form-control bk-radius" name="q" id="q" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
							</span>
						</div>						
					</form>
				</div>
				<!-- Navbar Right -->
				<div class="navbar-right">					
					<!-- Notifications -->
					<ul class="notifications hidden-xs">						
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-tasks"></i>
								<span class="badge">10</span>
							</a>
							<ul class="dropdown-menu update-menu" role="menu">
								<li><a href="#"><i class="fa fa-database bk-fg-primary"></i> Database </a></li>
								<li><a href="#"><i class="fa fa-bar-chart-o bk-fg-primary"></i> Connection </a></li>
								<li><a href="#"><i class="fa fa-bell bk-fg-primary"></i> Notification </a></li>
								<li><a href="#"><i class="fa fa-envelope bk-fg-primary"></i> Message </a></li>
								<li><a href="#"><i class="fa fa-flash bk-fg-primary"></i> Traffic </a></li>
								<li><a href="#"><i class="fa fa-credit-card bk-fg-primary"></i> Invoices </a></li>
								<li><a href="#"><i class="fa fa-dollar bk-fg-primary"></i> Finances </a></li>
								<li><a href="#"><i class="fa fa-thumbs-o-up bk-fg-primary"></i> Orders </a></li>
								<li><a href="#"><i class="fa fa-folder bk-fg-primary"></i> Directories </a></li>
								<li><a href="#"><i class="fa fa-users bk-fg-primary"></i> Users </a></li>		
							</ul>
						</li>
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-envelope"></i>
								<span class="badge">5</span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-header">
									<strong>Messages</strong>
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											60%
										</div>
									</div>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="${pageContext.request.contextPath}/assets/img/avatar1.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>1 minute ago</small></span>							
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="${pageContext.request.contextPath}/assets/img/avatar2.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>3 minute ago</small></span>								
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="${pageContext.request.contextPath}/assets/img/avatar3.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>4 minute ago</small></span>								
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="${pageContext.request.contextPath}/assets/img/avatar4.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>30 minute ago</small></span>
									</a>
								</li>
								<li class="avatar">
									<a href="page-inbox.html">
										<img class="avatar" src="${pageContext.request.contextPath}/assets/img/avatar5.jpg" alt="" />
										<div><div class="point point-primary point-lg"></div>New message</div>
										<span><small>1 hours ago</small></span>
									</a>
								</li>						
								<li class="dropdown-menu-footer text-center">
									<a href="page-inbox.html">View all messages</a>
								</li>	
							</ul>
						</li>
						<li>
							<a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
								<i class="fa fa-bell"></i>
								<span class="badge">3</span>
							</a>
							<ul class="dropdown-menu list-group">
								<li class="dropdown-menu-header">
									<strong>Notifications</strong>
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											60%
										</div>
									</div>
								</li>
								<li class="list-item">
									<a href="page-inbox.html">
										<div class="pull-left">
										   <i class="fa fa-envelope-o bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>Unread Message</div>
											<h6>You have 10 unread message</h6>
										</div>								
									</a>
								</li>
								<li class="list-item">
									<a href="#">
										<div class="pull-left">
										   <i class="fa fa-cogs bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>New Settings</div>
											<h6>There are new settings available</h6>
										</div>								
									</a>
								</li>
								<li class="list-item">
									<a href="#">
										<div class="pull-left">
										   <i class="fa fa-fire bk-fg-primary"></i>
										</div>
										<div class="media-body clearfix">
											<div>Update</div>
											<h6>There are new updates available</h6>
										</div>								
									</a>
								</li>
								<li class="list-item-last">
									<a href="#">
									  <h6>Unread notifications</h6>
									  <span class="badge">15</span>
								   </a>
								</li>
							</ul>
						</li>
					</ul>
					<!-- End Notifications -->					
					<!-- Userbox -->
					<div class="userbox">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<figure class="profile-picture hidden-xs">
								<img src="${pageContext.request.contextPath}/assets/img/avatar.jpg" class="img-circle" alt="" />
							</figure>
							<div class="profile-info">
								<span class="name">John Smith Doe</span>
								<span class="role"><i class="fa fa-circle bk-fg-success"></i> Developer</span>
							</div>			
							<i class="fa custom-caret"></i>
						</a>
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">						
									<div class="progress progress-xs  progress-striped active">
										<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											60%
										</div>
									</div>							
								</li>	
								<li>
									<a href="page-profile.html"><i class="fa fa-user"></i> Profile</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-wrench"></i> Settings</a>
								</li>
								<li>
									<a href="page-invoice"><i class="fa fa-usd"></i> Payments</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-file"></i> File</a>
								</li>
								<li>
									<a href="page-login.html"><i class="fa fa-power-off"></i> Logout</a>
								</li>
							</ul>
						</div>						
					</div>
					<!-- End Userbox -->
				</div>
				<!-- End Navbar Right -->
			</div>		
		</div>
		<!-- End: Header -->
		
		<!-- Start: Content -->
		<div class="container-fluid content">	
			<div class="row">
			
				<!-- Sidebar -->
				<div class="sidebar">
					<div class="sidebar-collapse">
						<!-- Sidebar Header Logo-->
						<div class="sidebar-header">
							<img src="${pageContext.request.contextPath}/assets/img/logo.png" class="img-responsive" alt="" />
						</div>
						<!-- Sidebar Menu-->
						<div class="sidebar-menu">						
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-sidebar">
									<div class="panel-body text-center">								
										<div class="flag">
											<img src="${pageContext.request.contextPath}/assets/img/flags/USA.png" class="img-flags" alt="" />
										</div>
									</div>
									<li>
										<a href="index.jsp">
											<i class="fa fa-laptop" aria-hidden="true"></i><span>Dashboard</span>
										</a>
									</li>
									<li>
										<a href="mailbox-inbox.html">
											<span class="pull-right label label-danger">235</span>
											<i class="fa fa-envelope" aria-hidden="true"></i><span>Mail</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-copy" aria-hidden="true"></i><span>Pages</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="page-profile.html"><span class="text"> Profile</span></a></li>
											<li><a href="page-activity.html"><span class="text"> Activity</span></a></li>
											<li><a href="page-timeline.html"><span class="text"> Timeline</span></a></li>
											<li><a href="page-invoice.html"><span class="text"> Invoice</span></a></li>
											<li><a href="page-pricing-tables.html"><span class="text"> Pricing Tables</span></a></li>
											<li><a href="page-login.html"><span class="text"> Login Page</span></a></li>
											<li><a href="page-register.html"><span class="text"> Register Page</span></a></li>
											<li><a href="page-recover-password.html"><span class="text"> Recover Password</span></a></li>
											<li><a href="page-lockscreen1.html"><span class="text"> Lock Screen 1</span></a></li>
											<li><a href="page-lockscreen2.html"><span class="text"> Lock Screen 2</span></a></li>
											<li><a href="page-404.html"><span class="text"> Page 404</span></a></li>
											<li><a href="page-500.html"><span class="text"> Page 500</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-tasks" aria-hidden="true"></i><span>UI Elements</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="ui-basic-elements.html"><span class="text"> Basic Elements</span></a></li>
											<li><a href="ui-nestable-list.html"><span class="text"> Nestable</span></a></li>
											<li><a href="ui-buttons.html"><span class="text"> Buttons</span></a></li>
											<li><a href="ui-progress-bars.html"><span class="text"> Progress Bars</span></a></li>
											<li><a href="ui-sliders.html"><span class="text"> Sliders</span></a></li>
											<li><a href="ui-panels.html"><span class="text"> Panels</span></a></li>
											<li><a href="ui-tabs.html"><span class="text"> Tabs</span></a></li>
											<li><a href="ui-notifications.html"><span class="text"> Notifications</span></a></li>
											<li><a href="ui-modals.html"><span class="text"> Modals</span></a></li>
											<li><a href="ui-portlets.html"><span class="text"> Portlets</span></a></li>	
											<li><a href="ui-lightbox.html"><span class="text"> Lightbox</span></a></li>
											<li><a href="ui-carousels.html"><span class="text"> Carousels</span></a></li>
											<li><a href="ui-animation.html"><span class="text"> Animation</span></a></li>											
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-list-alt" aria-hidden="true"></i><span>Forms</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="form-elements.html"><span class="text"> Elements</span></a></li>
											<li><a href="form-wizard.html"><span class="text"> Wizard</span></a></li>
											<li><a href="form-validation.html"><span class="text"> Validation</span></a></li>
											<li><a href="form-dropzone.html"><span class="text"> Dropzone Upload</span></a></li>
											<li><a href="form-editors.html"><span class="text"> Editors</span></a></li>
											<li><a href="form-x-editable.html"><span class="text"> X-Editable</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-table" aria-hidden="true"></i><span>Tables</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="table-basic.html"><span class="text"> Basic</span></a></li>
											<li><a href="table-advanced.html"><span class="text"> Advanced</span></a></li>
											<li><a href="table-responsive.html"><span class="text"> Responsive</span></a></li>
											<li><a href="table-editable.html"><span class="text"> Editable</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-random" aria-hidden="true"></i><span>Visual Chart</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="chart-flot.html"><span class="text"> Flot Chart</span></a></li>
											<li><a href="chart-xchart.html"><span class="text"> xChart</span></a></li>
											<li><a href="chart-other.html"><span class="text"> Other</span></a></li>
										</ul>
									</li>									
									<li class="active">
										<a href="widgets.html">
											<i class="fa fa-life-bouy" aria-hidden="true"></i><span>Widgets</span>
										</a>
									</li>
									<li>
										<a href="gallery.html">
											<i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span>
										</a>
									</li>
									<li>
										<a href="calendar.html">
											<i class="fa fa-calendar" aria-hidden="true"></i><span>Calendar</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-map-marker" aria-hidden="true"></i><span>Maps</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="map-basic.html"><span class="text"> Basic</span></a></li>
											<li><a href="map-vector.html"><span class="text"> Vector</span></a></li>
										</ul>
									</li>
									<li>
										<a href="typography.html">
											<i class="fa fa-font" aria-hidden="true"></i><span>Typography</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-bolt" aria-hidden="true"></i><span>Icons</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="icons-font-awesome.html"><span class="text"> Font Awesome</span></a></li>
											<li><a href="icons-weathericons.html"><span class="text"> Weather Icons</span></a></li>
											<li><a href="icons-glyphicons.html"><span class="text"> Glyphicons</span></a></li>
										</ul>
									</li>
								</ul>
							</nav>
						</div>
						<!-- End Sidebar Menu-->
					</div>
					<!-- Sidebar Footer-->
					<div class="sidebar-footer">					
						<div class="small-chart-visits">
							<div class="small-chart" id="sparklineLineVisits"></div>
							<div class="small-chart-info">
								<label>New Visits</label>
								<strong>70,79%</strong>
							</div>
							<script type="text/javascript">
								var sparklineLineVisitsData = [15, 16, 17, 19, 15, 25, 23, 35, 29, 15, 30, 45];
							</script>
						</div>
						<ul class="sidebar-terms bk-margin-top-10">
							<li><a href="#">Terms</a></li>
							<li><a href="#">Privacy</a></li>
							<li><a href="#">Help</a></li>
							<li><a href="#">About</a></li>
						</ul>					
					</div>
					<!-- End Sidebar Footer-->
				</div>
				<!-- End Sidebar -->
						
				<!-- Main Page -->
				<div class="main ">
					<!-- Page Header -->
					<div class="page-header">
						<div class="pull-left">
							<ol class="breadcrumb visible-sm visible-md visible-lg">								
								<li><a href="index.jsp"><i class="icon fa fa-home"></i>Home</a></li>
								<li class="active"><i class="fa fa-life-bouy"></i>Widgets</li>
							</ol>						
						</div>
						<div class="pull-right">
							<h2>Widgets</h2>
						</div>					
					</div>
					<!-- End Page Header -->
					<div class="row">
						<div class="col-md-12">
							<div class="panel bk-widget bk-border-off">
								<div class="panel-body">
									<div class="bk-bg-white text-center bk-padding-top-15 bk-padding-bottom-15">
										<div class="row">
											<div class="col-xs-8 text-left bk-vcenter">
												<div class="">
													<h2 class="bk-margin-off">文件详情</h2>
												</div>
											</div>
											<div class="col-xs-4 bk-vcenter text-right">
												<i class="fa fa-file fa-4x"></i>
											</div>
										</div>
									</div>
								
									<ul class="list-group">
										<li class="list-group-item">
<%-- 											<s:text cssClass="badge bk-bg-info" ></s:text>
 --%>											<span class="badge bk-bg-info" id="fileid">
 													<s:property value="%{model.id}"/> </span>
											文件id
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-primary"><s:property value="%{model.name}"/></span>
											文件名称
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-success">
												<s:property value="%{model.kind}"/>
											</span>
											文件类型
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-danger">
												<s:property value="%{model.filesize}"/>&nbsp;Bytes
											</span>
											文件大小
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-inverse-darker" id="userid"><s:property value="%{model.userid}"/></span>
											上传用户id
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-warning"><s:property value="%{model.authorname1}"/></span>
											第一作者
										</li>
										<li class="list-group-item">
										<span class="badge bk-bg-info"><s:property value="%{model.authorname2}"/></span>
											第二作者
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-primary"><s:property value="%{model.authorname3}"/></span>					
											第三作者
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-success"><s:property value="%{model.authorname4}"/></span>					
											第四作者
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-danger"><s:property value="%{model.authorname5}"/></span>
											第五作者
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-inverse-darker">
												<s:if test="%{model.open==2}">
	                                        		已开放下载
	                                       		 </s:if>
	                                       		 <s:else>
	                                        		未开放
	                                       		 </s:else>
	                                        </span>
											开放状态
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-warning"><s:property value="%{model.uploaddate}"/></span>
											上传时间
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-info"><span id="ip"></span><span>:8080</span><span>${pageContext.request.contextPath}</span><s:property value="%{model.filepath}"/></span>
											文件地址
										</li>
										<li class="list-group-item">

											<span class="badge bk-bg-info">
											<a class=" popup-with-zoom-anim btn btn-default" href="#small-dialog" style="background-color:#2dc9b7;font-size:10px;padding:0px;color:#fff;border-bottom:0px">点击查看详情</a>
											</span>
											<div id="small-dialog" class="dialog dialog-sm zoom-anim-dialog mfp-hide">
											<h1>备注信息</h1>
											<p><s:property value="%{model.remark}"/></p>
											</div>
											备注信息
										</li>
										<li class="list-group-item">
											<span class="badge bk-bg-danger"><s:property value="%{model.downcount}"/></span>
											下载次数
										</li>
									</ul>
									<div>
									<s:a class="btn btn-success" action="file_detail" namespace="/">
                                           		 <s:param name="id" value="%{model.id}"></s:param>
                                                <i class="fa fa-search-plus "></i>
                                            </s:a>
                                            
                                            <s:a cssClass="btn btn-info" action="file_editview" namespace="/">
                                            	<s:param name="id" value="%{model.id}"></s:param>
                                                <i class="fa fa-edit "></i>
                                            </s:a>
                                            
                                            <s:a cssClass="btn btn-primary" action="file_download" namespace="/">
                                            	<s:param name="id" value="%{model.id}"></s:param>
                                            	<i class="fa fa-download "></i>
                                            </s:a>
                                           <%--  <s:a cssClass="btn btn-danger" action="file_delete" namespace="/">
                                            	<s:param name="id" value="%{model.id}"></s:param>
                                                 <i class="fa fa-trash-o "></i>
                                            </s:a> --%>
                                             <a id="del" class="modal-basic btn btn-danger" href="#modalIcon" data-delid=%{model.id}><i class="fa fa-trash-o "></i></a>
                                        <div id="modalIcon" class="modal-block modal-block-primary mfp-hide">
                                        <div class="panel panel-default">
                                        <div class="panel-heading">
                                        <h2 class="panel-title">请确认:</h2>
                                        </div>
                                        <div class="panel-body bk-noradius">
                                        <div class="modal-wrapper">
                                        <div class="modal-icon">
                                        <i class="fa fa-question-circle"></i>
                                        </div>
                                        <div class="modal-text">
                                        <p> 你确认要删除&nbsp;<span style="color:red;"
	><s:property value="%{model.name}"></s:property></span>&nbsp;吗?</p>
                                        </div>
                                        </div>
                                        </div>
                                        <div class="panel-footer">
                                        <div class="row">
                                        <div class="col-md-12 text-right">
                                        <s:a action="file_delete" namespace="/" >
                                                 <s:param name="id" value="%{model.id}"></s:param>
                                                 <button class="btn btn-info modal-confirm1" >确认</button>
                                        </s:a>
                                        <button class="btn btn-default modal-dismiss">取消</button>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                      </div>
								</div>
							</div>
							
							<div class="panel bk-widget bk-border-off bk-webkit-fix">
								<div class="panel-body bk-bg-very-light-gray bk-bg-lighten">
									<div class="bk-bg-very-light-gray text-center bk-padding-top-10 bk-padding-bottom-10">
										<div class="row">
											<div class="col-xs-8 text-left bk-vcenter">
												<h5 class="bk-margin-off"><em>下载前三甲</em></h5>
											</div>
											<div class="col-xs-4 bk-vcenter text-right">
												<i class="fa fa-cloud-download fa-2x"></i>
											</div>
										</div>
									</div>
									<hr class="bk-margin-off" />
									<div class="bs-example">
										<div id="carousel-example-generic3" class="carousel bk-carousel-fade slide" data-ride="carousel">


										</div>
									</div>
								</div>
							</div>                          
						</div>
					</div>


					<div class="row">
						<div class="col-xs-12">
							<div class="panel panel-default">
								<div class="panel-heading bk-bg-white">
									<h6><i class="fa fa-edit red"></i>文件审核</h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body bk-bg-white bk-padding-top-30 bk-padding-bottom-20" style="height: 550px">
									<form class="form-horizontal form-bordered" >
										<div class="form-group">
											<div class="col-md-10">
											<textarea id="passcontent" name="content" data-plugin-markdown-editor rows="10" style="height: 300px"></textarea>
											</div>
											<div class="col-md-2">
												<div class="checkbox-custom checkbox-default bk-margin-top-10">
													<input id="pass" name="pass" type="checkbox">
													<label for="pass">是否通过</label>
												</div>
												<hr/>
												<button type="button" class="btn btn-primary" id="passbtn">提交</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- End Main Page -->


			</div>
		</div><!--/container-->
		
		
		<div class="clearfix"></div>		
		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		<script src="${pageContext.request.contextPath}/assets/vendor/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/vendor/skycons/js/skycons.js"></script>
		<script src="${pageContext.request.contextPath}/assets/vendor/js/pace.min.js"></script>
		
		<!-- Plugins JS-->
		<script src="${pageContext.request.contextPath}/assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/bootkit/js/bootkit.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/flot/js/jquery.flot.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/flot/js/jquery.flot.pie.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/flot/js/jquery.flot.resize.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/flot/js/jquery.flot.stack.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/flot/js/jquery.flot.time.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/flot-tooltip/js/jquery.flot.tooltip.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/bootstrap-markdown/js/markdown.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/bootstrap-markdown/js/to-markdown.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/moment/js/moment.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/magnific-popup/js/magnific-popup.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/pnotify/js/pnotify.custom.js"></script>

	<!-- Theme JS -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery.mmenu.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="${pageContext.request.contextPath}/assets/js/pages/widgets.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/pages/ui-lightbox.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/pages/ui-modals.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/pages/form-editors.js"></script>
	<!-- end: JavaScript-->
	<script type="text/javascript">
		$(function () {
            var ip_addr = document.location.hostname;
			$("#ip").text(ip_addr);
        })

		$(document).on('click', '#modal-confirm1', function (e) {
			e.preventDefault();
			$.magnificPopup.close();
			var delid=$("#del").data('delid');
			alert(delid);
			new PNotify({
				title: 'Success!',
				text: 'Modal Confirm Message.',
				type: 'success'
			});
		});

		$("#passbtn").click(function () {
		    var passcontent=$("#passcontent").val();
			var pass=document.getElementById("pass").checked;
            var userid=$("#userid").text();
            var fileid=$.trim($("#fileid").text());
//            alert(passcontent);
//            alert(pass);
//			alert(userid);
//			alert(fileid);
			$.post("${pageContext.request.contextPath}/ajax/messageadd.action",{
			    "title":"文件审核通知",
			    "sender":"15422001",
				"receiver":userid,
				"fileid":fileid,
				"content":passcontent,
				"pass":pass
			},function (data) {
				if(data.addFlag){
				    alert("文件审核成功");
				    window.location.href="${pageContext.request.contextPath}/file_list.action";
				}else{
				    alert("文件审核失败");
				}
            });
        })

		function topfiles() {
			$.post("${pageContext.request.contextPath}/ajax/topfile.action",function (data) {
				var str="";
				//alert(data.topfiles);
				str+="\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t<div class=\"carousel-inner\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"item active\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t<a class=\"panel-body bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"pull-left bk-margin-top-10 bk-margin-right-10\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"bk-round bk-bg-darken bk-border-off bk-icon bk-icon-2x bk-icon-default bk-bg-warning\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa  fa-plane fa-2x\"></i>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h5 class=\"bk-fg-warning bk-fg-darken bk-margin-off-bottom\"><strong>" +
					"No.1 "+
					data.topfiles[0].name +
					"</strong></h5>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<small>" +
					data.topfiles[0].remark +
					"</small>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t</a>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t<hr class=\"bk-margin-off\" />\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body bk-bg-very-light-gray bk-padding-5 text-center\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"" +
					"${pageContext.request.contextPath}/file_detail.action?id=" +
                    data.topfiles[0].id	+
					"\" class=\"bk-fg-warning bk-fg-lighten\"><small><i class=\"fa fa-file-text-o\"></i> 点击这里了解详情 </small></a>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"item\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t<a class=\"panel-body bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"pull-left bk-margin-top-10 bk-margin-right-10\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"bk-round bk-bg-darken bk-border-off bk-icon bk-icon-2x bk-icon-default bk-bg-info\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa  fa-truck fa-2x\"></i>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h5 class=\"bk-fg-info bk-fg-darken bk-margin-off-bottom\"><strong>" +
                    "No.2 "+
                    data.topfiles[1].name +
					"</strong></h5>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<small>" +
                    data.topfiles[1].remark +
					"</small>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t</a>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t<hr class=\"bk-margin-off\" />\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body bk-bg-very-light-gray bk-padding-5 text-center\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"" +
                    "${pageContext.request.contextPath}/file_detail.action?id=" +
                    data.topfiles[1].id	+
					"\" class=\"bk-fg-info bk-fg-lighten\"><small><i class=\"fa fa-file-text-o\"></i> 点击这里了解详情 </small></a>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"item\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t<a class=\"panel-body bk-bg-very-light-gray bk-bg-lighten bk-padding-off-top bk-padding-off-bottom\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"pull-left bk-margin-top-10 bk-margin-right-10\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"bk-round bk-bg-darken bk-border-off bk-icon bk-icon-2x bk-icon-default bk-bg-primary\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<i class=\"fa fa-send-o fa-2x\"></i>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h5 class=\"bk-fg-primary bk-fg-darken bk-margin-off-bottom\"><strong>" +
                    "No.3 "+
                    data.topfiles[2].name +
					"</strong></h5>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<p>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<small>" +
                    data.topfiles[2].remark+
                	"</small>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t</p>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t</a>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t<hr class=\"bk-margin-off\" />\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"panel-body bk-bg-very-light-gray bk-padding-5 text-center\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"" +
                    "${pageContext.request.contextPath}/file_detail.action?id=" +
                    data.topfiles[2].id	+
					"\" class=\"bk-fg-primary bk-fg-lighten\"><small><i class=\"fa fa-file-text-o\"></i> 点击这里了解详情 </small></a>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t</div>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t"+"<a class=\"left carousel-control bk-carousel-control bk-carousel-control-white bk-carousel-hide-init\" href=\"#carousel-example-generic3\" role=\"button\" data-slide=\"prev\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"fa fa-angle-left icon-prev bk-bg-very-light-gray\"></span>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t</a>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t<a class=\"right carousel-control bk-carousel-control bk-carousel-control-white bk-carousel-hide-init\" href=\"#carousel-example-generic3\" role=\"button\" data-slide=\"next\">\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"fa fa-angle-right icon-next\"></span>\n" +
                    "\t\t\t\t\t\t\t\t\t\t\t</a>";
				var topfilediv=$("#carousel-example-generic3");
				topfilediv.append(str);
            })
        }
        topfiles();
	</script>
	</body>
	
</html>