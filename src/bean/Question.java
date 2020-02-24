package bean;

public class Question {
	private int id;
	private String text;
	private int answer;
	private String answer1;
	private String answer2;
	private String answer3;
	private String answer4;
	private int score;
	private int genre_id;

	public Question() {

	}
	public Question(int i, String t, int a,String a1,String a2,String a3,String a4,int s,int g){
		this.genre_id = i;
		this.text = t;
		this.answer = a;
		this.answer1 = a1;
		this.answer2 = a2;
		this.answer3 = a3;
		this.answer4 = a4;
		this.score = s;
		this.genre_id = g;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int i) {
		this.id = i;
	}

	public String getText() {
		return this.text;
	}

	public void setText(String t) {
		this.text = t;
	}

	public int getAnswer() {
		return this.answer;
	}

	public void setAnswer(int a) {
		this.answer = a;
	}

	public String getAnswer1() {
		return this.answer1;
	}

	public void setAnswer1(String a1) {
		this.answer1 = a1;
	}

	public String getAnswer2() {
		return this.answer2;
	}

	public void setAnswer2(String a2) {
		this.answer2 = a2;
	}

	public String getAnswer3() {
		return this.answer3;
	}

	public void setAnswer3(String a3) {
		this.answer3 = a3;
	}

	public String getAnswer4() {
		return this.answer4;
	}

	public void setAnswer4(String a4) {
		this.answer4 = a4;
	}

	public int getScore() {
		return this.score;
	}

	public void setScore(int s) {
		this.score = s;
	}

	public int getGenreId() {
		return this.genre_id;
	}

	public void setGenreId(int g) {
		this.genre_id = g;
	}
}
