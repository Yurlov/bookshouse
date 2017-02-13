package online.mega.library.Services;



import online.mega.library.Entities.Author;
import online.mega.library.Entities.Book;
import online.mega.library.Entities.Genre;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BookService {
    List<Book> getBooks();
    List<Book> getBooks(Author author);
    List<Book> getBooks(String bookName);
    List<Book> getBooks(Genre genre);
    void addBook(Book book);
    void deleteBook(Book book);
    Book getBookById(Long id);
    Page<Book> getBookLog(Integer pageNumber);
    Page<Book> getBookByGenre(Integer pageNumber, Genre genre);
    Page<Book> getBookByNameOrAuthor(Integer pageNumber, String name);
}
