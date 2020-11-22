<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <base href="<%=basePath%>">
        <meta charset="utf-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page"> 
        <title>Qmaker</title>
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-fluid" style="width: 100%; height: 100%;background-color: #c3e1f598">
            <div class="row">
                <div class="col-md-2">
    
                </div>
                <div class="col-md-8" style="padding-left: 0px;padding-right: 0px;">
                    <nav class="navbar navbar-expand-sm bg-light" role="navigation">   
                        <a class="navbar-brand" href="#">Brand</a>
                        <ul class="navbar-nav">
                           
                        </ul>
                        <ul class="navbar-nav ml-auto">
                                
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">

                </div>
                <div class="col-md-8" style=" height: 100%;background-image: url(pic/RegisterBackground.jpg);background-repeat: no-repeat;background-size: cover;">
                    <div class="card" style="margin-left: 30%;margin-right: 30%;margin-top: 3%;height: 90%;box-shadow: 0px 0px 10px 5px #c3e1f5b7;">
                        <div class="card-body">
                            <div class="row">
                                
                                <div class="col-md-9 mx-auto">
                                    <h2 style="text-align: center;margin-top: 20%;margin-bottom: 20%;">用户信息</h2>
                                     <s:if test="#session.userType == 'SuperAdmin' || #session.userType == 'Admin'">
                                    <form action="ResetPasswordAction.action" method="post">
                                    	<div class="form-group">
                                    		<input type="text" value="<s:property value="userId" />" hidden>
                                    	</div>
                                        <div class="form-group">
                                            	用户名:<s:property value="userId" />
                                        </div>
                                        <div class="form-group">
                                            	用户类型:<s:property value="userType" />
                                        </div>
                                       
                                        <button class="btn btn-outline-secondary form-control" type="submit">重置密码</button>
                                        
                                    </form>
                                    </s:if>
                                    
                                    <s:else>
                                    	<div class="form-group">
                                            	<p>用户名:<s:property value="userId" /></p>
                                        </div>
                                        <div class="form-group">
                                            	<p>用户类型:<s:property value="userType" /></p>
                                        </div>
                                    </s:else>
                                </div>
                            </div>
                            <div class="row">
                                <img src="pic/RegisterIllustration.jpg" alt="" style="width: 80%;margin-top: 30%;margin-left: auto;margin-right: auto;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>