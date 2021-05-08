<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示书籍</title>
    <!-- CSS -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 --------- 显示所有书籍</small>&nbsp;&nbsp;&nbsp;<small style="color: red;font-size: small">${msg}</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <form action="${pageContext.request.contextPath}/book/queryBooks" method="post">
            <div class="form-group col-md-9">
                <input type="text" class="form-control" id="exampleInputBookAuthor" name="bookName" placeholder="请输入查询内容..." required>
            </div>
            <div class="form-group col-md-3">
                <button type="submit" class="btn btn-success btn-default">点击查询</button>
                <a href="${pageContext.request.contextPath}/book/queryBook" class="btn btn-primary">显示所有数据</a>
            </div>
        </form>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>书本ID</th>
                        <th>作者</th>
                        <th>书名</th>
                        <th>详情</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="book" items="${bookList}">
                        <tr>
                            <td>${book.bookid}</td>
                            <td>${book.author}</td>
                            <td>${book.bookname}</td>
                            <td>${book.detail}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/book/deleteBook?bookid=${book.bookid}" class="btn btn-danger">删除</a>
                                &nbsp;|&nbsp;
                                <a href="<c:url value="/book/toUpdateBook?bookid=${book.bookid}"/>" class="btn btn-info">修改</a>
                                &nbsp;|&nbsp;
                                <a href="<c:url value="/book/toAddBook"/>" class="btn btn-info">添加书籍</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
