package online.mega.library.ImplementsService;


import online.mega.library.Entity.Author;
import online.mega.library.Entity.Book;
import online.mega.library.Entity.Genre;
import online.mega.library.Services.BookService;
import online.mega.library.Repositoties.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookRepository bookRepository;

    private static final int PAGE_SIZE = 12;

    @Transactional
    public Page<Book> getBookLog(Integer pageNumber){
        PageRequest request = new PageRequest(pageNumber-1,PAGE_SIZE);
        return bookRepository.findAll(request);
    }

    @Transactional
    @Override
    public Page<Book> getBookByGenre(Integer pageNumber ,Genre genre) {
        PageRequest request = new PageRequest(pageNumber-1,PAGE_SIZE);
        return bookRepository.getBookByGenre(genre,request);
    }
    @Transactional
    @Override
    public Page<Book> getBookByNameOrAuthor(Integer pageNumber ,String name) {
        PageRequest request = new PageRequest(pageNumber-1,PAGE_SIZE);
        return bookRepository.getBookByNameOrAuthorPage(name,request);
    }
    @Transactional
    @Override
    public Book getBookById(Long id) {
        return bookRepository.getBookById(id);
    }

    @Transactional
    @Override
    public List<Book> getBooks() {
        return bookRepository.findAll() ;}

    @Transactional
    @Override
    public List<Book> getBooks(Author author) {
        return bookRepository.getBookByAuthor(author);
    }

    @Transactional
    @Override
    public void addBook(Book book) {
        bookRepository.saveAndFlush(book);}

    @Transactional
    @Override
    public void deleteBook(Book book) {
        bookRepository.delete(book);
    }

    @Transactional
    @Override
    public List<Book> getBooks(String bookName) {
        return bookRepository.getBookByNameOrAuthorList(bookName);
    }

    @Transactional
    @Override
    public List<Book> getBooks(Genre genre) {
        return bookRepository.getBookByGenList(genre);
    }


}
