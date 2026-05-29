package Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class student {

	private int id;
	private String name;
	private int age;
	private String course;

	public student(String name, int age, String course) {

		super();
		this.name = name;
		this.age = age;
		this.course = course;
	}

	
	
}