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

<title>My JSP 'PersonalIndex.jsp' starting page</title>
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
					<li class="nav-item"><a href="SearchUser.jsp" class="nav-link">用户查询</a></li>
					<s:if test="#session.UserRank >= 2">
						<li class="nav-item"><a href="SearchUser.jsp" class="nav-link">管理员查询</a></li>
					</s:if>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="Register.jsp" class="nav-link">用户注册</a></li>
					<s:if test="#session.UserRank >= 2">
						<li class="nav-item"><a href="AdminRegister.jsp" class="nav-link">管理员注册</a></li>
					</s:if>
				</ul>
				</nav>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style=" height: 100%;background-image: url(pic/RegisterBackground.jpg);background-repeat: no-repeat;background-size: cover;">
				<div class="row">
					<div class="col-md-4">
						<div class="card"
							style="margin-left: 30%;margin-top: 15px;height: 90%;box-shadow: 0px 0px 10px 5px #c3e1f5b7;min-height: 900px;">
							<div class="card-body">
								<form>
									<s:if test="#session.UserRank == 3">
									<div class="row">
										<button class="btn btn-basic form-control" type="submit" style="height: 80px"
											formaction="PersonalIndexAction.action"><img src="pic/ButtonPublished.jpg" width="100%"></button>

									</div>
									<div class="row">
										<button class="btn btn-basic form-control" type="submit" style="height: 80px"
											formaction="PersonalIndexUnpublishedAction.action"><img src="pic/ButtonUnpublished.jpg" width="100%"></button>

									</div>
									<div class="row">
										<button class="btn btn-basic form-control" type="submit" style="height: 80px"
											formaction="PersonalIndexFilledAction.action"><img src="pic/ButtonFilled.jpg" width="100%"></button>

									</div>
									<div class="row">
										<button class="btn btn-basic form-control" type="submit"
											formaction="PersonalIndexOthersAction.action">问卷广场</button>
									</div>
									</s:if>
									<s:if test="#session.UserRank == 2">
									<div class="row">
										<button class="btn btn-basic form-control" type="submit" style="height: 80px"
											formaction="PersonalIndexAction.action"><img src="pic/ButtonPublished.jpg" width="100%"></button>

									</div>
									<div class="row">
										<button class="btn btn-basic form-control" type="submit" style="height: 80px"
											formaction="PersonalIndexUnpublishedAction.action"><img src="pic/ButtonUnpublished.jpg" width="100%"></button>

									</div>
									<div class="row">
										<button class="btn btn-basic form-control" type="submit" style="height: 80px"
											formaction="PersonalIndexFilledAction.action" hidden><img src="pic/ButtonFilled.jpg" width="100%"></button>

									</div>
									<div class="row">
										<button class="btn btn-basic form-control" type="submit"
											formaction="PersonalIndexOthersAction.action" hidden>问卷广场</button>
									</div>
									</s:if>
									<s:if test="#session.UserRank == 1">
									<div class="row">
										<button class="btn btn-basic form-control" type="submit" style="height: 80px"
											formaction="PersonalIndexAction.action" hidden><img src="pic/ButtonPublished.jpg" width="100%"></button>

									</div>
									<div class="row">
										<button class="btn btn-basic form-control" type="submit" style="height: 80px"
											formaction="PersonalIndexUnpublishedAction.action" hidden><img src="pic/ButtonUnpublished.jpg" width="100%"></button>

									</div>
									<div class="row">
										<button class="btn btn-basic form-control" type="submit" style="height: 80px"
											formaction="PersonalIndexFilledAction.action"><img src="pic/ButtonFilled.jpg" width="100%"></button>

									</div>
									<div class="row">
										<button class="btn btn-basic form-control" type="submit"
											formaction="PersonalIndexOthersAction.action">问卷广场</button>
									</div>
									</s:if>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-8">
						<div class="card"
							style=";margin-right: 20%;margin-top: 15px;height: 90%;box-shadow: 0px 0px 10px 5px #c3e1f5b7;">
							<div class="card-body"
								style="padding-right:50px;padding-left: 50px ;min-height: 900px;">
								<img src="" alt="">
									<div class="row">
										<div class="col-md-12">
											
										</div>
									</div>
									<s:if test="#session.UserRank >= 2">
									<div class="row">
										<div class="col-md-6">
											<a href="CreateQuestionnaire.jsp">
												<p class="iconfont icon-create-new-file" style="font-size:50px;text-align: center;"></p>
												<h3 style="text-align: center;">新建问卷</h3>
											</a>
										</div>
										<div class="col-md-6">
											<a href="CreatePaper.jsp">
												<p class="iconfont icon-create-new-file" style="font-size:50px;text-align: center;"></p>
												<h3 style="text-align: center;">新建试卷</h3>
											</a>
										</div>
									</div>
									<hr>
									</s:if>
								<s:iterator value="QuestionnaireList" id="id" status="st">
									<div class="row">
										<div class="col-md-2">
											<p class="iconfont icon-icon_doc_fill" style="font-size:50px"></p>
										</div>
										<div class="col-md-10">
											<div class="row">
												<div class="col-md-12">
													<h4>
														<s:property value="#id.title" />
													</h4>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<p>
														<s:property value="#id.lastChangedTime" />
													</p>
												</div>
											</div>
										</div>
									</div>
									<form action="#" method="post">
										<div class="row">
											<input type="text" name="QuestionnaireId"
												value=<s:property value="#id.questionnaireId"/> hidden>
											<s:if
												test="#session.QuestionnaireStatus == 'Filled'">
												<div class="col-md-10"></div>
												<div class="col-md-2">
													<button class="btn btn-outline-secondary" type="submit"
														formaction="FilledQuestionnaireDetailAction.action">查看</button>
												</div>
											</s:if>

											<s:elseif
												test="#session.QuestionnaireStatus == 'Published'">
												<div class="col-md-4">
												</div>
												<div class="col-md-2">
													<button class="btn btn-outline-danger" type="submit"
														formaction="DeleteQuestionnaireAction.action">删除</button>
												</div>

												<div class="col-md-2">
													<button class="btn btn-outline-secondary" type="submit"
														formaction="QuestionnaireDetailAction.action">查看</button>
												</div>
												<div class="col-md-2">
													<button class="btn btn-outline-secondary" type="submit"
														formaction="StatisticAction.action">统计</button>
												</div>
												<div class="col-md-2">
													<button class="btn btn-outline-secondary" type="submit"
														formaction="FillOutQuestionnaireAction.action">填写</button>
												</div>
											</s:elseif>

											<s:elseif
												test="#session.QuestionnaireStatus == 'Unpublished'">
												<div class="col-md-4"></div>
												<div class="col-md-2">
													<button class="btn btn-outline-danger" type="submit"
														formaction="DeleteQuestionnaireAction.action">删除</button>
												</div>

												<div class="col-md-2">
													<button class="btn btn-outline-secondary" type="submit"
														formaction="QuestionnaireDetailAction.action">查看</button>
												</div>
												<div class="col-md-2">
													<button class="btn btn-outline-secondary" type="submit"
														formaction="EditQuestionnaireAction.action">编辑</button>
												</div>
												<div class="col-md-2">
													<button class="btn btn-outline-secondary" type="submit"
														formaction="PublishAction.action">发布</button>
												</div>
											</s:elseif>

											<s:elseif
												test="#session.QuestionnaireStatus == 'Others'">
												<div class="col-md-10"></div>
												<div class="col-md-2">
													<button class="btn btn-outline-secondary" type="submit"
														formaction="FillOutQuestionnaireAction.action">填写</button>
												</div>
											</s:elseif>
											<s:else>
											</s:else>
										</div>
									</form>

								</s:iterator>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
