package online.mega.library.Repositoties;

import online.mega.library.Entities.Author;
import online.mega.library.Entities.Book;
import online.mega.library.Entities.Genre;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface BookRepository extends JpaRepository<Book,Long> {
    @Query("SELECT u FROM Book u where u.author = :author")
    List<Book> getBookByAuthor(@Param("author") Author author);

    @Query("SELECT u FROM Book u where u.name = :name or u.author.fio = :name")
    List<Book> getBookByNameOrAuthorList(@Param("name") String bookName);

    @Query ("select u from Book u where u.genre= :genre")
    List<Book> getBookByGenList(@Param("genre") Genre genre);

    @Query("select u from Book u where u.id= :id")
    Book getBookById(@Param("id") Long id);

    @Query("SELECT u FROM Book u where u.name = :name or u.author.fio = :name")
    Page<Book> getBookByNameOrAuthorPage(@Param("name") String bookName, Pageable pageable);

    @Query ("select u from Book u where u.genre= :genre")
    Page<Book> getBookByGenre(@Param("genre") Genre genre, Pageable pageable);
}
