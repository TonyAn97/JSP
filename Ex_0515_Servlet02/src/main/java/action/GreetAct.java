package action;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GreetAct
 */
@WebServlet("/greet.do")
public class GreetAct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//greet.do?nation=eng
		//클라이언트에서 넘어온 파라미터 정보를 받는다
		//매우매우먀우매우매우중요 필히알아야함
		String nation = request.getParameter("nation");

		String msg = "";
		
		//greet.do? -> null
		//greet.do?nation= -> "" 또는 empty
		if(nation == null || nation.isEmpty()) {
			nation = "kor";
		}
		
		if(nation.equals("kor") ) {
			msg = "여기는 한국어 페이지";
		}else if(nation.equals("eng")) {
			msg = "여기는 영문 페이지";
		}else if(nation.equals("jpn")) {
			msg = "여기는 일본어 페이지";
		}
		
		//msg를 전송(응답)
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println(msg);
		out.println("</body>");
		out.println("</html>");
		
	}

}
