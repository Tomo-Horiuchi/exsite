package controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Question;
import tool.Action;



public class QuestionAction extends Action {
	public String execute(HttpServletRequest request, HttpServletResponse response)throws Exception{
	HttpSession session=request.getSession();
	int i=0;
	int answer;
	int userAnswer;
	int score=0;
	//int missCount=0;
	int fullScore=0;
	String msg="    ";
	@SuppressWarnings("unchecked")
	List<Question> question_list=(List<Question>)session.getAttribute("question_list");
	List<Question> missList=new ArrayList<>();
	List<Integer> missAnswer=new ArrayList<>();


	for(Question q:question_list) {
		i++;
		answer=q.getAnswer();
		fullScore+=q.getScore();
		userAnswer=Integer.parseInt((request.getParameter("question"+i)));
		if(answer==userAnswer) {
			score+=q.getScore();
		}else {
			missList.add(q);
			missAnswer.add(userAnswer);
		//	missCount++;
		}
	}

	if(fullScore==score) {
		msg="conglatulations!";
	}else {
		//msg=missCount+"問間違えました";
	}

	session.setAttribute("msg",msg);
	session.setAttribute("score",score);
	session.setAttribute("missList",missList);
	session.setAttribute("missAnswer",missAnswer);
	return "result.jsp";
	}
}
