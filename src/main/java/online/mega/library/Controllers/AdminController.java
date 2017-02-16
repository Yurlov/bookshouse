package online.mega.library.Controllers;

import online.mega.library.Enams.UserRole;
import online.mega.library.Entities.*;
import online.mega.library.Services.*;
import online.mega.library.Utils.MyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class AdminController {
    @Autowired
    private UserService userService;

    @Autowired
    private BookService bookService;

    @Autowired
    private GenreService genreService;

    @Autowired
    private AuthorService authorService;

    @Autowired
    private PublisherService publisherService;

    @Autowired
    private ShaPasswordEncoder encoder;




    @RequestMapping("/admin")
    public String admin(Model model){
        org.springframework.security.core.userdetails.User user = (org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("login", user.getUsername());
        model.addAttribute("genres", genreService.getAllGenre());
        model.addAttribute("auth", authorService.getAllAuthor());
        model.addAttribute("publishers",publisherService.getAllPublisher());
        model.addAttribute("users",userService.getAllUsers());
        model.addAttribute("books", bookService.getBooks());
        return "admin";
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String addUser(@RequestParam(required = false) String email, @RequestParam(required = false) String name,@RequestParam String login,@RequestParam String password, @RequestParam UserRole role) {

        User dbUser = new User(name,login,encoder.encodePassword(password, null),role,email);
        userService.addUser(dbUser);

        return "redirect:/admin";
    }

    @RequestMapping(value = "/addGenre", method = RequestMethod.GET)
    public String addGenre(@RequestParam String name_ru,@RequestParam String name_en, Model model){

        Genre result = new Genre(name_ru,name_en);
        genreService.addGenre(result);

        model.addAttribute("genres", genreService.getAllGenre());
        return "redirect:/admin";
    }
    @RequestMapping("/addAuthor")
    public String addAuthor(@RequestParam String auth, Model model){

        Author res = new Author(auth);
        authorService.addAuthor(res);
        model.addAttribute("authors", authorService.getAllAuthor());
        return "redirect:/admin";
    }
    @RequestMapping("/addPublisher")
    public String addPublisher(@RequestParam String name,Model model){
        Publisher res = new Publisher(name);
        publisherService.addPublisher(res);
        model.addAttribute("publishers", publisherService.getAllPublisher());
        return "redirect:/admin";
    }


    @RequestMapping(value = "/addBook", method = RequestMethod.POST)
    public String addBook(@RequestParam String bookName,
                          @RequestParam String isbn,
                          @RequestParam String genre,
                          @RequestParam String descript,
                          @RequestParam Integer pageCount,
                          @RequestParam Integer year,
                          @RequestParam Long author,
                          @RequestParam Long publisher,
                          @RequestParam Integer rating,
                          @RequestParam MultipartFile content,
                          @RequestParam MultipartFile image
    )  {


        String contentPath = "src/main/resources/bookFiles/"+bookName.toLowerCase()+".pdf";
        String imagePath = "src/main/resources/bookImages/"+bookName.toLowerCase()+".jpg";
        MyUtils.writeFiles(content,contentPath);
        MyUtils.writeFiles(image,imagePath);

        Book newBook = new Book(bookName,contentPath,pageCount,
                isbn,genreService.getGenreByName(genre),
                authorService.getAuthorById(author),
                year,publisherService.getPublisherById(publisher),
                imagePath,descript,rating);

        bookService.addBook(newBook);

        return "redirect:/admin";
    }


    @RequestMapping("/deleteGenre")
    public String deleteGenre(@RequestParam("genre") Long id){
        genreService.deleteGenre(id);
        return "redirect:/admin";
    }
    @RequestMapping("/deleteBook")
    public String deleteBook(@RequestParam("id") Long id){
        Book book = bookService.getBookById(id);
        String pathToPdf = book.getContent();
        String pathToImage = book.getImage();
        MyUtils.deleteFiles(pathToPdf,pathToImage);
        bookService.deleteBook(book);
        return "redirect:/admin";
    }
    @RequestMapping("/deletePublisher")
    public String deletePublisher(@RequestParam("id") Long id){
        publisherService.deletePublisher(id);
        return "redirect:/admin";
    }
    @RequestMapping("/deleteAuthor")
    public String deleteAuthor(@RequestParam("id") Long id){
        authorService.deleteAuthor(id);
        return "redirect:/admin";
    }
    @RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam("id") Long id){
        userService.deleteUser(id);
        return "redirect:/admin";
    }




}