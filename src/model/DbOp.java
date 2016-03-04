package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.*;
//import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class DbOp  {
	//Class.forName("com.mysql.jdbc.Driver");
	//Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/scms","root","");
	//static String driver="com.mysql.jdbc.Driver";
	//static String user="root";
	//static String password="root";
	//static String url="jdbc:mysql://localhost:3306/40plus";
    
	static Connection con;
	PreparedStatement pstmt,pstmtt,pstmt1,pstmt2,pstmt3,pstmtupdate,pstmt4,pstmt5,pstmt6,pstmt7,pstmt8;
	static Statement stmt,stmt1,stmt2;
	ResultSet rs;ResultSet rs2,rs3,rs4,rs5;
	int result,result9;
	int result1,result2,result3,result4,result5,result6,result7,result8;
	//Date d=new Date();

	private static java.sql.Date getCurrentDate() {
	    java.util.Date today = new java.util.Date();
	    return new java.sql.Date(today.getTime());
	}
	
	static void drivermanager()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		 con =DriverManager.getConnection("jdbc:mysql://localhost:3306/pclscms","root","");
		}catch(Exception e)
		{System.out.println("connect prob");
			e.printStackTrace();
		}
	}
	public void close1()
	{
		
	    try { if (stmt != null) stmt.close(); } catch (Exception e) {};
	    try { if (con != null) con.close(); } catch (Exception e) {};
		 
		
	}
	

	
   public ResultSet login(String uname,String pass,String type)
   {
	   String user;
	   try
		{
			
			DbOp.drivermanager();
			/*if(type.equals("1")){
				
				user="owner";
			
				
			}
			else{
				if(type.equals("2")){user="ship_mngr";}
			else{user="seller";}
				}
			System.out.println(uname);
			System.out.println(pass);*/
			
			String loginquery = "select * from "+type+" where UserName = '"+uname+"' and Password = '"+pass+"'";
			stmt = con.createStatement();
			rs = stmt.executeQuery(loginquery);
		
		}catch(Exception e)
		{System.out.println("DbOp.java");
			e.printStackTrace();
		}
		 
	   return rs;
	
   }
   
   public ResultSet  OdCust(){
	   try
		{
			
			DbOp.drivermanager();
	   
	   String disp = "select distinct Customer_Id from so";
	   stmt = con.createStatement();
	   rs = stmt.executeQuery(disp);
		
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	   return rs;
	   
   }
   public ResultSet  OdCust1(int id){
	   try
		{
			
			DbOp.drivermanager();
	   
	   String disp = "select id,fname,lname,Mob,customer.RecDate,SO_Id from customer,so where so.Customer_Id=customer.id and id="+id;
	   stmt = con.createStatement();
	   rs2 = stmt.executeQuery(disp);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs2;
	   
   }
   public ResultSet  OdShipmngr(){
	   try
		{
			
			DbOp.drivermanager();
	   
	   String disp = "select * from ship_mngr";
	   stmt = con.createStatement();
	   
	   rs = stmt.executeQuery(disp);
	 //rs.next();
	   // System.out.println(rs.getString(4));
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	   return rs;

	   
   }
   
   public ResultSet  OdShopslr(){
	   try
		{
			
			DbOp.drivermanager();
	   
	   String disp = "select * from seller, shop where shop.id=seller.Shop_id";
	   stmt = con.createStatement();
	   rs = stmt.executeQuery(disp);
	   ResultSetMetaData rsMetaData = rs.getMetaData();

	    int numberOfColumns = rsMetaData.getColumnCount();
	    System.out.println("resultSet MetaData column Count=" + numberOfColumns);
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	   
	return rs;
	   
   }
   
   
   public ResultSet  OdShip(){
	   try
		{
			
			DbOp.drivermanager();
	   
	   String disp = "select * from shipment where Date is NOT NULL";
	   stmt = con.createStatement();
	   rs = stmt.executeQuery(disp);
	   
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs;
	   
   }
   
   public ResultSet  OdSup(){
	   try
		{
			
			DbOp.drivermanager();
	   int id;
	   String disp = "select id from supplier";
	    stmt = con.createStatement();
	   rs = stmt.executeQuery(disp);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs;
	   
   }
   public ResultSet  OdSup2(int id){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 = "select Id,Name,Address,Mob,Email,Item_Name from supplier s, sup_item, po_item i where s.id=sup_item.splr_id and sup_item.itm_name=i.Item_Name and id="+id;
	    stmt = con.createStatement();
	   rs2 = stmt.executeQuery(disp2);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs2;
	   
   }
   
   public ResultSet  Oditem(){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 = "select Item_Id from po_item" ;
	    stmt = con.createStatement();
	   rs2 = stmt.executeQuery(disp2);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  //
	return rs2;
	   
   }
   
   public ResultSet  Oditem2(int id){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 = "select 	Item_Id, Item_Name, Item_Brand, Item_Model, Item_Spec1,Item_Spec2,Item_Spec3,Unit_Item_Selling_Price,name from po_item pi,supplier s, sup_item si where pi.Item_Name=si.itm_name and si.splr_id=s.Id and Item_Id="+id ;
	    stmt = con.createStatement();
	   rs2 = stmt.executeQuery(disp2);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  // 
	return rs2;
	   
   }
   
   public ResultSet  OdPO(){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 = "select po.PO_Id,Item_Name,Item_Brand,Item_Model,name as Supplier_Name,Item_Price,Item_Quantity,Item_Price*Item_Quantity as Total_Amnt,ship.id as ShipmentID, Faulty_Items,Item_used, (Item_Quantity-Faulty_Items-Item_used) as In_Stock_Items, po.RecDate from po,po_item pi,supplier s,sup_item si,shipment ship,po_ship pos where po.Item_Id=pi.Item_Id and po.Supplier_Id=s.Id and po.PO_Id=pos.PO_Id and pos.ship_id=ship.Id group by po.PO_Id" ;
	    stmt = con.createStatement();
	   rs2 = stmt.executeQuery(disp2);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs2;
	   
   }
   public ResultSet  OdSO(){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 = "select so.SO_Id, area, fname, Item_Name,Unit_Item_Price, Item_Quantity, ServiceCharge, Unit_Item_Price * Item_Quantity+ServiceCharge as Total_Amount,WarrantyMnths, SO_Status,ship.id as ShipmentID, Selling_Date,so.RecDate from so,so_item si,shop sh,customer c,so_ship sos,shipment ship where so.Shop_id=sh.Id and so.Customer_Id=c.id and so.Item_Id=si.Item_Id and so.SO_Id=sos.SO_Id and sos.ship_id=ship.id group by so.SO_Id" ;
	    stmt = con.createStatement();
	   rs2 = stmt.executeQuery(disp2);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs2;
	   
   }
  
  
   
   public ResultSet  mngr_h(){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 = "SELECT distinct po.PO_Id,po.Item_Id,Item_Name,name,Address as Source,ship_id from po,po_item,supplier,po_ship LEFT JOIN shipment on po_ship.ship_id=shipment.id where po.Item_Id= po_item.Item_Id and po.PO_Id=po_ship.PO_Id and po.Supplier_Id=supplier.Id and shipment.Date is NULL"; 
	    stmt = con.createStatement();
	   rs = stmt.executeQuery(disp2);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs;
	   
   }
   
   
   public ResultSet  mngr_h2(){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 ="select so.SO_Id,so.Item_Id,Item_Name, Address as Distination,ship_id from so,so_item,shop,so_ship LEFT JOIN shipment on so_ship.ship_id=shipment.id where so.Item_Id= so_item.Item_Id and so.Shop_id= shop.id and shipment.Date is NULL"; //"select SO_Id,so.Item_Id,Item_Name, Address as Distination from so,so_item,shop LEFT JOIN so_ship on SO_Id = so_ship.SO_Id where so.Item_Id= so_item.Item_Id and so.Shop_id= shop.id" ;
	    stmt = con.createStatement();
	   rs2 = stmt.executeQuery(disp2);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs2;
	   
   }
   public Boolean  OitemCheck(String ib, String im){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 = "Select Item_Brand, Item_Model from po_item where Item_Brand='"+ib+"'and Item_Model='"+im+"'" ;
	    stmt = con.createStatement();
	   rs = stmt.executeQuery(disp2);
	   if (!rs.isBeforeFirst() ) {   
		   
		   System.out.println("No data");
		  
		   return true;
		  } 
	   else{
		   rs.beforeFirst();
		  
		   return false;
	   }
	
		}catch(Exception e)
		{System.out.println("check");
		e.printStackTrace();
		
	}
return false;
	   
   }
   
   public Boolean Ocitem(String in, String ib, String im, String is1,
			String is2, String is3, String slprc) {


	   try
		{
		  
		   DbOp.drivermanager();
		   Date date = Calendar.getInstance().getTime();
		   
		   //
		   // Display a date in day, month, year format
		   //
		   DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		   String today = formatter.format(date);
	
		   if( OitemCheck( ib, im)){
			   String disp2 = "INSERT INTO po_item VALUES (NULL, '"+in+"', '"+ib+"', '"+im+"', '"+is1+"', '"+is2+"', '"+is3+"', "+slprc+", '"+today+"');" ;
	    stmt = con.createStatement();
	   stmt.executeUpdate(disp2);
	  
	   return true;
		   }
		   else{
			  
			   return false;   
		   }
		   
		}catch(Exception e)
		{System.out.println("insert");
		e.printStackTrace();
		
	}
	  
	return false;
	   
   }
   
  
   
   public ResultSet  popitmpo2(String item){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 = "select * from po_item where Item_Name LIKE '"+item+"%'";
	    stmt = con.createStatement();
	   rs2 = stmt.executeQuery(disp2);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs2;
	   
   }
   
   public ResultSet  popitm(){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 = "select distinct Item_Name from po_item";
	    stmt = con.createStatement();
	   rs2 = stmt.executeQuery(disp2);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs2;
	   
   }
   public ResultSet  popsplr(){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp2 = "select distinct id, name from supplier";
	    stmt = con.createStatement();
	   rs2 = stmt.executeQuery(disp2);
	
		}catch(Exception e)
		{System.out.println("DbOp.java");
		e.printStackTrace();
		
	}
	  
	return rs2;
	   
   }
   
   public Boolean  OcSupplierchk(String mob){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp = "Select id from supplier where Mob='"+mob+"'" ;
	    stmt = con.createStatement();
	   rs = stmt.executeQuery(disp);
	   if (!rs.isBeforeFirst() ) {   
		   
		   System.out.println("No data");
		  
		   return true;
		  } 
	   else{
		   rs.beforeFirst();
		  
		   return false;
	   }
	
		}catch(Exception e)
		{System.out.println("check");
		e.printStackTrace();
		
	}
	  
return false;
	   
   }
   public Boolean  SupItemchk(int id, String itm){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp = "Select splr_id from sup_item where itm_name='"+itm+"' and splr_id="+id ;
	    stmt = con.createStatement();
	   rs = stmt.executeQuery(disp);
	   if (!rs.isBeforeFirst() ) {   
		   
		   System.out.println("No data");
		  
		   return true;
		  } 
	   else{
		   rs.beforeFirst();
		  
		   return false;
	   }
	
		}catch(Exception e)
		{System.out.println("check2");
		e.printStackTrace();
		
	}
	  
return false;
	   
   }
   public void SupItem(int id, String[]itm) 
   {


	   try
		{
		  
		   DbOp.drivermanager();
		  
		   
		   //
		   // Display a date in day, month, year format
		   //
		
		  for (int i = 0; i < itm.length; i++) 
	{
			 if( SupItemchk(id, itm[i]))
			 {   String disp2 = "INSERT INTO sup_item VALUES ("+id+",'"+itm[i]+"');" ;
	    stmt = con.createStatement();
	   stmt.executeUpdate(disp2);i++;
			 }
			  else{ 
				  // return false;   
			   }
		}}catch(Exception e)
		{System.out.println("main 2");
		e.printStackTrace();
		
	} 
	//return false;
	   
   }
   public Boolean OcSupplier(String nm,String Mob,String email,String Add,String[] itm) 
   {


	   try
		{
		  
		   DbOp.drivermanager();
		   Date date = Calendar.getInstance().getTime();
		   
		   //
		   // Display a date in day, month, year format
		   //
		   DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		   String today = formatter.format(date);
	
		   if( OcSupplierchk(Mob)){
			   String disp2 = "INSERT INTO supplier VALUES (NULL, '"+nm+"', '"+Mob+"', '"+email+"', '"+Add+"', '"+today+"');" ;
	    stmt = con.createStatement();
	   stmt.executeUpdate(disp2);
	   
	   String disp = "select id from supplier where Mob='"+Mob+"'" ;
	    stmt = con.createStatement();
	  rs= stmt.executeQuery(disp);
	  rs.next();
	  int id= rs.getInt(1);
	  SupItem(id,itm);
	 
	   return true;
		   }
		   
		   else{
			  
			   return false;   
		   }
		   
		}catch(Exception e)
		{System.out.println("insertmain");
		e.printStackTrace();
		
	}
	  
	return false;
	   
   }



   public Boolean OcPO(int itm,int sup,int amnt,int qtty)
{


	   try
		{
		  
		   DbOp.drivermanager();
		   Date date = Calendar.getInstance().getTime();
		   
		   //
		   // Display a date in day, month, year format
		   //
		   DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		   String today = formatter.format(date);
	
		   
			   String disp2 = "INSERT INTO po (`PO_Id`, `Item_Id`, `Supplier_Id`, `Item_Price`, `Item_Quantity`, `Total_Amount`, `InStock_Item`, `RecDate`) VALUES (NULL, "+itm+","+sup+","+amnt+","+qtty+","+(amnt*qtty)+","+qtty+",'"+today+"');" ;
	    stmt = con.createStatement();
	   stmt.executeUpdate(disp2);
	   String disp3 = "SELECT PO_Id FROM po ORDER BY PO_Id DESC LIMIT 1" ;
	    stmt = con.createStatement();
	   rs=stmt.executeQuery(disp3);
	   rs.next();
	   
	   String disp6 = "SELECT Address FROM supplier where Id="+sup ;
	    stmt = con.createStatement();
	   rs4=stmt.executeQuery(disp6);
	   rs4.next();
	   System.out.println("after po");
	 
	   
	   String disp5 = "INSERT INTO shipment (`id`,`Type`, `From`, `To`, `RecDate`) VALUES (NULL, 'PO','"+rs4.getString(1)+"','Warehouse','"+today+"');" ;
	    stmt = con.createStatement();
	   stmt.executeUpdate(disp5);
	   System.out.println("after ship");
	   
	   String disp7 = "SELECT Id FROM shipment ORDER BY Id DESC LIMIT 1" ;
	    stmt = con.createStatement();
	   rs5=stmt.executeQuery(disp7);
	   rs5.next();
	   
	   String disp4 = "INSERT INTO po_ship (`PO_Id`,`ship_id`) VALUES ("+rs.getInt(1)+","+rs5.getInt(1)+")";
	    stmt = con.createStatement();
	   stmt.executeUpdate(disp4);
	   System.out.println("after po_ship");
	  
	   return true;
		  
		   
		}catch(Exception e)
		{System.out.println("insertmain");
		e.printStackTrace();
		
	}
	  
	return false;
	   
}

public boolean mngrcpoship(int id1, String mode1, int cost1,
		String date1, String frm) {

	   try
		{
		  
		   DbOp.drivermanager();
		   Date date = Calendar.getInstance().getTime();
		   
		   //
		   // Display a date in day, month, year format
		   //
		   DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		   String today = formatter.format(date);
	
		   
			   String disp2 = "Update shipment set `From`='"+frm+"',`Date`='"+date1+"', `Mode`='"+mode1+"', `Cost`="+cost1+", `RecDate`='"+today+"' where Id="+id1 ;
	    stmt = con.createStatement();
	   stmt.executeUpdate(disp2);
	   
	  
	   return true;
		  
		   
		}catch(Exception e)
		{System.out.println("insertmain");
		e.printStackTrace();
		
	}
	  
	return false;
	   
}

public boolean mngrcsoship(int id1, String mode1, int cost1,
		String date1, String to) {
	  try
			{ 
	
	DbOp.drivermanager();
	   Date date = Calendar.getInstance().getTime();
	   
	   //
	   // Display a date in day, month, year format
	   //
	   DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
	   String today = formatter.format(date);

	   
	   String disp2 = "Update shipment set `To`='"+to+"',`Date`='"+date1+"', `Mode`='"+mode1+"', `Cost`="+cost1+", `RecDate`='"+today+"' where Id="+id1 ;
   stmt = con.createStatement();
  stmt.executeUpdate(disp2);
  
 
  return true;
	  
	   
	}catch(Exception e)
	{System.out.println("insertmain");
	e.printStackTrace();
	
}
	 
return false;
}


public Boolean  Spo(int id){
	   try
		{
			
			DbOp.drivermanager();
	
	   String disp = "Select * from po where b='"+id+"'" ;
	    stmt = con.createStatement();
	   rs = stmt.executeQuery(disp);
	   if (!rs.isBeforeFirst() ) {   
		   
		   System.out.println("No data");
		  
		   return true;
		  } 
	   else{
		   rs.beforeFirst();
		  
		   return false;
	   }
	
		}catch(Exception e)
		{System.out.println("check");
		e.printStackTrace();
		
	}
	  
return false;
	   
}

}
   //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /* public int usersign(String fname,String mname,String lname,String email,String gen,String dob,String mob,String pwd)
	{
		try
		{
			DbOp.drivermanager();
			String insertquery = "insert into applicant_personal(first_name,mname,lname,emailid,gender,dob,contact_number,password,rdate)values(?,?,?,?,?,?,?,?,?)"; 
			
						
			pstmt = con.prepareStatement(insertquery);
			pstmt.setString(1,fname);
			pstmt.setString(2,mname);
			pstmt.setString(3,lname);
			pstmt.setString(4,email);
			pstmt.setString(5,gen);
			pstmt.setString(6,dob);
			
			pstmt.setString(7,mob);	
			pstmt.setString(8,pwd);	
			pstmt.setDate(9,getCurrentDate());
			result=pstmt.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}


   
   public int useradd(String address,String state,String city,String pincode, String id,String country)
	{
		try
		{
			DbOp.drivermanager();
			String insertqueryadd = "insert into address(local_address,state,city,pincode,applicant_id,country)values(?,?,?,?,?,?)"; 
			pstmt1 = con.prepareStatement(insertqueryadd);
			pstmt1.setString(1,address);
			pstmt1.setString(2,state);
			pstmt1.setString(3,city);
			pstmt1.setString(4,pincode);
			pstmt1.setString(5,id);
			pstmt1.setString(6,country);
			
			
			result1=pstmt1.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result1;
	}

   
   public int userquali(String sscper,String sscclgname,String sscpassyear,String sscboard,String hscper,String hscclgname,String hscpassyear,String hscboard,String hscstream,String deplomaper,String deplomaclgname,String deplomapassyear,String deplomauni,String deplomastream,String ugper,String ugclgname,String ugpassyear,String uguni,String ugstream,String pgper,String pgclgname,String pgpassyear,String pguni,String pgstream,String id,String oquali)
	{
		try
		{
			DbOp.drivermanager();
			
			
			
			String insertqueryquali = "insert into qualification(sscper,sscclgname,sscpassyear,sscboard,hscper,hscclgname,hscpassyear,hscboard,hscstream,deplomaper,deplomaclgname,deplomapassyear,deplomauni,deplomastream,ugper,ugclgname,ugpassyear,uguni,ugstream,pgper,pgclgname,pgpassyear,pguni,pgstream,applicant_id,oquali)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"; 
			pstmt2 = con.prepareStatement(insertqueryquali);
			pstmt2.setString(1,sscper);
			pstmt2.setString(2,sscclgname);
			pstmt2.setString(3,sscpassyear);
			pstmt2.setString(4,sscboard);
			pstmt2.setString(5,hscper);
			pstmt2.setString(6,hscclgname);
			pstmt2.setString(7,hscpassyear);
			pstmt2.setString(8,hscboard);
			pstmt2.setString(9,hscstream);
			pstmt2.setString(10,deplomaper);
			pstmt2.setString(11,deplomaclgname);
			pstmt2.setString(12,deplomapassyear);
			pstmt2.setString(13,deplomauni);
			pstmt2.setString(14,deplomastream);
			pstmt2.setString(15,ugper);
			pstmt2.setString(16,ugclgname);
			pstmt2.setString(17,ugpassyear);
			pstmt2.setString(18,uguni);
			pstmt2.setString(19,ugstream);
			pstmt2.setString(20,pgper);
			pstmt2.setString(21,pgclgname);
			pstmt2.setString(22,pgpassyear);
			pstmt2.setString(23,pguni);
			pstmt2.setString(24,pgstream);
			pstmt2.setString(25,id);
			pstmt2.setString(26,oquali);
			
			result2=pstmt2.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result2;
	}

public ResultSet display(String query) {
	// TODO Auto-generated method stub
	try
	{
		
		DbOp.drivermanager();
		
		stmt = con.createStatement();
		rs2 = stmt.executeQuery(query);
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return rs2;
}
 

public ResultSet recdisplay(String query) {
	// TODO Auto-generated method stub
	try
	{
		
		DbOp.drivermanager();
		
		stmt2 = con.createStatement();
		rs5 = stmt2.executeQuery(query);
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return rs5;
}


public int userprof1(String company_name,String designation,String experience,String keyskill,String jobprof,String project1,String project2,String id,String jobtype)
	{
		try
		{
			DbOp.drivermanager();
			String insertqueryprof1 = "insert into professional(company_name,designation,experience,keyskill,jobprof,project1,project2,applicant_id,jobtype)values(?,?,?,?,?,?,?,?,?)"; 
			pstmt3 = con.prepareStatement(insertqueryprof1);
			pstmt3.setString(1,company_name);
			pstmt3.setString(2,designation);
			pstmt3.setString(3,experience);
			pstmt3.setString(4,keyskill);
			pstmt3.setString(5,jobprof);
			pstmt3.setString(6,project1);
			pstmt3.setString(7,project2);
			pstmt3.setString(8,id);
			if(jobtype!=null)
			{
				for(int i=0;i<jobtype.length();i++)
				{
			      pstmt3.setString(9,jobtype);
			
				}
			}
			result3=pstmt3.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result3;
	}


public int userprof2(String resume_title,String file,String id)
{
	try
	{
		DbOp.drivermanager();
		String insertqueryprof2 = "insert into upload_resume(resume_title,file,upload_date,applicant_id)values(?,?,?,?)"; 
		pstmt4 = con.prepareStatement(insertqueryprof2);
		pstmt4.setString(1,resume_title);
		pstmt4.setString(2,file);
		pstmt4.setDate(3,getCurrentDate());
		pstmt4.setString(4,id);			
		result4=pstmt4.executeUpdate();
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return result4;
}



public int recsign(String first_name,String middle_name,String last_name,String email_id,String gender,String dob,String contact_number,String password)
	{
		try
		{
			DbOp.drivermanager();
			String insertquery = "insert into recruiter_personal(first_name,middle_name,last_name,email_id,gender,dob,contact_number,password,rdate)values(?,?,?,?,?,?,?,?,?)"; 
			
						
			pstmt5 = con.prepareStatement(insertquery);
			pstmt5.setString(1,first_name);
			pstmt5.setString(2,middle_name);
			pstmt5.setString(3,last_name);
			pstmt5.setString(4,email_id);
			pstmt5.setString(5,gender);
			pstmt5.setString(6,dob);
			
			pstmt5.setString(7,contact_number);	
			pstmt5.setString(8,password);	
			pstmt5.setDate(9,getCurrentDate());
			result5=pstmt5.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result5;
	}


  
  public int recadd(String address,String state,String city,String pincode, String id,String country)
	{
		try
		{
			DbOp.drivermanager();
			String insertqueryadd = "insert into address(local_address,state,city,pincode,recruiter_id,country)values(?,?,?,?,?,?)"; 
			pstmt6 = con.prepareStatement(insertqueryadd);
			pstmt6.setString(1,address);
			pstmt6.setString(2,state);
			pstmt6.setString(3,city);
			pstmt6.setString(4,pincode);
			pstmt6.setString(5,id);
			pstmt6.setString(6,country);
			
			
			result6=pstmt6.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result6;
	}

  public int reprof(String designation,String experience, String id)
	{
		try
		{
			DbOp.drivermanager();
			String insertquery = "insert into recruiter_professional(designation,experience,recruiter_id)values(?,?,?)"; 
			pstmt7 = con.prepareStatement(insertquery);
			pstmt7.setString(1,designation);
			pstmt7.setString(2,experience);
			pstmt7.setString(3,id);
			
			result7=pstmt7.executeUpdate();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result7;
	}

  


public int reccmpny(String company_name,String company_desc,String compony_websideurl,String id)
{
	try
	{
		DbOp.drivermanager();
		String insertquery = "insert into recruiter_company(company_name,company_desc,compony_websideurl,recruiter_id)values(?,?,?,?)"; 
		pstmt8 = con.prepareStatement(insertquery);
		pstmt8.setString(1,company_name);
		pstmt8.setString(2,company_desc);
		pstmt8.setString(3,compony_websideurl);
		pstmt8.setString(4,id);			
		result8=pstmt8.executeUpdate();
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return result8;
}





public ResultSet userdisplay(String query) {
	// TODO Auto-generated method stub
	try
	{
		
		DbOp.drivermanager();
		
		stmt1 = con.createStatement();
		rs4 = stmt1.executeQuery(query);
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	return rs4;
}

public int updateuser(String fname, String mname, String lname, String email,
		String gen, String dob, String mob) {
	// TODO Auto-generated method stub
	try
	{
		DbOp.drivermanager();
		String updatequery ="update applicant_personal set first_name=?,mname=?,lname=?,emailid=?,gender=?,dob=?,contact_number=? where applicant_id='"+11+"'";
		pstmtupdate = con.prepareStatement(updatequery);
		
		pstmtupdate.setString(1,fname);
		pstmtupdate.setString(2,mname);
		pstmtupdate.setString(3,lname);
		pstmtupdate.setString(4,email);
		pstmtupdate.setString(5,gen);
		pstmtupdate.setString(6,dob);
		pstmtupdate.setString(7,mob);		
		
		result9=pstmtupdate.executeUpdate();
		
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return result9;
}



}*/


