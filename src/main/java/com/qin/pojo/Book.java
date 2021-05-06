package com.qin.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Book implements Serializable {
    private int bookid;
    private String author;
    private String bookname;
    private String detail;
}
