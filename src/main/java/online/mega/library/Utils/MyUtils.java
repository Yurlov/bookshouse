package online.mega.library.Utils;


import online.mega.library.Enams.UserRole;
import online.mega.library.Entities.*;
import online.mega.library.Services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;

public class MyUtils {

    public static void writeFiles(MultipartFile content, String path){
        try {
            OutputStream fos = new BufferedOutputStream(new FileOutputStream(new File(path)));
            fos.write(content.getBytes());
            fos.flush();
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void deleteFiles(String pathToContent, String pathToImage){
        File content = new File(pathToContent);
        File image = new File(pathToImage);
        content.delete();
        image.delete();

    }

    @Autowired
    private static BookService bookService;
    @Autowired
    private static GenreService genreService;
    @Autowired
    private  static AuthorService authorService;
    @Autowired
    private static PublisherService publisherService;
    @Autowired
    private static UserService userService;
    public static void fillApp(){
        userService.addUser(new User("admin", "bcb049247ce6fab013d6f085b165e7c081ab93bd", UserRole.ADMIN));
        userService.addUser(new User("user", "bcb049247ce6fab013d6f085b165e7c081ab93bd", UserRole.USER));


       genreService.addGenre(new Genre("Фантастика","Fantastic"));
       genreService.addGenre(new Genre("Детектив","Detective"));
       genreService.addGenre(new Genre("Роман","Novel"));

       publisherService.addPublisher(new Publisher("Артек"));
       publisherService.addPublisher(new Publisher("Азбука"));

       authorService.addAuthor(new Author("Viktor Yurlov"));
       authorService.addAuthor(new Author("Стивен Хокингс"));
       authorService.addAuthor(new Author("Ольга Романюк"));
       authorService.addAuthor(new Author("Kris Jhons"));

       bookService.addBook(new Book("Book1","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book2","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book3","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book4","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book5","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book6","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book7","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book8","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book9","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book10","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book11","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book12","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book13","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book14","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book15","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));
       bookService.addBook(new Book("Book16","src/main/resources/bookFiles/2.pdf",598,"2",
                genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Viktor Yurlov"),
                2017, publisherService.getPublisherByName("Азбука"),"src/main/resources/bookImages/2.jpg","Will be soon ",9, 832L));


    }
    
}

