package javaBeans;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "book_basket")
public class BookBasket {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_basket_id", nullable = false)
    private Integer id;

    @Column(name = "creation_date")
    private LocalDate creationDate;

    @Column(name = "delivery_date")
    private LocalDate deliveryDate;

    public LocalDate getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(LocalDate deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public LocalDate getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(LocalDate creationDate) {
        this.creationDate = creationDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}