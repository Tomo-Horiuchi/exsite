package bean;

public class User implements java.io.Serializable{
	private int id;
	private String password;
	private String mailaddress;
	private String name;


	public int getId() {
		return id;

	}
	public String getPassword() {
		return password;
	}
	public String getMailaddress() {
		return mailaddress;
	}
	public String getName() {
		return name;
	}
	public void setId(int id) {
		this.id=id;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	public void setMailaddress(String mailaddress) {
		this.mailaddress=mailaddress;

	}
	public void setName(String name) {
		this.name=name;
	}

	}



