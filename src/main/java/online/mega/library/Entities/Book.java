package online.mega.library.Entities;

import javax.persistence.*;

@Entity
@Table(name = "Book")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column
    private String name;
    @Column
    private String content;
    @Column
    private Integer pageCount;
    @Column
    private String isbn;

    @OneToOne
    @JoinColumn(name = "genre_id")
    private Genre genre;
    @OneToOne
    @JoinColumn(name = "author_id")
    private Author author;
    private Integer publishYear;
    @OneToOne
    @JoinColumn(name = "publisher_id")
    private Publisher publisher;
    @Column
    private String image;
    private String descr;
    private Integer rating;
    private Long voteCount;

    public Book() {
    }
    public Book(String name, String content, Integer pageCount,
                String isbn, Genre genre, Author author,
                Integer publishYear, Publisher publisher,
                String image, String descr, Integer rating, Long voteCount) {
        this.name = name;
        this.content = content;
        this.pageCount = pageCount;
        this.isbn = isbn;
        this.genre = genre;
        this.author = author;
        this.publishYear = publishYear;
        this.publisher = publisher;
        this.image = image;
        this.descr = descr;
        this.rating = rating;
        this.voteCount = voteCount;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public Genre getGenre() {
        return genre;
    }

    public void setGenre(Genre genre) {
        this.genre = genre;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Integer getPublishYear() {
        return publishYear;
    }

    public void setPublishYear(Integer publishYear) {
        this.publishYear = publishYear;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public Long getVoteCount() {
        return voteCount;
    }

    public void setVoteCount(Long voteCount) {
        this.voteCount = voteCount;
    }


}