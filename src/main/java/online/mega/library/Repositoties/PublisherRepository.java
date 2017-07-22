package online.mega.library.Repositoties;


import online.mega.library.Entities.Publisher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PublisherRepository extends JpaRepository<Publisher,Long> {
    @Query("SELECT u FROM Publisher u where u.name = :name")
    Publisher getPublisherByName(@Param("name") String name);
}
