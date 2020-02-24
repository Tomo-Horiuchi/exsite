package bean;

public class Genre {
	private int id;
	private String genre_name;

	public Genre() {

	}
	public Genre(int i,String g){
		this.id = i;
		this.genre_name = g;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int i) {
		this.id = i;
	}

	public String getGenreName() {
		return this.genre_name;
	}

	public void setGenreName(String g) {
		this.genre_name = g;
	}
}
