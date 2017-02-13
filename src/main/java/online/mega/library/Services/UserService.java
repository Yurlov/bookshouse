package online.mega.library.Services;

import online.mega.library.Entity.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    User getUserByLogin(String login);
    boolean existsByLogin(String login);
    void addUser(User user);
    void updateUser(User user);
    List<User> getAllUsers();
    void deleteUser(Long id);
}
