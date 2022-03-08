package javaBeans;

import javax.persistence.*;

@Entity
@Table(name = "editor")
public class Editor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "editor_id", nullable = false)
    private Integer id;

    @Column(name = "editor_name", length = 60)
    private String editorName;

    @Column(name = "editor_address", length = 100)
    private String editorAddress;

    public String getEditorAddress() {
        return editorAddress;
    }

    public void setEditorAddress(String editorAddress) {
        this.editorAddress = editorAddress;
    }

    public String getEditorName() {
        return editorName;
    }

    public void setEditorName(String editorName) {
        this.editorName = editorName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}