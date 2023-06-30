package userPack;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userDBUtil {
	
	//Create objects for connection, statement, ResultSet
	private static boolean success;
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	
	//This method for Log-in page
	public static List<user> validate(String userName, String password){ 

		//Put User details to an ArrayList
		ArrayList<user> us = new ArrayList<>();
		
		
		//Try Catch block to display error if error occurs
		try {
			
			//DB connection using con object
			con = DB_Connection.createConnection();  //call getConnection() from DB_Connection.java class
			st = con.createStatement();
			
			//SQL Query
			String sql = "select * from user where uname = '"+userName+"' and pwd ='"+password+"'";
			
			//Result to run query
			rs = st.executeQuery(sql);
			
			//If user details Valid
			if(rs.next()) {
				int userid = rs.getInt(1);     //get user details by columns
				String name = rs.getString(2);
				String uEmail = rs.getString(3);
				String uPhone = rs.getString(4);
				String uname = rs.getString(5);
				String pwd = rs.getString(6);
				
				//Create object for class user
				user u = new user(userid, name, uEmail, uPhone, uname, pwd);
				
				//Pass user object to ArrayList object
				us.add(u);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return us;  //Return Customer array object
	}
	
	
	
	//This method for Help & Support page
	public static boolean helpUser(String userid,String name, String email, String inquiry) {
		
		boolean success = false;
		
		try {
			
			con = DB_Connection.createConnection();
			st = con.createStatement();
			
			//SQL Query
			String sql = "insert into help_support values ('"+userid+"', '"+name+"', '"+email+"', '"+inquiry+"')";
		
			int res = st.executeUpdate(sql);  		
			//if res return 1-Success / return 0-Unsuccess
			
			if(res > 0) {  //if successfully data inserted
				success = true;
				
			}else {
				success = false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}	
		
		return success;
	}
	
	
	
	
	//For update help & Sup
	
		public static List<display_UpdateClass> helpvalidate(String userid, String name, String email, String inquiry){ 

			//Put details to an ArrayList and create object
			ArrayList<display_UpdateClass> hupdate = new ArrayList<>();
			
			
			//Try Catch block to display error if error occurs
			try {
				
				//DB connection using con object
				con = DB_Connection.createConnection();  //call getConnection() from DB_Connection.java class
				st = con.createStatement();
				
				//SQL Query
				String sql = "select * from help_support where userid = '"+userid+"'"; 
				//and name = '"+name+"' and email ='"+email+"' and inquiry = '"+inquiry+"'";
				
				//Result to run query
				rs = st.executeQuery(sql);
				
				//If user details Valid
				while(rs.next()) {
					
					//System.out.println(rs.getString(1));
					String uid = rs.getString(1);     //get user details by columns
					String uname = rs.getString(2);
					String uemail = rs.getString(3);
					String uinquiry = rs.getString(4);
					
					//Create object for class help_sup_update
					display_UpdateClass hel = new display_UpdateClass(uid, uname, uemail, uinquiry);
					
					//Pass user object to ArrayList object
					hupdate.add(hel);
				}
				
			}catch(Exception e) {
				e.printStackTrace();     //print error if error occurred
			}
			
			return hupdate;  //Return help_sup_update array object
		}
	
		
		
		
		//For Now update help & Sup
		public static boolean updateHelpSup(String userid, String name, String email, String inquiry) {
			
			//Try Catch block to display error if error occurs
			try {
				
				//DB connection using con object
				con = DB_Connection.createConnection();  //call getConnection() from DB_Connection.java class
				st = con.createStatement();
				
				//SQL Query
				String sql = "update help_support set userid='"+userid+"',name='"+name+"',email='"+email+"',inquiry='"+inquiry+"' where userid = '"+userid+"'";
				
				int res = st.executeUpdate(sql);  
				
				//if res return 1-Success / return 0- Unsuccess
				
				if(res > 0) {  //if successfully data inserted
					success = true;
					
				}else {
					success = false;
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return success;
	
		}
		
		
		
		//For Retrive Data to Delete
		public static List<display_UpdateClass> getDetails(String userid){
			ArrayList<display_UpdateClass> arrList = new ArrayList<>();
			
			try {
				
				//DB connection using con object
				con = DB_Connection.createConnection();  //call getConnection() from DB_Connection.java class
				st = con.createStatement(); 
				
				//Sql query
				String sql = "select * from help_support where = '"+userid+"'";
				
				//Result to run query
				rs = st.executeQuery(sql);
				
				while(rs.next()) {
					String id = rs.getString(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String inquiry = rs.getString(4);
					
					display_UpdateClass du = new display_UpdateClass(id, name, email, inquiry);
					arrList.add(du);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return arrList;  //Return Array List
		}
		
		
		//Delete Data method
		public static boolean deleteHelpSup(String userid) {
			
			try {
				
				//DB connection using con object
				con = DB_Connection.createConnection();  //call getConnection() from DB_Connection.java class
				st = con.createStatement();
				
				//Sql Query
				String sql = "delete from help_support where userid = '"+userid+"'";
				
				int res = st.executeUpdate(sql); 
				
				//if res return 1-Success / return 0- Unsuccess
				
				if(res > 0) {  //if successfully data inserted
					success = true;
					
				}else {
					success = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return success;    //Return result True,False
		}

}
















