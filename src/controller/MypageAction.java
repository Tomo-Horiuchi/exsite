package controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Question;
import dao.QuestionDAO;
import tool.Action;



public class MypageAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response)throws Exception{
	HttpSession session=request.getSession();



	int genreId = Integer.parseInt(request.getParameter("genreId"));
	String genreName=(request.getParameter("genreName"));


	QuestionDAO dao = new QuestionDAO();
	List <Question> list = dao.search(genreId);

	session.setAttribute("genreName",genreName);
	session.setAttribute("question_list",list);
	return "question.jsp";
	}
}
