package online.mega.library.ImplementsService;

import online.mega.library.Entities.Author;
import online.mega.library.Services.AuthorService;
import online.mega.library.Repositoties.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class AuthorServiceImpl implements AuthorService {
    @Autowired
    private AuthorRepository authorRepository;
    @Transactional
    @Override
    public List<Author> getAllAuthor() {
        return authorRepository.findAll();
    }
    @Transactional
    @Override
    public void addAuthor(Author author) {
        authorRepository.saveAndFlush(author);
    }
    @Transactional
    @Override
    public void deleteAuthor(long id) {
        authorRepository.delete(id);
    }
    @Transactional
    @Override
    public Author getAuthorById(Long id) {
        return authorRepository.getOne(id);
    }
    @Transactional
    @Override
    public Author getAuthorByName(String name) {
        return authorRepository.getGenreByName(name);
    }
}
