package model;


public class EVLogic {
	public void like(EV ev) {
		int count = ev.getLike();
		ev.setLike(count + 1);
	}
}
