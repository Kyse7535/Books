package actions;

import com.opensymphony.xwork2.ActionSupport;
import javaBeans.Author;
import modele.CommonDAO;
import org.apache.struts2.ServletActionContext;

public class AuthorDetail extends ActionSupport {

    private Author author;

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    @Override
    public String execute() throws Exception {
        CommonDAO commonDAO = new CommonDAO<>();
        int author_id = Integer.parseInt(ServletActionContext.getRequest().getParameter("author_id"));
        author = (Author) commonDAO.findById(Author.class, author_id);
        return SUCCESS;
    }
}
