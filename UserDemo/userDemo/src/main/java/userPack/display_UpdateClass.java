package userPack;

public class display_UpdateClass {
	private String userid;
	private String name;
	private String email;
	private String inquiry;
	
	public display_UpdateClass() {  //default constructor
		
	}
	public display_UpdateClass(String userid, String name, String email, String inquiry) {  //overloading constructor
		super();
		this.userid = userid;
		this.name = name;
		this.email = email;
		this.inquiry = inquiry;
	}

	//getters to return values
	public String getUserid() {
		return userid;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getInquiry() {
		return inquiry;
	}


	
	
}
