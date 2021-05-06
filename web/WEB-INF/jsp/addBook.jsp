<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍 --------- 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="/book/addBook" method="post">
        <div class="form-group">
            <label for="exampleInputBookAuthor">作者</label>
            <input type="text" class="form-control" id="exampleInputBookAuthor" name="author" placeholder="作者" required>
        </div>
        <div class="form-group">
            <label for="exampleInputBookName">书本名称</label>
            <input type="text" class="form-control" id="exampleInputBookName" name="bookname" placeholder="书本名称" required>
        </div>
        <div class="form-group">
            <label for="exampleInputBookDetail">书籍详情</label>
            <input type="text" class="form-control" id="exampleInputBookDetail" name="detail" placeholder="书籍详情" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" id="exampleInputButton" value="添加">
        </div>
    </form>
</div>
</body>
</html>
