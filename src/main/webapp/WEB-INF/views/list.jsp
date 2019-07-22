<%--
  Created by IntelliJ IDEA.
  User: victor
  Date: 2019/7/22
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="static/bootstrap/js/bootstrap.min.js"></script>
    <!--引入Jquery-->
    <script type="text/javascript" src ="static/js/jquery.min.js"></script>
</head>
<body>
<div content="container" style="margin-left: 40px">
    <!--标题-->
    <div class="col-md-12">
        <h1>SSM-CRUD</h1>
    </div>
    <!--按钮-->
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <button  class="btn btn-primary">新增</button>
            <button  class="btn btn-danger">删除</button>
        </div>
    </div>
    <br/>
    <!--显示表格数据-->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover table-striped">
                <tr>
                    <th>#</th>
                    <th>empName</th>
                    <th>gender</th>
                    <th>email</th>
                    <th>department</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="emp">
                <tr>
                    <th>${emp.empId}</th>
                    <th>${emp.empName}</th>
                    <th>${emp.gender}</th>
                    <th>${emp.email}</th>
                    <th>${emp.department.deptName}</th>
                    <th>
                        <button class="btn btn-primary btn-xs">
                            <span class="glyphicon glyphicon-align-left " aria-hidden="true"></span>
                            编辑</button>
                        <button class="btn btn-danger btn-xs">
                            <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
                            删除</button>
                    </th>
                </tr>
                </c:forEach>
            </table>
        </div>
        <!--分页信息-->
        <div class="row">
            <!--分页文字信息-->
            <div class="col-md-6">当前${pageInfo.pageNum}页，总${pageInfo.pages}页，总${pageInfo.total}条</div>
            <!--分页条信息-->
            <div class="col-md-6"><nav aria-label="Page navigation">
                <ul class="pagination">
                    <li><a href="${pageContext.request.contextPath}/list?pn=1">首页</a></li>
                    <li>
                        <a href="${pageContext.request.contextPath}/list?pn=1" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page">
                        <c:if test="${page == pageInfo.pageNum}">
                            <li class="active"><a href="${pageContext.request.contextPath}/list?pn=${page}">${page}</a></li>
                        </c:if>
                        <c:if test="${page != pageInfo.pageNum}">
                        <li><a href="${pageContext.request.contextPath}/list?pn=${page}">${page}</a></li>
                        </c:if>
                    </c:forEach>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/list?pn=${pageInfo.pages}">末页</a></li>
                </ul>
            </nav></div>

        </div>
    </div>
</div>

</body>
</html>
