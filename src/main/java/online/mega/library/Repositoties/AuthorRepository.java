package online.mega.library.Repositoties;

import online.mega.library.Entities.Author;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthorRepository extends JpaRepository<Author,Long> {
    @Query("SELECT u FROM Author u where u.fio = :name")
    Author getGenreByName(@Param("name") String name);
}
