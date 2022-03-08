import javaBeans.*;
import modele.CommonDAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class test {
    public static void main(String[] args) {
        CommonDAO commonDAO = new CommonDAO<>();

        ArrayList<BookAuthor> resultList= (ArrayList) commonDAO.getEntityManager().
                createQuery("from BookAuthor ")
                .getResultList();

        System.out.println(resultList.get(0).getAuthor().getAuthorFirstname() + " : book" +
                resultList.get(0).getIsbn().getBookTitle());

        /*BookAuthor bookAuthor = new BookAuthor();
        for (int i = 0; i < 4; i ++) {

            bookAuthor.setIsbn(books.get(i));
            commonDAO.create(bookAuthor);
        }
        commonDAO.commit();

       ArrayList<Book> books = (ArrayList<Book>) commonDAO.getEntityManager().
                createQuery("select b from Book b inner join BookAuthor")
                .getResultList();
        books.forEach(book -> System.out.println(book));*/
    }
}
