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
 * Servlet implementation class Supp
 */
@WebServlet("/Supp")
public class Supp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Supp() {
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
		PrintWriter out = response.getWriter();
		PrintWriter out1 = response.getWriter();
		String nm = request.getParameter("nm");
		
		String Mob = request.getParameter("Mob");
		String email = request.getParameter("email");
		String Add = request.getParameter("Add");
		//String itm[]={request.getParameter("MainBoard"),request.getParameter("Processor"),request.getParameter("RAM"),request.getParameter("Hard Disk"),request.getParameter("DVD ROM"),request.getParameter("SMPS"),request.getParameter("FAN"),request.getParameter("graphic Card"),request.getParameter("LAN CARD"),request.getParameter("Sound Card"),request.getParameter("Cabinate"),request.getParameter("Monitor"), request.getParameter("Speaker"),request.getParameter("Keyboard"),request.getParameter("Mouse"),request.getParameter("Head Set"),request.getParameter("Other")};
		
		//Integer[] itmcln=new Integer[17];
		String select[] = request.getParameterValues("itm"); 
		if (select != null && select.length != 0) {
		//out.println("You have selected: ");
	}
		else{
			out.println("alert('please Select atleast one item');");
			out.println("window.history.back();");
		
		}
		/*int j=0;
		for(int i=0;i<itm.length;i++){if(!itm[i].equals("default")){
			
			itmcln[j]=Integer.parseInt(itm[i]);j++;	
			System.out.println(request.getParameter("MainBoard")+request.getParameter("RAM"));
		}
		}
*/		System.out.println("hahaha");
		
	
		
		DbOp op = new DbOp();
		if(op.OcSupplier(nm,Mob,email,Add,select))
			
		{
			out1.println("<script type=\"text/javascript\">");
			   out1.println("alert('Record Successfully Added!!!');");
				 out1.println(" window.history.back();");
					 out1.println("</script>");
		}
		else{
			out1.println("<script type=\"text/javascript\">");
			   out1.println("alert('Record is Already there, try again!!!');");
				 out1.println(" window.history.back();");
					 out1.println("</script>");
		}
	}

}
