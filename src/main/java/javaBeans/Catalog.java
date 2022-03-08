package javaBeans;

import javax.persistence.*;

@Entity
@Table(name = "catalog")
public class Catalog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "catalog_id", nullable = false)
    private Integer id;

    @Column(name = "catalog_name", length = 50)
    private String catalogName;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "library_code")
    private Library libraryCode;

    public Library getLibraryCode() {
        return libraryCode;
    }

    public void setLibraryCode(Library libraryCode) {
        this.libraryCode = libraryCode;
    }

    public String getCatalogName() {
        return catalogName;
    }

    public void setCatalogName(String catalogName) {
        this.catalogName = catalogName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}