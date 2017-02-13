package online.mega.library.Services;

import online.mega.library.Entities.Author;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AuthorService {
    List<Author> getAllAuthor();
    void addAuthor(Author author);
    void deleteAuthor(long id);
    Author getAuthorById(Long id);
    Author getAuthorByName(String name);
}
