package controller;



import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import dao.UserDAO;
import tool.Action;

public class NewUserAction extends Action{


	public String execute(HttpServletRequest request,HttpServletResponse response)throws Exception{


		String mailaddress=request.getParameter("mailaddress");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		HttpSession session=request.getSession();

		request.setCharacterEncoding("UTF-8");


		@SuppressWarnings("unchecked")
		List<User>user=(List<User>)session.getAttribute("user");
		if(user.isEmpty()) {
			user=new ArrayList<User>();
			session.setAttribute("user", user);
		}
	    User u=new User();
		u.setMailaddress(mailaddress);
		u.setPassword(password);
		u.setName(name);
		UserDAO dao=new UserDAO();
		dao.insert(u);
		session.setAttribute("user", user);



		//既に登録済みのアドレスはエラー表記
		if(mailaddress==null){
			return "resister_error.jsp";
		}


//パスワードは英数字8//

		Pattern checkPassword = Pattern.compile("[a-zA-Z0-9\\$!]{8,20}");
		if (checkPassword.matcher(password).matches()) {


		return "resister_out.jsp";
}
		return "resister_error2.jsp";


	}

	}




