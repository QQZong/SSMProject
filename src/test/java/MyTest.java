import com.qin.pojo.Book;
import com.qin.service.BookServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MyTest {
    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookServiceImpl bean = context.getBean("BookServiceImpl", BookServiceImpl.class);
        List<Book> list = bean.queryBook();
        for (Book book : list) {
            System.out.println(book);
        }
    }
}
