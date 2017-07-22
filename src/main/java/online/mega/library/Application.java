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

    //Autofilling
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
                genreService.addGenre(new Genre("История", "History"));
                genreService.addGenre(new Genre("Ужасы", "Horror"));
                genreService.addGenre(new Genre("Здоровье/Медицина", "Health/Medicine"));
                genreService.addGenre(new Genre("Кулинария", "Cook-books"));
                genreService.addGenre(new Genre("Искусство", "Art books"));
                genreService.addGenre(new Genre("Путешествия", "Travel books"));
                genreService.addGenre(new Genre("Бизнес и Финансы", "Business and Finance"));
                genreService.addGenre(new Genre("Cказки", "Fairy Tales"));
                genreService.addGenre(new Genre("Книги для детей", "Children's books"));
                genreService.addGenre(new Genre("Фотография", "Photography"));
                genreService.addGenre(new Genre("Политика", "Politics"));
                genreService.addGenre(new Genre("Поэзия", "Poetry"));
                genreService.addGenre(new Genre("Учебная литература", "Education"));

                publisherService.addPublisher(new Publisher("Ekspo"));

                authorService.addAuthor(new Author("Author author"));
                authorService.addAuthor(new Author("Анджей Сапковский"));
                authorService.addAuthor(new Author("Орсон Скотт Кард"));
                authorService.addAuthor(new Author("Ренсом Риггз"));
                authorService.addAuthor(new Author("Стиг Ларсон"));

                bookService.addBook(new Book("Ведьмак", "src/main/resources/bookFiles/4.pdf", 970, "98-42736-448", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Анджей Сапковский"), 2013, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/4.jpg", " Одна из лучших фэнтези-саг за всю историю существования жанра. Оригинальное, масштабное эпическое произведение, одновременно и свободное от влияния извне, и связанное с классической мифологической, легендарной и сказовой традицией. Шедевр не только писательского мастерства Анджея Сапковского, но и переводческого искусства Евгения Павловича Вайсброта. «Сага о Геральте» - в одном томе. Бесценный подарок и для поклонника прекрасной фантастики, и для ценителя просто хорошей литературы. Перед читателем буквально оживает необычный, прекрасный и жестокий мир литературной легенды, в котором обитают эльфы и гномы, оборотни, вампиры и «низушки»-хоббиты, драконы и монстры, - но прежде всего люди. Очень близкие нам, понятные и человечные люди - такие как мастер меча ведьмак Геральт, его друг, беспутный менестрель Лютик, его возлюбленная, прекрасная чародейка Йеннифэр, и приемная дочь безрассудно отважная юная Цири...\n", 10, 1546L));
                bookService.addBook(new Book("Игра Эндера", "src/main/resources/bookFiles/5.pdf", 350, "384-758-384", genreService.getGenreByName("Фентези"), authorService.getAuthorByName("Орсон Скотт Кард"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/5.jpg", "Земная цивилизация под угрозой. Уже семь десятилетий человечество ведет безвыигрышную войну с чуждой инопланетной расой, и шансы на победу всё тают. Неужели нет никакой надежды и человечеству придется погибнуть? И такая надежда появляется. На Земле рождается гений, ребенок, которому суждено стать спасителем человечества. Имя его Эндрю Виггин, или Эндер, что значит победитель. «Игра Эндера» — абсолютный шедевр современной фантастики и редкий случай в истории жанра, когда роман завоевывает в один год две высшие фантастические награды — премии «Хьюго» и «Небьюла». То есть получает одновременно и читательское, и писательское признание.\n", 8, 246L));
                bookService.addBook(new Book("Общество потребления", "src/main/resources/bookFiles/3.pdf", 741, "937-4653-732", genreService.getGenreByName("Философия"), authorService.getAuthorByName("Жан Бодрияр"), 2009, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/3.jpg", "Will be soon", 7, 3546L));
                bookService.addBook(new Book("Дом странных детей", "src/main/resources/bookFiles/7.pdf", 498, "68-8940-3943", genreService.getGenreByName("Фентези"), authorService.getAuthorByName("Ренсом Риггз"), 2016, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/7.jpg", "Шестнадцатилетний Джейкоб с детства привык к рассказам своего деда о его юности на далеком уэльском острове, в приюте для странных детей: о чудовищах с тройными языками, о невидимом мальчике, о летающей девочке… Единственным побочным эффектом этих выдумок были ночные кошмары, мучившие подростка. Но однажды кошмар ворвался в его жизнь, убив деда наяву…\n", 10, 32546L));
                bookService.addBook(new Book("Девушка с татуировкой дракона", "src/main/resources/bookFiles/6.pdf", 650, "6", genreService.getGenreByName("Триллер"), authorService.getAuthorByName("Стиг Ларсон"), 2015, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/6.jpg", "Will be soon", 9, 2746L));
                bookService.addBook(new Book("Book5", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Ужасы"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book6", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book7", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Путешествия"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book8", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book9", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book10", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Детектив"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book11", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book12", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Триллер"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book13", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Политика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book14", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Фантастика"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book15", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Програмирование"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));
                bookService.addBook(new Book("Book16", "src/main/resources/bookFiles/2.pdf", 650, "2", genreService.getGenreByName("Програмирование"), authorService.getAuthorByName("Author author"), 2017, publisherService.getPublisherByName("Ekspo"), "src/main/resources/bookImages/2.jpg", "Will be soon", 10, 546L));

            }
        };
    }
}

