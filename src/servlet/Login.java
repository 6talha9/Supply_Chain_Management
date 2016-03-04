package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DbOp;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {

	String name, pwd;
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String uname = request.getParameter("uname1");
		String pass = request.getParameter("pwd1");
		//String type = request.getParameter("id1");
		Cookie[] cookies = request.getCookies();
	

		String type = null;
		for(Cookie cookie : cookies){
		    if("usrtype".equals(cookie.getName())){
		        type = cookie.getValue();
		    }
		}

		DbOp op = new DbOp();
		ResultSet rs = op.login(uname, pass, type);
	
		
		try {
			HttpSession session = request.getSession();
			PrintWriter out = response.getWriter();
			if(rs.next())
			 {
			 name = rs.getString(4);
			 pwd = rs.getString(5);
			 
			if (type.equals("owner") && name.equals(uname) && pwd.equals(pass)){session.setAttribute("INOUT1", "in");response.sendRedirect("Ownerh.jsp");}
			if (type.equals("ship_mngr") && name.equals(uname) && pwd.equals(pass)){session.setAttribute("INOUT2", "in");response.sendRedirect("Mngrh.jsp");}
			if (type.equals("seller") && name.equals(uname) && pwd.equals(pass)){session.setAttribute("INOUT3", "in");response.sendRedirect("Sellerh.jsp");}
							
						}
		else{out.println("<script type=\"text/javascript\">");
		   out.println("alert('User Name or Password incorrect, Try Again.');");
			if (type.equals("owner")) out.println("window.history.back();");
			if (type.equals("ship_mngr"))out.println("window.history.back();");
			if (type.equals("seller"))out.println("window.history.back();");//("location='Login.jsp';");
			 out.println("</script>");
		
		}
				
			
			/*
			 * if(name.equals(uname) && pwd.equals(pass)) { if(type.equals("1"))
			 * { response.sendRedirect("Ownerh.jsp");
			 * }else{if(type.equals("2")){response.sendRedirect("Mngrh.jsp");
			 * } else{response.sendRedirect("Sellerh.jsp");} } } else {
			 * //response.sendError(404, "wrong"); //
			 * response.sendRedirect("index.jsp"); //alert('Wrong Username or
			 * Password. Try again');
			 * 
			 * response.sendRedirect("index.jsp");
			 * 
			 * 
			 * }
			 */
		} catch (Exception e) {
			System.out.println("login.java");
			e.printStackTrace();
		
		}
	}

}
