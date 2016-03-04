<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ page  language='java' import='java.sql.*'
			import='model.DbOp'%>
					<%
			try {
				//String[] items={"MainBoard","Processor","RAM","Hard Disk","DVD ROM","SMPS","FAN","graphic Card","LAN CARD","Sound Card","Cabinate","Monitor","Speaker","Keyboard","Mouse","Head Set","Other"};
				DbOp op = new DbOp();
				ResultSet rs = op.popitm();
				%>
					<label class="control-label" for="selectbasic">Select Item
						Type</label> <br> 
						
						
					
						<select id="si1" name="itm"
						 class="selectpicker show-tick form-control"
						data-live-search="true" data-style="btn-warning">
						  <option value="default" >Select one--</option>
						
						<%while(rs.next()){ ResultSet rs2 = op.popitmpo2(rs.getString(1));%>
						 <optgroup label="<%=rs.getString(1)%>">
							
           <%while(rs2.next()) {%><option value=<%=rs2.getString(1)%>><%=rs2.getString(3)%> <%=rs2.getString(4)%></option>
                         </optgroup>
           <%}}}catch(Exception e){
        	   System.out.println(e);
        	   
           }%> 
           </select>
         
				
