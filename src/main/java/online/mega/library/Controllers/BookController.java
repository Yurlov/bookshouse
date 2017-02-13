package online.mega.library.Controllers;

import online.mega.library.Entities.Book;
import online.mega.library.Services.BookService;
import online.mega.library.Services.GenreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;
    @Autowired
    private GenreService genreService;

    @RequestMapping(value = "/viewBook/{bookId}", method = RequestMethod.GET)
    public String viewBook(Model model, @PathVariable("bookId") Long id ){
        Book viewBook = bookService.getBookById(id);
        model.addAttribute("viewBook", viewBook);
        model.addAttribute("genres", genreService.getAllGenre());
        return "result";
    }

    //==========================================PaginationAndSorting=================================
    @RequestMapping(value = "/pages/{pageNumber}", method = RequestMethod.GET)
    public String getRunBookPage(@PathVariable Integer pageNumber,Model model){
        Page<Book> page = bookService.getBookLog(pageNumber);
        if (page.getNumberOfElements() == 0) {
            model.addAttribute("genres", genreService.getAllGenre());
            model.addAttribute("notFound", page.getNumberOfElements());
            return "result";
        }
        int current = page.getNumber() + 1;
        int begin = Math.max(1, current - 5);
        int end = Math.min(begin + 10, page.getTotalPages());
        model.addAttribute("books", page);
        model.addAttribute("beginIndex", begin);
        model.addAttribute("endIndex", end);
        model.addAttribute("currentIndex", current);
        model.addAttribute("genres", genreService.getAllGenre());
        return "result";

    }


    @RequestMapping(value="/searchByGenre/{genre}/pages/{pageNumber}",method = RequestMethod.GET)
    public String result(Model model,@PathVariable("genre") String primeGen,@PathVariable("pageNumber") Integer pageNumber){
        Page<Book> page = bookService.getBookByGenre(pageNumber, genreService.getGenreByName(primeGen));
        if (page.getNumberOfElements() == 0) {
            model.addAttribute("genres", genreService.getAllGenre());
            model.addAttribute("notFound", page.getNumberOfElements());
            return "result";
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
        return "result";
    }

    @RequestMapping(value="/searchByNameOrAuthor/{nameOrAuthor}/pages/{pageNumber}",method = RequestMethod.GET)
    public String searchByNameOrGenre(Model model,@PathVariable("nameOrAuthor") String nameOrAuthor,@PathVariable("pageNumber") Integer pageNumber){
        Page<Book> page = bookService.getBookByNameOrAuthor(pageNumber,nameOrAuthor);
        if (page.getNumberOfElements() == 0) {
            model.addAttribute("genres", genreService.getAllGenre());
            model.addAttribute("notFound", page.getNumberOfElements());
            return "result";
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
        return "result";
    }




    @RequestMapping(value = "/searchByName", method = RequestMethod.GET)
    public String searchByName(Model model, @RequestParam String book) {
        Page<Book> page = bookService.getBookByNameOrAuthor(1, book);

        if (page.getNumberOfElements() == 0) {
            model.addAttribute("genres", genreService.getAllGenre());
            model.addAttribute("notFound", page.getNumberOfElements());
            return "result";
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
        return "result";
    }

}
