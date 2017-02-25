package online.mega.library;



import online.mega.library.Entities.User;
import online.mega.library.Services.UserService;
import online.mega.library.Enams.UserRole;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;


@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

//
//    @Bean
//    public CommandLineRunner demo(final UserService userService) {
//        return new CommandLineRunner() {
//            @Override
//            public void run(String... strings) throws Exception {
//                userService.addUser(new User("admin", "bcb049247ce6fab013d6f085b165e7c081ab93bd", UserRole.ADMIN));
//                userService.addUser(new User("user", "bcb049247ce6fab013d6f085b165e7c081ab93bd", UserRole.USER));
//            }
//        };
//    }
}

