package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Question;
import dao.QuestionDAO;
import tool.Action;
public class AddAction extends Action{
	public String execute(
			HttpServletRequest request,HttpServletResponse response
			)throws Exception{
		try {
		String text = request.getParameter("text");
		int answer = Integer.parseInt(request.getParameter("answer"));
		String answer1 = request.getParameter("answer1");
		String answer2 = request.getParameter("answer2");
		String answer3 = request.getParameter("answer3");
		String answer4 = request.getParameter("answer4");
		int score = Integer.parseInt(request.getParameter("score"));
		int genre_id = Integer.parseInt(request.getParameter("genre_id"));

		if(genre_id == 0 || answer4 == "" || answer3 == "" || answer2 == "" || answer1 == "" ||text == ""  ) {
			return "error.jsp";
		}

		if(text.length() > 256 || answer1.length() >  100 || answer2.length() >100 || answer3.length() > 100 || answer4.length() > 100) {
			return "error-text.jsp";
		}
		Question q = new Question();
		q.setText(text);
		q.setAnswer(answer);
		q.setAnswer1(answer1);
		q.setAnswer2(answer2);
		q.setAnswer3(answer3);
		q.setAnswer4(answer4);
		q.setScore(score);
		q.setGenreId(genre_id);
		QuestionDAO dao = new QuestionDAO();
		dao.insert(q);

		return "create.jsp";

		}catch(IllegalArgumentException e){
			return "error.jsp";
		}
	}

}
