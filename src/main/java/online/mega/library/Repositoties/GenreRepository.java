package online.mega.library.Repositoties;

import online.mega.library.Entities.Genre;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface GenreRepository extends JpaRepository<Genre,Long> {
    @Query("SELECT u FROM Genre u where u.name_en=:name or u.name_ru = :name")
    Genre getGenreByName(@Param("name") String name);
}
