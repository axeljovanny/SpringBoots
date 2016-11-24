package boots.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity (name="pubs")
public class Pub {

	@Id @GeneratedValue (strategy=GenerationType.IDENTITY)
	private int id;
	@Column (length=50)
	private String name;
	@Column (length=50)
	private String type;
	@Column (length=50)
	private String permission;
	@Column (length=50)
	private String address;
	@Column (length=50)
	private String schedule;


	

	public Pub( String name, String type, String permission, String address, String schedule) {
		super();
		
		this.name = name;
		this.type = type;
		this.permission = permission;
		this.address = address;
		this.schedule = schedule;
	}




	public Pub(){this("","","","","");}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getType() {
		return type;
	}




	public void setType(String type) {
		this.type = type;
	}




	public String getPermission() {
		return permission;
	}




	public void setPermission(String permission) {
		this.permission = permission;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	public String getSchedule() {
		return schedule;
	}




	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}




	@Override
	public String toString() {
		return "Pub [id=" + id + ", name=" + name + ", type=" + type + ", permission=" + permission + ", address="
				+ address + ", schedule=" + schedule + "]";
	}

	
	
	
}