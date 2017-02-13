package online.mega.library.Services;


import online.mega.library.Entities.Genre;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface GenreService {

    List<Genre> getAllGenre();
    void addGenre(Genre genre);
    void deleteGenre(long id);
    Genre getGenreByName(String name);
    Genre getGenreById(Long id);
}
