package com.qin.controller;

import com.qin.pojo.Book;
import com.qin.service.BookService;
import com.qin.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
/*方便拓展业务*/
@RequestMapping("/book")
public class BookController {
    /*只用Autowired,Spring不知道要注入哪个 bean*/
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService service;

    /*查询所有书籍*/
    @RequestMapping("/queryBook")
    public String queryBook(Model model){
        List<Book> list = service.queryBook();
        model.addAttribute("bookList",list);
        return "bookList";
    }

    /*进入添加书籍页面*/
    @RequestMapping("/toAddBook")
    public String addBookPage( ){
        return "addBook";
    }

    /*添加书籍*/
    @RequestMapping("/addBook")
    public String addBook(Book book){
        service.addBook(book);
        return "redirect:/book/queryBook";
    }

    /*删除书籍*/
    @RequestMapping("/deleteBook")
    public String deleteBook(Integer bookid){
        System.out.println("书本ID"+bookid);
        service.deleteBook(bookid);
        return "redirect:/book/queryBook";
    }

    /*进入修改书籍页面*/
    @RequestMapping("/toUpdateBook/{id}")
    public String toUpdateBook(@PathVariable("id") Integer bookid, Model model){
        System.out.println(bookid);
        Book books = service.queryBookByID(bookid);
        model.addAttribute("book",books);
        return "updateBook";
    }

    /*修改书籍*/
    @RequestMapping("/updateBook")
    public String updateBook(Book book){
        service.updateBook(book);
        return "redirect:/book/queryBook";
    }
}
