package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DbOp;

/**
 * Servlet implementation class Item
 */
@WebServlet("/Item")
public class Item extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Item() {
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
		// TODO Auto-generated method stub\
		
		String in = request.getParameter("in");
		String ib = request.getParameter("ib");
		String im = request.getParameter("im");
		String is1 = request.getParameter("is1");
		String is2 = request.getParameter("is2");
		String is3 = request.getParameter("is3");
		String slprc = request.getParameter("slprc");	
		PrintWriter out = response.getWriter();
		DbOp op = new DbOp();
		if(op.Ocitem(in,ib,im,is1,is2,is3,slprc)){
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
