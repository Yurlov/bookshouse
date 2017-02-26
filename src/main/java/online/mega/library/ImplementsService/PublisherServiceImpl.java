package online.mega.library.ImplementsService;

import online.mega.library.Entities.Publisher;
import online.mega.library.Services.PublisherService;
import online.mega.library.Repositoties.PublisherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class PublisherServiceImpl implements PublisherService {
    @Autowired
    private PublisherRepository publisherRepository;
    @Transactional
    @Override
    public List<Publisher> getAllPublisher() {
        return publisherRepository.findAll();
    }
    @Transactional
    @Override
    public void addPublisher(Publisher publisher) {
        publisherRepository.saveAndFlush(publisher);
    }
    @Transactional
    @Override
    public void deletePublisher(long id) {
    publisherRepository.delete(id);
    }

    @Transactional
    @Override
    public Publisher getPublisherById(Long id) {
        return publisherRepository.getOne(id);
    }

}
