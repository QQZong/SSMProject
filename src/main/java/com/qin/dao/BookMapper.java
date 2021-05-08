package com.qin.dao;


import com.qin.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    /*增加*/
    int addBook(Book book);
    /*删除*/
    int deleteBook(@Param("bookid") int id);
    /*修改*/
    int updateBook(Book book);
    /*查寻*/
    List<Book> queryBook();
    /*根据ID查询*/
    Book queryBookByID(@Param("bookid")int id);
}
