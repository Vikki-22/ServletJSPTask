package ModelDao;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import Entity.student;

public class Insertdata {

   // insert data using this method
	
	public int insert(student s) {
		
		int i=0;
		Connection con = Dbutil.makeConnection();
		try {
			PreparedStatement pst=con.prepareStatement("insert into student(name,age,course) values (?,?,?)");
			pst.setString(1, s.getName());
			pst.setInt(2, s.getAge());
			pst.setString(3, s.getCourse());
			i=pst.executeUpdate();
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
		
	}
	
	// read all data from the database
	
	public LinkedList<student> getAllStudents() {

	    LinkedList<student> ls =
	    new LinkedList<>();
	    
	    try {
	    	Connection con =ModelDao.Dbutil.makeConnection();
			PreparedStatement ps=con.prepareStatement("select * from student");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				ls.add(new student(
						rs.getInt("id"),
						rs.getString("name"),
						rs.getInt("age"),
						rs.getString("course")));
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    

	    return ls;
	}
}
