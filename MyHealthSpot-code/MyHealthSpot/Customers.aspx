<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="sima.Customers" %>
<html>
<head>
<title>My Health Spot | SignUp</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=News+Cycle' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div class="wrapper">
<div class="wrap">
<div class="wrap_inner">
	<div class="cssmenu">
            <div class="logo">
			        <h1><a href="home.html"><img src="images/logo.png" alt=""/></a></h1>
	        </div>
			<ul>
			   <li><a href="home.html"><span>Home</span></a></li>
			   <li class="has-sub"><a href="articles.html"><span>Articles</span></a></li>
			   <li><a href="recipes.html"><span>Recipes</span></a></li>
			   <li><a href="forum.html"><span>Forum</span></a></li>
			   <li  class="active last"><a href="profile.html"><span>Profile</span></a></li>
			 </ul>
             <div class="clear"></div>
	</div>

	<!--start content-->
	<div class="main">
		<div class="section group">				
      			<div class="profile_information">
				     <h2>Profile </h2>
						<p>First Name: </p>
						<p>Last Name:</p>
				   		<p>Phone: </p>
                        <p>Email: <span>user@gmail.com</span></p>
				   		<p>Height: </p>
				 	 	<p>Weight: </p>
				   		<p>BMI: </p>
				   </div>
				   <div class="clear"></div>
				</div>				
				<div class="col span_2_of_4">
				  <div class="signup-form">
				  	<h2>Sign Up</h2>
					       <form id="f1" runat="server">
					    	<div>
						    	<span><label>User Name</label></span>
						    	<span><input id="userName" type="text" class="textbox" runat="server" /></span>
						    </div>
                            <div>
						    	<span><label>Password</label></span>
						    	<span><input id="Password" type="password" class="textbox" runat="server" /></span>
						    </div>
                            <div>
						    	<span><label>First Name</label></span>
						    	<span><input id="firstName" type="text" class="textbox" runat="server" /></span>
						    </div>
                            <div>
						    	<span><label>Last Name</label></span>
						    	<span><input id="lastName" type="text" class="textbox" runat="server" /></span>
						    </div>
						    <div>
						    	<span><label>E-Mail</label></span>
						    	<span><input id="userEmail" type="text" class="textbox" runat="server" /></span>
						    </div>
						    <div>
						     	<span><label>Phone Number</label></span>
						    	<span><input id="userPhone" type="text" class="textbox" runat="server"/></span>
						    </div>
						   <div>
						   		<span><asp:Button ID="bb1" Text="Submit" runat="server" onclick="bb1_Click" /></span>
						  </div>
                          
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