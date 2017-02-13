package online.mega.library.Controllers;

import online.mega.library.Enams.UserRole;
import online.mega.library.Entity.*;
import online.mega.library.Services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;


import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;
import java.io.*;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.util.Objects;



@Controller
@Transactional
public class MyController {
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
        private JavaMailSender javaMailSender;
    //=============================================================================================================Utils



        @RequestMapping(value = "/emailsend",method = RequestMethod.POST)
        public String doSendEmail(HttpServletRequest request) {

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String message = request.getParameter("message");


            SimpleMailMessage mail = new SimpleMailMessage();
            mail.setFrom("bookshouselibrary@gmail.com");
            mail.setTo("bookshouselibrary@gmail.com");
            mail.setSubject("From: "+name+" ("+email+")");
            mail.setText(message);
                try {
                    javaMailSender.send(mail);
                }catch (MailException ex){
                ex.printStackTrace();
                }
            return "redirect:/main";
        }


//===========================================Files======================================
        @RequestMapping(value = "/download/{file_id}/{save}", method = RequestMethod.GET)
        public void getFile(HttpServletResponse response,@PathVariable("file_id") Long id,@PathVariable("save") boolean save) throws IOException {
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
        public void getFile(HttpServletRequest request, HttpServletResponse response, @PathVariable("file_id") Long id) throws IOException {

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
    //===========================================VIEW+++BOOK==========================================

            @RequestMapping(value = "/viewBook/{bookId}", method = RequestMethod.GET)
            public String viewBook(Model model,@PathVariable("bookId") Long id ){
            Book viewBook = bookService.getBookById(id);
            model.addAttribute("viewBook", viewBook);
            model.addAttribute("genres", genreService.getAllGenre());
            return "resultpage";
    }

    //==========================================PaginationAndSorting=================================
        @RequestMapping(value = "/pages/{pageNumber}", method = RequestMethod.GET)
        public String getRunBookPage(@PathVariable Integer pageNumber,Model model){
                    Page<Book> page = bookService.getBookLog(pageNumber);
            if (page.getNumberOfElements() == 0) {
                model.addAttribute("genres", genreService.getAllGenre());
                model.addAttribute("notFound", page.getNumberOfElements());
                return "resultpage";
            }
                    int current = page.getNumber() + 1;
                    int begin = Math.max(1, current - 5);
                    int end = Math.min(begin + 10, page.getTotalPages());
                    model.addAttribute("books", page);
                    model.addAttribute("beginIndex", begin);
                    model.addAttribute("endIndex", end);
                    model.addAttribute("currentIndex", current);
                    model.addAttribute("genres", genreService.getAllGenre());
                    return "resultpage";

            }


        @RequestMapping(value="/searchByGenre/{genre}/pages/{pageNumber}",method = RequestMethod.GET)
        public String result(Model model,@PathVariable("genre") String primeGen,@PathVariable("pageNumber") Integer pageNumber){
            Page<Book> page = bookService.getBookByGenre(pageNumber, genreService.getGenreByName(primeGen));
            if (page.getNumberOfElements() == 0) {
                model.addAttribute("genres", genreService.getAllGenre());
                model.addAttribute("notFound", page.getNumberOfElements());
                return "resultpage";
            }
            model.addAttribute("primeGen", primeGen);
            int current = page.getNumber()+1 ;
            int begin = Math.max(1, current - 5);
            int end = Math.min(begin + 10, page.getTotalPages());
            model.addAttribute("beginIndex", begin);
            model.addAttribute("endIndex", end);
            model.addAttribute("currentIndex", current);
            model.addAttribute("genres", genreService.getAllGenre());
            model.addAttribute("books", page);
            return "resultpage";
            }

            @RequestMapping(value="/searchByNameOrAuthor/{nameOrAuthor}/pages/{pageNumber}",method = RequestMethod.GET)
            public String searchByNameOrGenre(Model model,@PathVariable("nameOrAuthor") String nameOrAuthor,@PathVariable("pageNumber") Integer pageNumber){
            Page<Book> page = bookService.getBookByNameOrAuthor(pageNumber,nameOrAuthor);
                if (page.getNumberOfElements() == 0) {
                    model.addAttribute("genres", genreService.getAllGenre());
                    model.addAttribute("notFound", page.getNumberOfElements());
                    return "resultpage";
                }
            model.addAttribute("nameOrAuthor", nameOrAuthor);
            int current = page.getNumber()+1 ;
            int begin = Math.max(1, current - 5);
            int end = Math.min(begin + 10, page.getTotalPages());
            model.addAttribute("beginIndex", begin);
            model.addAttribute("endIndex", end);
            model.addAttribute("currentIndex", current);
            model.addAttribute("genres", genreService.getAllGenre());
            model.addAttribute("books", page);
            return "resultpage";
            }




            @RequestMapping(value = "/searchByName", method = RequestMethod.GET)
            public String searchByName(Model model, @RequestParam String book) {
                Page<Book> page = bookService.getBookByNameOrAuthor(1, book);

                if (page.getNumberOfElements() == 0) {
                    model.addAttribute("genres", genreService.getAllGenre());
                    model.addAttribute("notFound", page.getNumberOfElements());
                    return "resultpage";
                }

                model.addAttribute("nameOrAuthor", book);
                int current = page.getNumber() + 1;
                int begin = Math.max(1, current - 5);
                int end = Math.min(begin + 10, page.getTotalPages());
                model.addAttribute("beginIndex", begin);
                model.addAttribute("endIndex", end);
                model.addAttribute("currentIndex", current);
                model.addAttribute("genres", genreService.getAllGenre());
                model.addAttribute("books", page);
                return "resultpage";
            }

    //===========================================================================================================================





        @RequestMapping("/main")
        public String main(Model model){
            Page<Book> page = bookService.getBookLog(1);
            int current = page.getNumber()+1 ;
            int begin = Math.max(1, current - 5);
            int end = Math.min(begin + 10, page.getTotalPages());

            model.addAttribute("books", page);
            model.addAttribute("beginIndex", begin);
            model.addAttribute("endIndex", end);
            model.addAttribute("currentIndex", current);
            model.addAttribute("genres", genreService.getAllGenre());
            return "main";
        }

        @RequestMapping("/")
        public String start(Model model){
            return "redirect:/main";
        }


        @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
        public String update(@RequestParam(required = false) String email,@RequestParam(required = false) String login, @RequestParam(required = false) String name,@RequestParam(required = false) String password, @RequestParam(required = false) UserRole role) {
            ShaPasswordEncoder encoder = new ShaPasswordEncoder();
            String passHash = encoder.encodePassword(password, null);
        User dbUser = userService.getUserByLogin(login);
        dbUser.setPassword(passHash);
        dbUser.setName(name);
        dbUser.setEmail(email);
        dbUser.setRole(role);

        userService.updateUser(dbUser);

        return "redirect:/admin";
    }

        @RequestMapping(value = "/addUser", method = RequestMethod.POST)
        public String addUser(@RequestParam(required = false) String email, @RequestParam(required = false) String name,@RequestParam String login,@RequestParam String password, @RequestParam UserRole role) {
            ShaPasswordEncoder encoder = new ShaPasswordEncoder();
            String passHash = encoder.encodePassword(password, null);
        User dbUser = new User(name,login,passHash,role,email);
        userService.addUser(dbUser);

        return "redirect:/admin";
    }





        //Registration page
        @RequestMapping(value = "/newuser", method = RequestMethod.POST)
        public String update(@RequestParam String login,
                             @RequestParam(required = false) String name,
                             @RequestParam String password,
                             @RequestParam String confirm,
                             @RequestParam(required = false) String email,
                             Model model) {
            if (userService.existsByLogin(login)) {
                model.addAttribute("exists", true);
                return "register";
            }
            if(Objects.equals(password, "")){
                model.addAttribute("emptyPass",true);
                return "register";
            }
            if(!Objects.equals(password, confirm)){
                model.addAttribute("wrongPass",true);
                return "register";
            }

            ShaPasswordEncoder encoder = new ShaPasswordEncoder();
            String passHash = encoder.encodePassword(password, null);

            User dbUser = new User(name,login,passHash, UserRole.USER, email);
            userService.addUser(dbUser);

            return "redirect:/login";
        }



    //    Admin page=========================================================================================================
    @RequestMapping("/admin")
    public String admin(Model model){
        org.springframework.security.core.userdetails.User user = (org.springframework.security.core.userdetails.User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("login", user.getUsername());
        model.addAttribute("genres", genreService.getAllGenre());
        model.addAttribute("auth", authorService.getAllAuthor());
        model.addAttribute("publishers",publisherService.getAllPublisher());
        model.addAttribute("users",userService.getAllUsers());
        model.addAttribute("books", bookService.getBooks());
        return "admin";
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
                              ) throws IOException {



            try(OutputStream fos = new FileOutputStream(new File("src/main/resources/META-INF/resources/bookFiles/"+bookName.toLowerCase()+".pdf"))) {
                fos.write(content.getBytes());
                fos.flush();
                fos.close();
            } catch(IOException ex){
                System.out.println(ex.getMessage());
            }

            try(OutputStream fos = new FileOutputStream(new File("src/main/resources/META-INF/resources/bookImages/"+bookName.toLowerCase()+".jpg"))) {
                fos.write(image.getBytes());
                fos.flush();
                fos.close();
            } catch(IOException ex){
                System.out.println(ex.getMessage());
            }


            String contentPath = "src/main/resources/META-INF/resources/bookFiles/"+bookName.toLowerCase()+".pdf";
            String imagePath = "src/main/resources/META-INF/resources/bookImages/"+bookName.toLowerCase()+".jpg";

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
            bookService.deleteBook(bookService.getBookById(id));
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
    //==============================================================================================================================================



    //Rest page
        @RequestMapping("/register")
        public String register() {
            return "register";
        }

        @RequestMapping("resultpage")
        public String resultpage() {
            return "resultpage";
        }

        @RequestMapping("/unauthorized")
        public String unauthorized(Model model){
            org.springframework.security.core.userdetails.User user = (org.springframework.security.core.userdetails.User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            model.addAttribute("login", user.getUsername());
            return "unauthorized";
        }
}
