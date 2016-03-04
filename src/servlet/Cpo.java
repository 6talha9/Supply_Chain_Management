package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DbOp;

/**
 * Servlet implementation class Cpo
 */
@WebServlet("/Cpo")
public class Cpo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cpo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int itm = Integer.parseInt(request.getParameter("itm"));
		int sup = Integer.parseInt(request.getParameter("sup"));
		int amnt = Integer.parseInt(request.getParameter("amnt"));
		int qtty = Integer.parseInt(request.getParameter("qtty"));
	
		PrintWriter out = response.getWriter();
		DbOp op = new DbOp();
		if(op.OcPO(itm,sup,amnt,qtty)){
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('Record Successfully Added!!!');");
				 out.println(" window.history.back();");
					 out.println("</script>");
		}
		else{
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('Record is Already there, try again!!!');");
				 out.println(" window.history.back();");
					 out.println("</script>");
		}

		
		
	}

}
