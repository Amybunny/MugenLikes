package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.EV;
import model.EVLogic;
import model.Sentence;


@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public final String[] example = {"月曜日がはじマンデイ","ぴーりかぴりららぽぽりなぺーぺるとー","地球は青かった"};

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//セッションスコープに保存されたいいね数を取得
		HttpSession session = request.getSession();
		EV ev = (EV) session.getAttribute("EV");


		//リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

		//いいねの増加処理
		EVLogic evLogic = new EVLogic();
		if(action != null) {
			evLogic.like(ev);
		}

		//セッションスコープにいいね数を保存
		session.setAttribute("EV",ev);

		//フォワード
		RequestDispatcher rd = request.getRequestDispatcher("/main.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();

		EV ev = (EV) session.getAttribute("EV");

		if(ev == null) {
			ev = new EV();
		}

		request.setCharacterEncoding("UTF-8");
		String sentence = request.getParameter("sentence");
		String submit = request.getParameter("submit");
		Sentence st = null;
		if(submit.equals("サンプル文を使う")) {
			int r = new java.util.Random().nextInt(3);
			st = new Sentence(example[r]);
		}else{
			st = new Sentence(sentence);
		}

		session.setAttribute("sentence", st);
		session.setAttribute("EV", ev);

		RequestDispatcher rd = request.getRequestDispatcher("/main.jsp");
		rd.forward(request, response);
	}

}
