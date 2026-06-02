package ModelDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Entity.User;

public class userDao {

	public int usercreate(User u) {
		int i=0;
		try {
			Connection con=Dbutil.makeConnection();
			PreparedStatement ps=con.prepareStatement("insert into user(name , email , password ) values (?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			 i=ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return i;
	}

	public String login(String email) {
		String st="";
		try {
			Connection con=Dbutil.makeConnection();
			PreparedStatement ps=con.prepareStatement("select password from user where email=?");
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				st=rs.getString("password");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return st;
	}

}
