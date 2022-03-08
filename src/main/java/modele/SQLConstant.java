package modele;

public class SQLConstant {

    /**
     * Author Queries
     * */
    protected static final String SELECT_ALL_AUTHORS =
            "from Author ";

    protected static final String SELECT_ALL_AUTHORS_BY_ID = "select * from author where author_id= ? ;";

    protected static final String SLECT_ALL_BOOKS = "select * from book ";
    protected static final String INSERT_BOOK = "insert into book(isbn, book_title, book_description, " +
            "book_price, publication_date, catalog_id, editor_id) values(DEFAULT, ?, ?, ?, ?, ?, ?) ";

    protected static final String INSERT_MEMBER = "insert into member(member_id, member_lastname, member_firstname " +
            ", member_email, member_address, member_password) values(DEFAULT, ?, ?, ?, ?, '')";

    protected static final String SELECT_MEMBER = "select * from MEMBER where member_email = ? " +
            " and member_password=?";

    protected static final String INSERT_AUTHORS = "insert into author(author_id, author_lastname, " +
            "author_firstname) values(default, ?, ?)";

    protected static final String UPDATE_AUTHORS = "update author set author_lastname= ?, author_firstname=? " +
             "where author_id = ?";

    protected static final String DELETE_AUTHORS = "delete author where author_id = ?";


    protected static final String FIND_BY_EMAIL = "from Member where member_email = :email";
    protected static final String FIND_BOOKS_AND_AUTHORS = "from Book inner join BookAuthor";

}
