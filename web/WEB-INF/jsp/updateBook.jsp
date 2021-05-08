<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍 --------- 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="/book/updateBook" method="get">
        <input type="hidden" name="bookid" value="${book.bookid}">
        <div class="form-group">
            <label for="exampleInputBookAuthor">作者</label>
            <input type="text" class="form-control" id="exampleInputBookAuthor" name="author" placeholder="作者" value="${book.author}" required>
        </div>
        <div class="form-group">
            <label for="exampleInputBookName">书本名称</label>
            <input type="text" class="form-control" id="exampleInputBookName" name="bookname" placeholder="书本名称" value="${book.bookname}" required>
        </div>
        <div class="form-group">
            <label for="exampleInputBookDetail">书籍详情</label>
            <input type="text" class="form-control" id="exampleInputBookDetail" name="detail" placeholder="书籍详情" value="${book.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-success" id="exampleInputButton" value="提交修改">
        </div>
    </form>
</div>
</body>
</html>
