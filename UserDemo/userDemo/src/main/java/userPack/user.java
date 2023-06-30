package userPack;

public class user {
	private int userid;
	private String name;
	private String uEmail;
	private String uPhone;
	private String uname;
	private String pwd;         //password
	
	
	//User Constructor
	public user(int userid, String name, String uEmail, String uPhone, String uname, String pwd) {
		super();
		this.userid = userid;
		this.name = name;
		this.uEmail = uEmail;
		this.uPhone = uPhone;
		this.uname = uname;
		this.pwd = pwd;
	}
	
	//Getters to return values
	
	public int getUserid() {
		return userid;
	}

	public String getName() {
		return name;
	}

	public String getuEmail() {
		return uEmail;
	}

	public String getuPhone() {
		return uPhone;
	}

	public String getUname() {
		return uname;
	}

	public String getPwd() {
		return pwd;
	}
	
}
