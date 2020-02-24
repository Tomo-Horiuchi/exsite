package controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.User;
import dao.UserDAO;
import tool.Action;

public class LoginAction extends Action{

	public String execute(HttpServletRequest request,HttpServletResponse response)throws Exception{

		HttpSession session=request.getSession();
		request.setCharacterEncoding("UTF-8");

		String mailaddress=request.getParameter("mailaddress");
		String password=request.getParameter("password");

		UserDAO dao=new UserDAO();
		User user=dao.search(mailaddress,password);

		if(user!=null){
			session.setAttribute("user", user);
			return "login-out.jsp";
		}



	return "login_error.jsp";
}
}