package action;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculatorAct
 */
@WebServlet("/calc.do")
public class CalculatorAct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//calc.do?su1=3&su2=4
		int su1 = Integer.parseInt(request.getParameter("su1"));
		int su2 = Integer.parseInt(request.getParameter("su2"));
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("+결과 : " + (su1 + su2) + "<br>");
		out.println("-결과 : " + (su1 - su2) + "<br>");
		out.println("*결과 : " + (su1 * su2) + "<br>");
		out.println("/결과 : " + (su1 / su2) + "<br>");
		out.println("</body>");
		out.println("</html>");
		
		
	
		
	}

}
