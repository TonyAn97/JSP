package action;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloAct
 */
@WebServlet("/hello.do")
public class HelloAct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 서블릿(server + let)
		 - 서버에서 실행되는 서비스 객체
		 사용자가 요구하는 결과를 보내주는 객체
		 -웹 응용프로그램을 만드는 자바 기술이며 실행 결과값을 html구조로 변환한다.
		 -자바 언어로 작성되어 자바의 일반적인 특징을 모두 갖는다. (객체지향)
		 -스레드로 처리한다.
		 * */
		
		//request : 요청처리객체 - 외부에서 넘어온 파라미터등의 요청을 받는 객체
		//response : 응답처리객체 - 처리된 결과를 반환하기 위한 객체
		
		//접속한 사용자의 ip
		String ip = request.getRemoteAddr();
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<body>");
		out.printf("<h1>%s</h1>", ip);
		out.println("</body>");
		out.println("</html>");
	}
}
