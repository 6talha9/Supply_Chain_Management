package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DbOp;

/**
 * Servlet implementation class Spo
 */
@WebServlet("/Spo")
public class Spoo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Spoo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("fuck1");
		//int id= Integer.parseInt(request.getQueryString());
		PrintWriter out = response.getWriter();
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('wolla!!');");
			 //out.println(" window.history.back();");
				 out.println("</script>");
		try{
		DbOp op = new DbOp();
		ResultSet rs = op.popitm();
		out.println("<option value=\"default\" >Select one--</option>");
		while(rs.next()){
			ResultSet rs2 = op.popitmpo2(rs.getString(1));
		out.println("<optgroup label="+rs.getString(1)+">");
				while(rs2.next()){ 
					out.println("<option value="+rs2.getString(1)+" "+rs2.getString(3)+" "+rs2.getString(4)+"</option></optgroup>");
         
}}}catch(SQLException e){
	System.out.println("fuck"+e);
}
		
		/*if(op.Spo(id1,mode1,cost1,date1,frm)){
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
		}*/

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
