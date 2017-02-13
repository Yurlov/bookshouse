package online.mega.library.ImplementsService;

import online.mega.library.Entity.Genre;
import online.mega.library.Services.GenreService;
import online.mega.library.Repositoties.GenreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class GenreServiceImpl implements GenreService {

    @Autowired
     private GenreRepository genreRepository;

    @Transactional
    @Override
    public List<Genre> getAllGenre() {
        return genreRepository.findAll();
    }
    @Transactional
    @Override
    public void addGenre(Genre genre) {
        genreRepository.saveAndFlush(genre);
    }
    @Transactional
    @Override
    public void deleteGenre(long id) {
        genreRepository.delete(id);
    }
    @Transactional
    @Override
    public Genre getGenreByName(String name) {
        return genreRepository.getGenreByName(name);
    }
    @Transactional
    @Override
    public Genre getGenreById(Long id) {
        return genreRepository.getOne(id);
    }


}
