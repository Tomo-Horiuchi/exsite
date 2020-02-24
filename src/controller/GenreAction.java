package controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Genre;
import dao.GenreDAO;
import tool.Action;
public class GenreAction extends Action{
	public String execute(
			HttpServletRequest request, HttpServletResponse response
			)throws Exception{

		GenreDAO dao = new GenreDAO();
		List<Genre> list = dao.searchGenre();

		request.setAttribute("list", list);
		return "mypage.jsp";
	}
}
