<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Users</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2><a href="index.html">SECURE ACCESS WITH HIDDEN PASSWORD ENCRYPTION</a></h2>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home</a></li>
          <li><a href="endUserLogin.html">Client</a></li>
          <li><a href="dataOwnerLogin.html"></a></li>
          <li class="active"><a href="webServerLogin.html">WebServer</a></li>
          <li></li>
		  <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <img src="images/main_img.jpg" alt="" width="972" height="313" style="padding:25px 0;" />
      <div class="clr"></div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>All Clients... </span></h2>
          <div class="clr"></div>
          
       
          <div class="clr"></div>
          <p>
		  <table width="582" border="1"  cellpadding="0" cellspacing="0" font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
           <tr>
			 <td  width="47" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style15"><strong>ID</strong></div></td>
             <td  width="122" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style15"><strong>UserImage</strong></div></td>
			  <td  width="122" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style15"><strong>Username</strong></div></td>
			  			  <td  width="122" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style15"><strong>Password</strong></div></td>

			   <td  width="122" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style15"><strong>Password's Hash Code</strong></div></td>

             <td  width="107" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style15"><strong>Address</strong></div></td>
             <td  width="86" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style15"><strong>Gender</strong></div></td>
             <td  width="83" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style15"><strong>Status</strong></div></td>
			 <td  width="83" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style15"><strong>User Type</strong></div></td>
           </tr>
<%@ include file="connect.jsp" %>
<%
     String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
	 int i=0;
		try 
		 {
		   String query="select * from user"; 
		   Statement st=connection.createStatement();
		   ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
			i=rs.getInt(1);
			s1=rs.getString(2);
			s11=rs.getString(3);
			s3=rs.getString(5);
			s4=rs.getString(6);
			s5=rs.getString(7);
			s6=rs.getString(8);
			s8=rs.getString(10);
			s9=rs.getString(11);
			s10=rs.getString(13);
			s12=rs.getString(14);
			String abc="user";
%>
                      <tr>
					  <td height="106" bgcolor="#FFFFFF"><div align="center" class="style2">
					    <%out.println(i);%>
					    </div></td>
					  <td bgcolor="#FFFFFF"><div align="center" class="style2">
					    <input  name="image" type="image" src="profilepic_image.jsp?uid=<%=i%>&uname=<%=abc%>" style="width:90px; height:90px;"  />
					    </div></td>
                      <td bgcolor="#FFFFFF"><div align="center" class="style2">
                        <%out.println(s1);%>
                      </div></td>
					  <td bgcolor="#FFFFFF"><div align="center" class="style2">
                        <%out.println(s11);%>
                      </div></td>
					   <td bgcolor="#FFFFFF"><div align="center" class="style2">
                       <textarea cols="20" rows="5"> <%out.println(s12);%></textarea>
                      </div></td> 
                      <td bgcolor="#FFFFFF"><div align="center" class="style2">
                        <%out.println(s4);%>
                      </div></td>
                      <td bgcolor="#FFFFFF"><div align="center" class="style2">
                        <%out.println(s6);%>
                      </div></td>
				<%
					  if(s9.equalsIgnoreCase("Waiting"))
						{
				%>
				
                         <td bgcolor="#FFFFFF" ><a href="generateKeyConfirm.jsp?uid=<%=i%>&str=<%=abc%>" class="style2">waiting&nbsp;</a></td>
						 
                <%
						}
						
					  else
						{
				%>
                        <td><div align="center">
                          <%out.println(s9);%>
                        </div></td>
                <%
						}
				%>
				 <td bgcolor="#FFFFFF"><div align="center" class="style2">
                        <%out.println(s10);%>
                      </div></td> 
					   
				
		              </tr>
					  
					
					  
					  
               <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                      <tr>
                      
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
                      </tr>
          </table>
		  </p>
          
                    <p align="right"><a href="webServerMain.jsp">Back</a></p>
        </div>
       
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2>Sidebar Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="webServerMain.jsp">Server Main</a></li>
			<li><a href="webServerLogin.html">Log Out</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
      <div class="fbg"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    
    <div class="clr"></div>
  </div>
</div>
</body>
</html>