package javaBeans;

import javax.persistence.*;

@Entity
@Table(name = "bookshelf")
public class Bookshelf {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bookshelf_id", nullable = false)
    private Integer id;

    @Column(name = "bookshelf_name", length = 50)
    private String bookshelfName;

    @Column(name = "bookshelf_description", length = 100)
    private String bookshelfDescription;

    @Column(name = "book_number")
    private Integer bookNumber;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "library_code")
    private Library libraryCode;

    public Library getLibraryCode() {
        return libraryCode;
    }

    public void setLibraryCode(Library libraryCode) {
        this.libraryCode = libraryCode;
    }

    public Integer getBookNumber() {
        return bookNumber;
    }

    public void setBookNumber(Integer bookNumber) {
        this.bookNumber = bookNumber;
    }

    public String getBookshelfDescription() {
        return bookshelfDescription;
    }

    public void setBookshelfDescription(String bookshelfDescription) {
        this.bookshelfDescription = bookshelfDescription;
    }

    public String getBookshelfName() {
        return bookshelfName;
    }

    public void setBookshelfName(String bookshelfName) {
        this.bookshelfName = bookshelfName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}