package model;
import java.io.Serializable;

public class Sentence implements Serializable{
	private String sentence;

	public Sentence(String st) {
		this.sentence = st;
	}

	
	public String getSentence() {return sentence;}
	public void setSentence(String st) {this.sentence = st;}
}
