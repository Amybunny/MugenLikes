package servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
		
		HttpSession session = request.getSession();
		EV ev = (EV) session.getAttribute("EV");
		
		request.setCharacterEncoding("UTF-8");
		//いいねボタンが押されていたら、変数actionにそのデータを入れる
		String action = request.getParameter("likebtn");

		//EVLogicクラスのインスタンスを生成する
		EVLogic evLogic = new EVLogic();
		//いいねボタンが押されていたら、EVLogicクラスのlikeメソッドを使っていいね数を増やす
		if(action != null) {
			evLogic.like(ev);
		}

		//いいねが増えたevをsessionに保存する
		session.setAttribute("EV",ev);

		
		PrintWriter out = response.getWriter();
		out.print(ev.getLike());
		System.out.println(ev.getLike());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//セッションスコープから値を取り出して、変数sessionに入れる
		HttpSession session = request.getSession();
		//session内で"EV"と名のついたオブジェクトを、変数evに入れる
		EV ev = (EV) session.getAttribute("EV");

		//evが空だったら、EVクラスのインスタンスを生成する
		if(ev == null) {
			ev = new EV();
		}

		request.setCharacterEncoding("UTF-8");

		//POST送信で送られてきた文章を、変数sentenceに入れる
		String sentence = request.getParameter("sentence");
		//送信ボタンの値を、変数submitに入れる
		String submit = request.getParameter("submit");
		Sentence st = null;
		//"サンプル文を使う"というボタンが押されていたら、ランダムに選んだ例文を変数stに入れる。
		if(submit.equals("サンプル文を使う")) {
			int r = new java.util.Random().nextInt(3);
			st = new Sentence(example[r]);
		//ユーザーによって文章が入力されていたら、それを変数stに入れる。
		}else{
			st = new Sentence(sentence);
		}

		//文章とEVインスタンスをセッションに保存する
		session.setAttribute("sentence", st);
		session.setAttribute("EV", ev);

		//main.jspにフォワードする
		RequestDispatcher rd = request.getRequestDispatcher("/main.jsp");
		rd.forward(request, response);
	}

}
