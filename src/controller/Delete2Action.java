package controller;

import javax.servlet.http.*;
import bean.Question;
import dao.QuestionDAO;
import tool.Action;

public class Delete2Action extends Action{
	public String execute(
			HttpServletRequest request, HttpServletResponse response
			)throws Exception{

		int id = Integer.parseInt(request.getParameter("id"));

		Question q = new Question();
		q.setId(id);
		QuestionDAO dao = new QuestionDAO();
		dao.delete(q);

		return "create.jsp";
	}

}
