package model;
import java.io.Serializable;

public class EV implements Serializable{
	private int like;

	public EV() {
		like = 0;
	}

	
	public int getLike() {return like;}
	public void setLike(int like) {this.like = like;}
}
