package com.qin.service;

import com.qin.pojo.Book;

import java.util.List;

public interface BookService {
    /*增加*/
    int addBook(Book book);
    /*删除*/
    int deleteBook(int id);
    /*修改*/
    int updateBook(Book book);
    /*查寻*/
    List<Book> queryBook();
    /*根据ID查询*/
    Book queryBookByID(int id);
}
