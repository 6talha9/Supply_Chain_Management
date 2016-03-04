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
 * Servlet implementation class Ship
 */
@WebServlet("/Ship")
public class Ship extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ship() {
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

		int id1 =Integer.parseInt( request.getParameter("id"));

		String mode1 = request.getParameter("mode1");
		int cost1 = Integer.parseInt(request.getParameter("cost1"));
		String date1 = request.getParameter("date1");
	
		String frm = request.getParameter("frm");
		System.out.println(" check22222...");
		String to = request.getParameter("to");
			System.out.println(" check22222...");
			PrintWriter out = response.getWriter();
			DbOp op = new DbOp();
			if(frm!=null){

			if(op.mngrcpoship(id1,mode1,cost1,date1,frm)){
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
			else{if(to!=null){
			
		
			
			if(op.mngrcsoship(id1,mode1,cost1,date1,to)){
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
		
		
	}

}
