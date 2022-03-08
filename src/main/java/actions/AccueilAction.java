package actions;

import com.opensymphony.xwork2.ActionSupport;
import javaBeans.Book;
import javaBeans.BookAuthor;
import modele.CommonDAO;

import java.sql.ResultSet;
import java.util.ArrayList;

public class AccueilAction extends ActionSupport {

    private CommonDAO commonDAO = new CommonDAO<>();
    private ArrayList<BookAuthor> bookAuthors;
    private ResultSet resultSet;

    public ResultSet getResultSet() {
        return resultSet;
    }

    public void setResultSet(ResultSet resultSet) {
        this.resultSet = resultSet;
    }

    public ArrayList<BookAuthor> getBookAuthors() {
        return bookAuthors;
    }

    public void setBookAuthors(ArrayList<BookAuthor> bookAuthors) {
        this.bookAuthors = bookAuthors;
    }

    @Override
    public String execute() throws Exception {

        bookAuthors = commonDAO.findAll("BookAuthor");

        return SUCCESS;
    }
}
