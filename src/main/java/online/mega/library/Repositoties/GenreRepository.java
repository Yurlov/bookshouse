package online.mega.library.Repositoties;

import online.mega.library.Entity.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface GenreRepository extends JpaRepository<Genre,Long> {
    @Query("SELECT u FROM Genre u where u.name_en=:name or u.name_ru = :name")
    Genre getGenreByName(@Param("name") String name);
}
