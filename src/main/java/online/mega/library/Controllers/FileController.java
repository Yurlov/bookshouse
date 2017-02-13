package online.mega.library.Controllers;

import online.mega.library.Entities.Book;
import online.mega.library.Services.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.nio.file.Files;

@Transactional
@Controller
public class FileController {

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/download/{file_id}/{save}", method = RequestMethod.GET)
    public void getFile(HttpServletResponse response, @PathVariable("file_id") Long id, @PathVariable("save") boolean save) throws IOException {
        response.setContentType("application/pdf; charset=UTF-8");
        OutputStream out =  response.getOutputStream();
        try {
            Book book = bookService.getBookById(id);
            String path = book.getContent();
            File file = new File(path);
            byte[] content = Files.readAllBytes(file.toPath());
            response.setContentLength(content.length);

            if(save){
                response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(book.getName().toLowerCase(),"UTF-8")+".pdf");
            }
            out.write(content);
        } catch (Exception e){
            e.printStackTrace();
        }finally {
            out.close();
        }
    }



    @RequestMapping(value = "/image/{file_id}" , method=RequestMethod.GET)
    public void getFile(HttpServletResponse response, @PathVariable("file_id") Long id) throws IOException {

        String path = bookService.getBookById(id).getImage();
        File file = new File(path);
        byte[] img = Files.readAllBytes(file.toPath());
        try {
            response.setContentType("image/jpg");
            response.setContentLength(img.length);
            response.getOutputStream().write(img);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
}
