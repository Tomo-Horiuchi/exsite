package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Question;
public class QuestionDAO extends DAO{
	public List<Question> extaraction(int genreId) throws Exception{
		List<Question> list = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement("select * from question where genre_id = ? order by rand() limit 10");
		st.setInt(1, genreId);
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			Question q = new Question();
			q.setId(rs.getInt("id"));
			q.setText(rs.getString("text"));
			q.setAnswer(rs.getInt("answer"));
			q.setAnswer1(rs.getString("answer1"));
			q.setAnswer2(rs.getString("answer2"));
			q.setAnswer3(rs.getString("answer3"));
			q.setAnswer4(rs.getString("answer4"));
			q.setScore(rs.getInt("score"));
			q.setGenreId(rs.getInt("genre_id"));
			list.add(q);
		}

		st.close();
		con.close();

		return list;
	}

	public List<Question> search(int genreId) throws Exception{
		List<Question> list = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement("select * from question where genre_id = ? ");
		st.setInt(1, genreId);
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			Question q = new Question();
			q.setId(rs.getInt("id"));
			q.setText(rs.getString("text"));
			q.setAnswer(rs.getInt("answer"));
			q.setAnswer1(rs.getString("answer1"));
			q.setAnswer2(rs.getString("answer2"));
			q.setAnswer3(rs.getString("answer3"));
			q.setAnswer4(rs.getString("answer4"));
			q.setScore(rs.getInt("score"));
			q.setGenreId(rs.getInt("genre_id"));
			list.add(q);
		}

		st.close();
		con.close();

		return list;
	}
	public int insert(Question question) throws Exception{
		Connection con  = getConnection();

		PreparedStatement st = con.prepareStatement("insert into question values(null,?,?,?,?,?,?,?,?)");
		st.setString(1,question.getText());
		st.setInt(2, question.getAnswer());
		st.setString(3, question.getAnswer1());
		st.setString(4, question.getAnswer2());
		st.setString(5, question.getAnswer3());
		st.setString(6, question.getAnswer4());
		st.setInt(7, question.getScore());
		st.setInt(8, question.getGenreId());
		int line = st.executeUpdate();

		st.close();
		con.close();
		return line;
	}

	public int delete(Question question) throws Exception{
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement("delete from question where id=?");
		st.setInt(1, question.getId());
		int line = st.executeUpdate();
				st.close();
				con.close();
				return line;

	}

	public int update(Question question) throws Exception{
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement(
				"update question set text=?,answer=?,answer1=?,answer2=?,answer3=?,answer4=?,score=?,genre_id=? where id=?");
		st.setString(1,question.getText());
		st.setInt(2, question.getAnswer());
		st.setString(3, question.getAnswer1());
		st.setString(4, question.getAnswer2());
		st.setString(5, question.getAnswer3());
		st.setString(6, question.getAnswer4());
		st.setInt(7, question.getScore());
		st.setInt(8, question.getGenreId());
		st.setInt(9, question.getId());
		int line = st.executeUpdate();

		st.close();
		con.close();
		return line;

	}
}
