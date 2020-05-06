package lecture1.jdbc1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import lecture1.DB;

public class BookDAO {
	 public static List<Book> findAll() throws Exception {
	        String sql = "SELECT b.*, c.catagoryName " +
	                     "FROM book b LEFT JOIN catagory c ON b.catagoryId = c.id";
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
	        public static List<User> findByName(String name) throws Exception {
	            String sql = "SELECT u.*, d.departmentName " +
	                         "FROM user u LEFT JOIN department d ON u.departmentId = d.id " +
	                         "WHERE u.name LIKE ?";
	            try (Connection connection = DB.getConnection("student1");
	                 PreparedStatement statement = connection.prepareStatement(sql)) {
	                statement.setString(1, name + "%");
	                try (ResultSet resultSet = statement.executeQuery()) {
	                    ArrayList<User> list = new ArrayList<User>();
	                    while (resultSet.next()) {
	                    	User user = new User();
	                    	user.setUserid(resultSet.getString("userid"));
	                    	user.setName(resultSet.getString("name"));
	                    	user.setEmail(resultSet.getString("email"));
	                    	user.setDepartmentName(resultSet.getString("departmentName"));
	                    	user.setUserType(resultSet.getString("userType"));

	                        list.add(user);
	                    }
	                    return list;
	                }
	            }
	        }
	    }
