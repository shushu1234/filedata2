<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">

	<head>
	
		<!-- Basic -->
    	<meta charset="UTF-8" />

		<title>注册成功</title>
	 
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
		
		<!-- Plugins CSS-->		
		
		<!-- Theme CSS -->
		<link href="${pageContext.request.contextPath}/assets/css/jquery.mmenu.css" rel="stylesheet" />
		
		<!-- Page CSS -->		
		<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/assets/css/add-ons.min.css" rel="stylesheet" />
		
		<style>
			footer {
				display: none;
			}
		</style>
		
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
		<!-- Start: Content -->
		<div class="container-fluid content">
			<div class="row">
				<!-- Main Page -->
				<div id="content" class="col-sm-12 full">				
					<div class="row box-error">					
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="text-center">
								<h1>恭喜你 :)</h1>
								<h2>你的账户为:<span style="color: red;font-size: 40px">${loginUser.id }</span>你可以通过该账户或者邮箱登录系统</h2>
								<h3>激活邮件发送成功</h3>
								<input type="hidden" value="${loginUser.email}" id="useremail">
								<h4>如果长时间未接收到激活邮件，有可能被放进垃圾箱了，请尝试恢复，谢谢你的参与...</h4>
								<a href="user-login.jsp">
									<button type="button" class="btn btn-primary"><i class="fa fa-user"></i> 登录</button>
								</a>
								<a id="go" href="#">
									<button type="button" class="btn btn-primary"><i class="fa fa-envelope-o"></i> 激活</button>
								</a>
							</div>
						</div>					
					</div>			
				</div>
				<!-- End Main Page -->					
		
			</div>
		</div><!--/container-->
		
		
		<!-- start: JavaScript-->
		
		<!-- Vendor JS-->				
		<script src="${pageContext.request.contextPath}/assets/vendor/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/vendor/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/vendor/skycons/js/skycons.js"></script>
		
		<!-- Plugins JS-->
		
		<!-- Theme JS -->		
		<script src="${pageContext.request.contextPath}/assets/js/jquery.mmenu.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/core.min.js"></script>
		
		<!-- Pages JS -->
		<script src="${pageContext.request.contextPath}/assets/js/pages/page-404.js"></script>
		
		<!-- end: JavaScript-->
		<script type="text/javascript">
            function addhref() {
                //alert(1);
               // alert(document.getElementById("useremail").value);
                var useremail1="http://mail."+document.getElementById("useremail").value.split("@")[1];
               // alert(useremail1);
                document.getElementById("go").href=useremail1;
            }
            addhref();
		</script>
	</body>
	
</html>