package Model.BEAN;

public class user {
	int id;
	String name, username, password;
	
	public user() {}
	
	public user(int ID, String Name, String Username, String Password){
		this.id = ID;
		this.name = Name;
		this.username = Username;
		this.password = Password;
	}
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
