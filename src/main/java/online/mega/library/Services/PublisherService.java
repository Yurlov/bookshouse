package online.mega.library.Services;

import online.mega.library.Entities.Publisher;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PublisherService {
    List<Publisher> getAllPublisher();
    void addPublisher(Publisher publisher);
    void deletePublisher(long id);
    Publisher getPublisherById(Long id);
    

}
