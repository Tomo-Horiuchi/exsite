package controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Question;
import dao.QuestionDAO;
import tool.Action;
public class FixAction extends Action{
	public String execute(
			HttpServletRequest request, HttpServletResponse rsponse
			)throws Exception{

		int genre_id = Integer.parseInt(request.getParameter("genre_id"));
		QuestionDAO dao = new QuestionDAO();
		List<Question>list=dao.search(genre_id);

		request.setAttribute("fix_list", list);
		return "fix2.jsp";
	}

}
