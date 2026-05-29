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
	    LinkedList<student> ls =new LinkedList<>();
	    
	    try {
	    	Connection con =ModelDao.Dbutil.makeConnection();
			PreparedStatement ps=con.prepareStatement("select * from student");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				ls.add(new student(
						rs.getInt("id"),rs.getString("name"),rs.getInt("age"),rs.getString("course")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    

	    return ls;
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

	// GET STUDENT BY ID
	public student getStudentById(int id) {
		student s = null;
		try {
		Connection	con = Dbutil.makeConnection();
			String q ="select * from student where id=?";
			PreparedStatement ps =	con.prepareStatement(q);
			ps.setInt(1, id);
			ResultSet rs =ps.executeQuery();
			if (rs.next()) {
				String name =rs.getString("name");
				int age =rs.getInt("age");
				String course =rs.getString("course");
				s = new student(id,name,age,course
				);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}
	
	// UPDATE STUDENT
	public int updateStudent(student s) {
		int i = 0;
		try {
		Connection	con = Dbutil.makeConnection();
			String q ="update student set name=?, age=?, course=? where id=?";
			PreparedStatement ps =con.prepareStatement(q);
			ps.setString(1, s.getName());
			ps.setInt(2, s.getAge());
			ps.setString(3, s.getCourse());
			ps.setInt(4, s.getId());
			i = ps.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	
	//Search Box 
	public LinkedList<student> searchByName(String name) {
	    LinkedList<student> list = new LinkedList<>();
	    try {
	        Connection con = Dbutil.makeConnection();
	        String q = "SELECT * FROM student WHERE name LIKE ?";
	        PreparedStatement ps = con.prepareStatement(q);
	        ps.setString(1, name + "%"); 
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {student s = new student( rs.getInt("id"),rs.getString("name"),rs.getInt("age"), rs.getString("course") );
	            list.add(s);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return list;
	}
}
