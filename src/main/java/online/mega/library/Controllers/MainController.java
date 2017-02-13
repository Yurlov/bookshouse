package online.mega.library.Controllers;


import online.mega.library.Entity.*;
import online.mega.library.Services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.transaction.Transactional;


@Controller
@Transactional
public class MainController {

    @Autowired
    private BookService bookService;
    @Autowired
    private GenreService genreService;

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


        @RequestMapping("/register")
        public String register() {
            return "register";
        }

        @RequestMapping("/result")
        public String result() {
            return "result";
        }

        @RequestMapping("/unauthorized")
        public String unauthorized(Model model){
            org.springframework.security.core.userdetails.User user = (org.springframework.security.core.userdetails.User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
            model.addAttribute("login", user.getUsername());
            return "unauthorized";
        }
}
