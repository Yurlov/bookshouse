package online.mega.library;

import online.mega.library.Entities.*;
import online.mega.library.Services.*;
import online.mega.library.Enums.UserRole;
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
    public CommandLineRunner demo(final UserService userService, final GenreService genreService, final BookService bookService, final PublisherService publisherService, final AuthorService authorService) {
        return new CommandLineRunner() {
            @Override
            public void run(String... strings) throws Exception {
                userService.addUser(new User("admin", "bcb049247ce6fab013d6f085b165e7c081ab93bd", UserRole.ADMIN));
                userService.addUser(new User("user", "bcb049247ce6fab013d6f085b165e7c081ab93bd", UserRole.USER));
                genreService.addGenre(new Genre("Фантастика", "Fantastic"));
                genreService.addGenre(new Genre("Триллер", "Thriller"));
                genreService.addGenre(new Genre("Детектив", "Detective"));
                genreService.addGenre(new Genre("Фентези", "Fantasy"));
                genreService.addGenre(new Genre("Програмирование", "Programming"));
                genreService.addGenre(new Genre("Философия", "Philosophy"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));
                genreService.addGenre(new Genre("Культура", "Culture"));

                publisherService.addPublisher(new Publisher("Ekspo"));
                authorService.addAuthor(new Author("Author author"));
                authorService.addAuthor(new Author("Анджей Сапковский"));
                bookService.addBook(new Book("Ведьмак", "src/main/resources/bookFiles/4.pdf", 970, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Анджей Сапковский"), 2013, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/4.jpg", " Одна из лучших фэнтези-саг за всю историю существования жанра. Оригинальное, масштабное эпическое произведение, одновременно и свободное от влияния извне, и связанное с классической мифологической, легендарной и сказовой традицией. Шедевр не только писательского мастерства Анджея Сапковского, но и переводческого искусства Евгения Павловича Вайсброта. «Сага о Геральте» - в одном томе. Бесценный подарок и для поклонника прекрасной фантастики, и для ценителя просто хорошей литературы. Перед читателем буквально оживает необычный, прекрасный и жестокий мир литературной легенды, в котором обитают эльфы и гномы, оборотни, вампиры и «низушки»-хоббиты, драконы и монстры, - но прежде всего люди. Очень близкие нам, понятные и человечные люди - такие как мастер меча ведьмак Геральт, его друг, беспутный менестрель Лютик, его возлюбленная, прекрасная чародейка Йеннифэр, и приемная дочь безрассудно отважная юная Цири...\n", 10, 1546L));
                bookService.addBook(new Book("Book1", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book2", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book3", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book4", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book5", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book6", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book7", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book8", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book9", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book10", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book11", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book12", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book13", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book14", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book15", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book16", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));

            }
        };
    }
}

