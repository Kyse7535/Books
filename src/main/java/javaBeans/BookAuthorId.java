package javaBeans;

import org.hibernate.Hibernate;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class BookAuthorId implements Serializable {
    private static final long serialVersionUID = -7595585826823475203L;
    @Column(name = "author_id", nullable = false)
    private Integer authorId;
    @Column(name = "isbn", nullable = false, length = 60)
    private String isbn;

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public Integer getAuthorId() {
        return authorId;
    }

    public void setAuthorId(Integer authorId) {
        this.authorId = authorId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(isbn, authorId);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        BookAuthorId entity = (BookAuthorId) o;
        return Objects.equals(this.isbn, entity.isbn) &&
                Objects.equals(this.authorId, entity.authorId);
    }
}