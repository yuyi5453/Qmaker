<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'QuestionnaireDetail.jsp' starting page</title>

<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="icon.css">
</head>

<body>
	<div class="container-fluid"
		style="width: 100%; height: 100%;background-color: #c3e1f598">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" style="padding-left: 0px;padding-right: 0px;">
				<nav class="navbar navbar-expand-sm bg-light" role="navigation">
				<a class="navbar-brand" href="#">Qmaker</a>
				<ul class="navbar-nav">
					<li class="nav-item"><a href="#" class="nav-link"></a></li>
					<li class="nav-item"><a href="#" class="nav-link"></a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="#" class="nav-link"></a></li>
					<li class="nav-item"><a href="#" class="nav-link"></a>
					</li>
				</ul>
				</nav>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style=" height: 100%;background-image: url(pic/RegisterBackground.jpg);background-repeat: no-repeat;background-size: cover;">
				<div class="card"
					style="margin-left: 20%;margin-right: 20%;margin-top: 3%;height: 90%;box-shadow: 0px 0px 10px 5px #c3e1f5b7;height: 900px;overflow: auto;">
					<div class="card-body"
						style="padding-left: 10%;padding-right: 10%;">
						<div class="row">
							<div class="col-md-12">
								<h2 style="text-align: center;"><s:property value="QuestionnaireTitle"/></h2>
							</div>
						</div>
						
						<hr>
						<s:iterator value="QuestionnaireContent" id="id" status="st">
							<div class="row">
								<div class="col-md-12">
									<h4>
										<s:property value="#id.questionContent" />
									</h4>
									<s:if test="#id.questionType=='single'">
										<div class="single">
											<p><s:property value="#id.score" />分</p>
											<p>您的得分：<s:property value="#id.userScore" />分</p>
											<table>
												<tbody>
													<s:iterator value="#id.optionList" id="subId"
														status="subSt">
														<tr>
															<s:if test="#subId.isUserAnswer=='yes' && #subId.isStandardAnswer=='yes'">
																<td><p class='iconfont icon-option' style="color:#31ad25"></p></td>
															</s:if>
															<s:elseif test="#subId.isUserAnswer=='yes' && #subId.isStandardAnswer!='yes'">
																<td><p class='iconfont icon-option' style="color:#ad2525"></p></td>
															</s:elseif>
															<s:else>
																<td><p class='iconfont icon-option'></p></td>
															</s:else>
															<td><p><s:property value="#subId.optionContent" /></p></td>
														</tr>
													</s:iterator>
												</tbody>
											</table>
										</div>
									</s:if>
									<s:elseif test="#id.questionType=='multi'">
										<div class="multi">
											<p><s:property value="#id.score" />分</p>
											<p>您的得分：<s:property value="#id.userScore" />分</p>
											<table>
												<tbody>
													<s:iterator value="#id.optionList" id="subId"
														status="subSt">
														<tr>
															<s:if test="#subId.isUserAnswer=='yes' && #subId.isStandardAnswer=='yes'">
																<td><p class='iconfont icon-multi-option' style="color:#31ad25"></p></td>
															</s:if>
															<s:elseif test="#subId.isUserAnswer=='yes' && #subId.isStandardAnswer!='yes'">
																<td><p class='iconfont icon-multi-option' style="color:#ad2525"></p></td>
															</s:elseif>
															<s:else>
																<td><p class='iconfont icon-multi-option'></p></td>
															</s:else>
															<td><p><s:property value="#subId.optionContent" /></p></td>
														</tr>
													</s:iterator>
												</tbody>
											</table>
										</div>
									</s:elseif>
									<s:else>
										<div class="essay">
											<textarea name="Option4Question[<s:property value="#id.questionNo"/>]" id="" cols="60" rows="6"></textarea>
										</div>
									</s:else>
								</div>
							</div>
						</s:iterator>
						<hr>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

