package online.mega.library;

import online.mega.library.Utils.MyUtils;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }


@Bean
public CommandLineRunner demo() {
    return new CommandLineRunner() {
        @Override
        public void run(String... strings) throws Exception {
            MyUtils.fillApp();
        }
    };
}
}

