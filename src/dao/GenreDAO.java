package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Genre;

public class GenreDAO extends DAO{

	public List<Genre> searchGenre()throws Exception{
		List<Genre> list = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st=con.prepareStatement("select * from genre");
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			Genre g = new Genre();
			g.setId(rs.getInt("id"));
			g.setGenreName(rs.getString("genre_name"));
			list.add(g);
		}

		st.close();
		con.close();

		return list;
	}
}
