package ModelDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import Entity.student;

public class Insertdata {

   // insert the student data
	
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
	
	// read all student from the database
	
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
	
	
	// update Student

	public int updateStudent(student s) {
		int i = 0;
		Connection con = Dbutil.makeConnection();
		try {
			PreparedStatement pst =con.prepareStatement(
			"update student set name=?, age=?, course=? where id=?");
			pst.setString(1, s.getName());
			pst.setInt(2, s.getAge());
			pst.setString(3, s.getCourse());
			pst.setInt(4, s.getId());
			i = pst.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	


	// delete data

	public int deleteStudent(int id) {
		int i = 0;
		Connection con = Dbutil.makeConnection();
		try {
			PreparedStatement pst =con.prepareStatement("delete from student where id=?");
			pst.setInt(1, id);
			i = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	
}
