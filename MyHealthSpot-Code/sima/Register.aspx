<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MyHealthSpot.Customers" %>
<html>
<head>
<title>My Health Spot | Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=News+Cycle' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div class="wrapper">
<div class="wrap" style="width:65%">
<div class="wrap_inner">
     <div class="cssmenu" dir="rtl">
        <div class="logo">
			    <h1><a href="Home.aspx"><img src="images/logo4.png" alt=""/></a></h1>                                
	    </div>
     </div>
     
	<!--start content-->
	<div class="main">
		<div class="section group">							
		    <div class="col span_2_of_4" align="center">
			    <div class="signup-form">
				  	<h1>רישום משתמש חדש</h1>
					       <form id="f1" runat="server">
                           <table border="0" width="600px" style="margin-left:90px;">
                           <tr>
                                <td>
                                   <div>
						    	        <span><label>User Name</label></span>
						    	        <span><input id="userName" type="text" class="textbox" runat="server" /></span>
						            </div>
                                </td>
					    	    <td>
                                    <div>
						    	        <span><label>Password</label></span>
						    	        <span><input id="Password" type="password" class="textbox" runat="server" /></span>
						            </div>
                                </td>
                            </tr>
                            <tr>
                                <td>    
                                    <div>
						    	        <span><label>First Name</label></span>
						    	        <span><input id="firstName" type="text" class="textbox" runat="server" /></span>
						            </div>
                                </td>
                                <td>
                                    <div>
						    	        <span><label>Last Name</label></span>
						    	        <span><input id="lastName" type="text" class="textbox" runat="server" /></span>
						            </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
						            <div>
						    	        <span><label>E-Mail</label></span>
						    	        <span><input id="userEmail" type="text" class="textbox" runat="server" /></span>
						            </div>
                                </td>
                                <td>
						            <div>
						     	        <span><label>Phone Number</label></span>
						    	        <span><input id="userPhone" type="text" class="textbox" runat="server"/></span>
						            </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align:top;">
                                    <img src="images/hight.jpg" width="100px" style="float:left;"/>
                                    <div>
						     	            <span><label>Height:</label></span>
						    	            <span><input id="Text1" type="text" class="textbox" runat="server" style="width:50px;"/></span>
						            </div>
                                </td>     
                                <td style="vertical-align:top;">
                                    <img src="images/weight.jpg" width="100px" style="float:left;" />
                                    <div>
						     	          <span><label>Weight:</label></span>
						    	          <span><input id="Text2" type="text" class="textbox" runat="server" style="width:50px;"/></span>
						            </div>
                                </td>
                            </tr>
                            <tr><td><br /></td></tr>
                            <tr><td><br /></td></tr>
                            <tr>
						         <td colspan="2">
                                    <div>
						   		        <span><asp:Button ID="bb1" Text="שלח" runat="server" onclick="bb1_Click" />
                                        <asp:Button ID="btnBack" Text="חזרה" runat="server" onclick="btnBack_Click" />&nbsp&nbsp&nbsp
                                        <asp:Label ID="errLabel" Text="" runat="server"></asp:Label></span>
						            </div>
                                </td>
                            </tr>
                          </table>
					    </form>

				    </div>
  				</div>		
  			<div class="clear"></div>
		  </div>
	</div>
		<!--end content-->
	<div class="clear"></div>
	<div class="footer1">
		<div class="copy">
			<p class="w3-link">Design by&nbsp; <a href="#">MyHealthSpot team</a></p>
		</div>
		<div class="clear"></div>	
	</div>
</div>
</div>
</div>
</body>
</html>