<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>后台登陆页面</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="author" content="">
  <!-- Stylesheets -->
  <link href="${ctx}/resources/mac/style/bootstrap.css" rel="stylesheet">
  <link rel="stylesheet" href="${ctx}/resources/mac/style/font-awesome.css">
  <link href="${ctx}/resources/mac/style/style.css" rel="stylesheet">
  <link href="${ctx}/resources/mac/style/bootstrap-responsive.css" rel="stylesheet">
  
  <!-- HTML5 Support for IE -->
  <!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->

  <!-- Favicon -->
	<link type="image/x-icon" href="${ctx}/resources/original/images/favicon.ico" rel="shortcut icon"/>
</head>

<body>
<!-- Form area -->
<div class="admin-form">
  <div class="container">

    <div class="row">
      <div class="col-md-12">
        <!-- Widget starts -->
            <div class="widget worange">
              <!-- Widget head -->
              <div class="widget-head">
                <i class="icon-lock"></i> Login 
              </div>
				<%
					String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
					if(error != null){
					%>
						<div class="alert alert-error input-medium controls">
							<button class="close" data-dismiss="alert">×</button>登录失败，请重试.
						</div>
					<%
					}
				%>
              <div class="widget-content">
                <div class="padd">
                  <!-- Login form -->
                  <form class="form-horizontal" id="loginForm" action="${ctx}/login" method="post" autocomplete="off">
                    <!-- Email -->
                    <div class="form-group">
                      <label class="control-label col-lg-3" for="username">用户名</label>
                      <div class="col-lg-9">
                        <input type="text" id="username" name="username"  value="${username}" class="form-control required" placeholder="用户名">
                      </div>
                    </div>
                    <!-- Password -->
                    <div class="form-group">
                      <label class="control-label col-lg-3" for="password">密码</label>
                      <div class="col-lg-9">
                        <input type="password" class="form-control required" id="password" name="password" placeholder="密码">
                      </div>
                    </div>
                    <!-- Remember me checkbox and sign in button -->
                    <div class="form-group">
					<div class="col-lg-9 col-lg-offset-3">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"  id="rememberMe" name="rememberMe"> Remember me
                        </label>
						</div>
					</div>
					</div>
                        <div class="col-lg-9 col-lg-offset-2">
							<button type="submit" class="btn btn-danger">Sign in</button>
							<button type="reset" class="btn btn-default">Reset</button>
						</div>
                    <br />
                  </form>
				  
				</div>
                </div>
              
                <div class="widget-foot">
                  Not Registred? <a href="${ctx}/register">Register here</a>
                </div>
            </div>  
      </div>
    </div>
  </div> 
</div>
	
		
<link href="${ctx}/resources/original/jquery-validation/1.11.1/validate.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/resources/original/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>
<!-- JS -->
<script src="${ctx}/resources/mac/js/jquery.js"></script>
<script src="${ctx}/resources/mac/js/bootstrap.js"></script>
<script>
		$(document).ready(function() {
			$("#loginForm").validate();
		});
</script>
</body>
</html>
