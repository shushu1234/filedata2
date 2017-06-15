<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

	<head>
	
		<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>文件上传</title>
	 
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
		<link href="${pageContext.request.contextPath}/assets/plugins/bootkit/css/bootkit.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/plugins/pnotify/css/pnotify.custom.css" rel="stylesheet" />
		
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
									<a href="../page-profile.html"><i class="fa fa-user"></i> Profile</a>
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
									<a href="../page-login.html"><i class="fa fa-power-off"></i> Logout</a>
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
										<a href="../index.jsp">
											<i class="fa fa-laptop" aria-hidden="true"></i><span>Dashboard</span>
										</a>
									</li>
									<li>
										<a href="../mailbox-inbox.html">
											<span class="pull-right label label-danger">235</span>
											<i class="fa fa-envelope" aria-hidden="true"></i><span>Mail</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-copy" aria-hidden="true"></i><span>Pages</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="../page-profile.html"><span class="text"> Profile</span></a></li>
											<li><a href="../page-activity.html"><span class="text"> Activity</span></a></li>
											<li><a href="../page-timeline.html"><span class="text"> Timeline</span></a></li>
											<li><a href="../page-invoice.html"><span class="text"> Invoice</span></a></li>
											<li><a href="../page-pricing-tables.html"><span class="text"> Pricing Tables</span></a></li>
											<li><a href="../page-login.html"><span class="text"> Login Page</span></a></li>
											<li><a href="../page-register.html"><span class="text"> Register Page</span></a></li>
											<li><a href="../page-recover-password.html"><span class="text"> Recover Password</span></a></li>
											<li><a href="../page-lockscreen1.html"><span class="text"> Lock Screen 1</span></a></li>
											<li><a href="../page-lockscreen2.html"><span class="text"> Lock Screen 2</span></a></li>
											<li><a href="../page-404.html"><span class="text"> Page 404</span></a></li>
											<li><a href="../page-500.html"><span class="text"> Page 500</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-tasks" aria-hidden="true"></i><span>UI Elements</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="../ui-basic-elements.html"><span class="text"> Basic Elements</span></a></li>
											<li><a href="../ui-nestable-list.html"><span class="text"> Nestable</span></a></li>
											<li><a href="../ui-buttons.html"><span class="text"> Buttons</span></a></li>
											<li><a href="../ui-progress-bars.html"><span class="text"> Progress Bars</span></a></li>
											<li><a href="../ui-sliders.html"><span class="text"> Sliders</span></a></li>
											<li><a href="../ui-panels.html"><span class="text"> Panels</span></a></li>
											<li><a href="../ui-tabs.html"><span class="text"> Tabs</span></a></li>
											<li><a href="../ui-notifications.html"><span class="text"> Notifications</span></a></li>
											<li><a href="../ui-modals.html"><span class="text"> Modals</span></a></li>
											<li><a href="../ui-portlets.html"><span class="text"> Portlets</span></a></li>
											<li><a href="../ui-lightbox.html"><span class="text"> Lightbox</span></a></li>
											<li><a href="../ui-carousels.html"><span class="text"> Carousels</span></a></li>
											<li><a href="../ui-animation.html"><span class="text"> Animation</span></a></li>
										</ul>
									</li>
									<li class="nav-parent nav-expanded active">
										<a>
											<i class="fa fa-list-alt" aria-hidden="true"></i><span>Forms</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="../form-elements.html"><span class="text"> Elements</span></a></li>
											<li><a href="../form-wizard.html"><span class="text"> Wizard</span></a></li>
											<li><a href="../form-validation.html"><span class="text"> Validation</span></a></li>
											<li><a href="../form-dropzone.html"><span class="text"> Dropzone Upload</span></a></li>
											<li><a href="../form-editors.html"><span class="text"> Editors</span></a></li>
											<li><a href="../form-x-editable.html"><span class="text"> X-Editable</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-table" aria-hidden="true"></i><span>Tables</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="../table-basic.html"><span class="text"> Basic</span></a></li>
											<li><a href="../table-advanced.html"><span class="text"> Advanced</span></a></li>
											<li><a href="../table-responsive.html"><span class="text"> Responsive</span></a></li>
											<li><a href="../table-editable.html"><span class="text"> Editable</span></a></li>
										</ul>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-random" aria-hidden="true"></i><span>Visual Chart</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="../chart-flot.html"><span class="text"> Flot Chart</span></a></li>
											<li><a href="../chart-xchart.html"><span class="text"> xChart</span></a></li>
											<li><a href="../chart-other.html"><span class="text"> Other</span></a></li>
										</ul>
									</li>									
									<li>
										<a href="../widgets.html">
											<i class="fa fa-life-bouy" aria-hidden="true"></i><span>Widgets</span>
										</a>
									</li>
									<li>
										<a href="../gallery.html">
											<i class="fa fa-picture-o" aria-hidden="true"></i><span>Gallery</span>
										</a>
									</li>
									<li>
										<a href="../calendar.html">
											<i class="fa fa-calendar" aria-hidden="true"></i><span>Calendar</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-map-marker" aria-hidden="true"></i><span>Maps</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="../map-basic.html"><span class="text"> Basic</span></a></li>
											<li><a href="../map-vector.html"><span class="text"> Vector</span></a></li>
										</ul>
									</li>
									<li>
										<a href="../typography.html">
											<i class="fa fa-font" aria-hidden="true"></i><span>Typography</span>
										</a>
									</li>
									<li class="nav-parent">
										<a>
											<i class="fa fa-bolt" aria-hidden="true"></i><span>Icons</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="../icons-font-awesome.html"><span class="text"> Font Awesome</span></a></li>
											<li><a href="../icons-weathericons.html"><span class="text"> Weather Icons</span></a></li>
											<li><a href="../icons-glyphicons.html"><span class="text"> Glyphicons</span></a></li>
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
								<li><a href="../index.jsp"><i class="icon fa fa-home"></i>Home</a></li>
								<li><a href="#"><i class="fa fa-list-alt"></i>Forms</a></li>
								<li class="active"><i class="fa fa-tags"></i>Wizard</li>
							</ol>						
						</div>
						<div class="pull-right">
							<h2>Wizard</h2>
						</div>					
					</div>
					<!-- End Page Header -->
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="panel panel-default form-wizard" id="w4">
								<div class="panel-heading">
									<h6><i class="fa fa-tags bk-fg-warning"></i>用户文件上传</h6>
									<div class="panel-actions">
										<a href="#" class="btn-minimize"><i class="fa fa-caret-up"></i></a>
										<a href="#" class="btn-close"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<div class="panel-body">
									<div class="wizard-progress wizard-progress-lg">
										<div class="steps-progress">
											<div class="progress-indicator"></div>
										</div>
										<ul class="wizard-steps">
											<li class="active">
												<a href="#w4-account" data-toggle="tab"><span>1</span>文件选择</a>
											</li>
											<li>
												<a href="#w4-profile" data-toggle="tab"><span>2</span>文件作者</a>
											</li>
											<li>
												<a href="#w4-billing" data-toggle="tab"><span>3</span>文件分类</a>
											</li>
											<li>
												<a href="#w4-confirm" data-toggle="tab"><span>4</span>文件备注</a>
											</li>
										</ul>
									</div>
									<%-- <s:actionerror cssStyle="list-style:none;" cssClass="alert alert-danger"/> --%>
									<s:fielderror cssStyle="list-style:none;" cssClass="alert alert-danger"></s:fielderror>
									<s:form cssClass="form-horizontal" action="file_upload" namespace="/" theme="simple" method="post"  novalidate="novalidate" enctype="multipart/form-data" name="uploadform">
										
										<s:hidden name="userid" value="%{#session.loginUser.id}"></s:hidden>
										<div class="tab-content">
											<div id="w4-account" class="tab-pane active">
												<div class="form-group">
													<label class="col-md-3 control-label" for="file-input">选择文件</label>
													<div class="col-md-9">
													<!-- 	<input type="file" id="file-input" name="file-input" required> -->
														<s:file id="file-input" name="upload" cssClass="required"></s:file>
													</div>
												</div>
											</div>
											<div id="w4-profile" class="tab-pane">
												<div class="form-group">
													<label class="col-sm-3 control-label" for="w4-first-name">第1作者姓名</label>
													<div class="col-sm-9">
														<!-- <input type="text" class="form-control" name="first-name" id="w4-first-name" required> -->
														<s:textfield cssClass="form-control required" name="authorname1" id="w4-first-name"></s:textfield>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label" for="w4-last-name">第2作者姓名</label>
													<div class="col-sm-9">
														<!-- <input type="text" class="form-control" name="last-name" id="w4-last-name" > -->
														<s:textfield cssClass="form-control" name="authorname2" id="w4-last-name"></s:textfield>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label" for="w4-last-name">第3作者姓名</label>
													<div class="col-sm-9">
														<!-- <input type="text" class="form-control" name="last-name" id="w4-last-name" > -->
														<s:textfield cssClass="form-control" name="authorname3" id="w4-last-name"></s:textfield>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label" for="w4-last-name">第4作者姓名</label>
													<div class="col-sm-9">
														<!-- <input type="text" class="form-control" name="last-name" id="w4-last-name" > -->
														<s:textfield cssClass="form-control" name="authorname4" id="w4-last-name"></s:textfield>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label" for="w4-last-name">第5作者姓名</label>
													<div class="col-sm-9">
														<!-- <input type="text" class="form-control" name="last-name" id="w4-last-name" > -->
														<s:textfield cssClass="form-control" name="authorname5" id="w4-last-name"></s:textfield>
													</div>
												</div>
											</div>
											<div id="w4-billing" class="tab-pane">
												<div class="form-group">
													<label class="col-md-3 control-label" for="select">选择分类</label>
													<div class="col-md-9">
														<s:select list="#{'1':'资料','2':'图片','3':'视频','4':'音乐'}" cssClass="form-control required" id="select" name="kindid" size="1" headerKey="" headerValue="--选择分类--"></s:select>
													</div>
												</div>
											</div>
											<div id="w4-confirm" class="tab-pane">
												<div class="form-group">
													<label class="col-md-3 control-label" for="textarea-input">文件备注</label>
													<div class="col-md-9">
														<s:textarea id="textarea-input" name="remark" rows="9" cssClass="form-control" placeholder="请输入文件的备注信息，有助于管理员的审核..." ></s:textarea>
													</div>
												</div>
											<!-- 	<input type="submit" value="提交" /> -->
											</div>
											<div class="panel-footer bk-bg-very-light-gray bk-radius">
												<ul class="pager bk-margin-off">
													<li class="previous disabled">
														<a><i class="fa fa-angle-left"></i> 上一页</a>
													</li>
													<li class="finish hidden pull-right">
														<a href="#" onclick="uploadform.submit();">提交</a>
													</li>
													<li class="next">
														<a>下一页 <i class="fa fa-angle-right"></i></a>
													</li>
												</ul>
											</div>
										</div>
					
									</s:form>
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
		<script src="${pageContext.request.contextPath}/assets/plugins/autosize/jquery.autosize.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/jquery-validation/js/jquery.validate.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/wizard/js/jquery.bootstrap.wizard.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/pnotify/js/pnotify.custom.js"></script>
		<script src="${pageContext.request.contextPath}/assets/plugins/sparkline/js/jquery.sparkline.min.js"></script>
		
		<!-- Theme JS -->		
		<script src="${pageContext.request.contextPath}/assets/js/jquery.mmenu.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="${pageContext.request.contextPath}/assets/js/pages/form-wizard.js"></script>
		
		<!-- end: JavaScript-->
		
	</body>
	
</html>