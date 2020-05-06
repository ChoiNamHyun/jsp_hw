package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class BookDAO {
	 public static List<Book> findAll() throws Exception {
	        String sql = "SELECT b.*, d.departmentName " +
	                     "FROM user u LEFT JOIN department d ON u.departmentId = d.id";
	        try (Connection connection = DB.getConnection("Book");
	             PreparedStatement statement = connection.prepareStatement(sql);
	             ResultSet resultSet = statement.executeQuery()) {
	            ArrayList<Book> list = new ArrayList<Book>();
	            while (resultSet.next()) {
	            	Book book = new Book();
	            	book.setId(resultSet.getInt("id"));
	                book.setTitle(resultSet.getString("title"));
	                book.setAuthor(resultSet.getString("author"));
	                book.setCatagoryName(resultSet.getString("catagoryName"));
	                book.setPublisher(resultSet.getString("publisher"));

	                list.add(book);
	            }
	            return list;
	        }
	    }
}
