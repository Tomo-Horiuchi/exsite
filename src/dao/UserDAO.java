package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.User;

public class UserDAO extends DAO{
	public User search(String password,String mailaddress)throws Exception{
		List<User> user=new ArrayList<>();

	User user1=null;

Connection con=getConnection();

PreparedStatement st;
st=con.prepareStatement("select*from user where password=? and mailaddress=?");

st.setString(1,password);
st.setString(2,mailaddress);

ResultSet rs=st.executeQuery();


while(rs.next()){
User u = new User();
u.setId( rs.getInt("id"));
u.setMailaddress(rs.getString("mailaddress"));
u.setPassword(rs.getString("password"));
u.setName(rs.getString("name"));

}
st.close();
con.close();
 return user1;
	}

	public int insert(User user)throws Exception{
		Connection con=getConnection();

		PreparedStatement st=con.prepareStatement(
				"insert into user values(null,?,?,?)");
		st.setString(1,user.getMailaddress());
		st.setString(2,user.getName());
		st.setString(3,user.getPassword());
int line =st.executeUpdate();



st.close();
con.close();
return line;

}


}
