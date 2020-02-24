package controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tool.Action;



public class ForwardMypageAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response)throws Exception{
	HttpSession session=request.getSession();
	String name=(request.getParameter("name"));
	session.setAttribute("name",name);
	return "mypage.jsp";
	}
}
