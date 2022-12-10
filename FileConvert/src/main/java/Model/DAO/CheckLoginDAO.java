package Model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import Model.BEAN.user;

public class CheckLoginDAO {
	static String DB_URL = "jdbc:mysql://localhost:3306/fileconvert";
	static String USER_NAME = "root";
	static String PASSWORD = "";
	
    public user CheckLogin(String username, String password) {
    	user User = null;
    	Vector<user> ListUser = new Vector<user>();
		if(!username.equals("") && !password.equals("")){
			try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
	            Statement stmt = conn.createStatement();
	            // get data from table 'student'
	            ResultSet rs = stmt.executeQuery("select * from user");
	            while (rs.next()) {
	            	user us = new user(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
	            	ListUser.add(us);
	            }
	            // close connection
	            conn.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
			for(user u:ListUser) {
				if(u.getUsername().equals(username) && u.getPassword().equals(password)) {
					User = u;
				}
			}
		}
		return User;
	}
	
}
