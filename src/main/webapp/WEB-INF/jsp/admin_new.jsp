
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
	<!-- Bootstrap Styles-->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.css" rel="stylesheet" />
        <!-- Custom Styles-->
    <link href="${pageContext.request.contextPath}/assets/css/custom-styles.css" rel="stylesheet" />
     <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <!-- TABLE STYLES-->

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/syntaxhighlighter/styles/shCore.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/syntaxhighlighter/styles/shThemeDefault.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/syntaxhighlighter/styles/shCoreDefault.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/syntaxhighlighter/scripts/shBrushJScript.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/syntaxhighlighter/scripts/shBrushCpp.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/syntaxhighlighter/scripts/shBrushCss.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/syntaxhighlighter/scripts/shBrushJava.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/syntaxhighlighter/scripts/shBrushSql.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/syntaxhighlighter/scripts/shBrushPlain.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/xheditor/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/xheditor/xheditor-1.2.2.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/xheditor/xheditor_lang/zh-cn.js"></script>

    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/my.js"></script>

    <style type="text/css">
        /* 增加插入代码工具图标 */
        .btnCode {
            background: transparent url('${pageContext.request.contextPath}/images/code.png') no-repeat 0px 0px;
            background-position: -2px -2px;
        }
    </style>
    <script type="text/javascript">
        $(pageInit);
    </script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><i class="fa fa-comments"></i> <strong>MY BLOG </strong></a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Doe</strong>
                                    <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">28% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                            <span class="sr-only">28% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">85% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                            <span class="sr-only">85% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="http://blog.csdn.net/huai814586181"><i class="fa fa-user fa-fw"></i> My Blog</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                   
					<li>
                        <a href="admin_article.jsp" class="active-menu"><i class="glyphicon glyphicon-book"></i> <strong>文章管理</strong></a>
                    </li>
                    <li>
                        <a href="admin_type.jsp"><i class="glyphicon glyphicon-bookmark"></i> <strong>类别管理</strong></a>
                    </li>
					<li>
                        <a href="admin_comment.jsp"><i class="glyphicon glyphicon-comment"></i> <strong>评论管理</strong></a>
                    </li>
                    <li>
                        <a href="admin_setting.jsp"><i class="glyphicon glyphicon-cog"></i> <strong>博客配置</strong></a>
                    </li>
                    <li>
                        <a href="admin_drafts.jsp"><i class="glyphicon glyphicon-folder-open"></i> <strong>草稿箱</strong></a>
                    </li>
                    <li>
                        <a href="admin_trash.jsp"><i class="glyphicon glyphicon-trash"></i> <strong>回收站</strong></a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								写新文章
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-12">
                                    <form role="form" action="test" method="post">
                                        <div class="form-group">
                                            <label style="color:grey">文章标题</label>
                                            <div class="input-group col-xs-12">
                                                <div class="input-group-btn">
                                                    <select name="type" class="form-control" style="width:auto">
                                                        <option value="0" selected="selected">请选择</option>
                                                        <option value="1">原创</option>
                                                        <option value="2">转载</option>
                                                        <option value="3">翻译</option>
                                                    </select>
                                                    <input class="form-control" name="title" style="width:400px; float:left;" maxlength="100">
                                                </div>
                                            </div>
                                        </div>
										<div class="form-group">
                                            <label style="color:grey">文章内容</label>
                                            <textarea id="content1" name="content" class="form-control" rows="20"></textarea>
                                        </div>
										<div class="form-group">
                                            <label style="color:grey">文章分类</label><br>
                                            <div class="col-lg-8">
                                                <label class="checkbox-inline col-xs-2">
                                                    <input type="checkbox">Java
                                                </label>
                                                <label class="checkbox-inline col-xs-2">
                                                    <input type="checkbox">Javaas
                                                </label>
                                                <label class="checkbox-inline col-xs-2">
                                                    <input type="checkbox">Javaasd
                                                </label>
                                                <label class="checkbox-inline col-xs-2">
                                                    <input type="checkbox">Javaasdsad
                                                </label>
                                                <label class="checkbox-inline col-xs-2">
                                                    <input type="checkbox">Javaas
                                                </label>
                                            </div>
                                            <div class="col-lg-8">
                                                <label class="checkbox-inline col-xs-2">
                                                    <input type="checkbox">Javads
                                                </label>
                                                <label class="checkbox-inline col-xs-2">
                                                    <input type="checkbox">Javafff
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group left">
                                            <button type="submit" class="btn btn-primary">立即发表</button>
                                        </div>
									</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
             <!-- /. PAGE INNER  -->
        </div>
         <!-- /. PAGE WRAPPER  -->
    </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <%--<script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.js"></script>--%>
      <!-- Bootstrap Js -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.metisMenu.js"></script>
         <!-- Custom Js -->
    <script src="${pageContext.request.contextPath}/assets/js/custom-scripts.js"></script>
   
</body>
</html>
