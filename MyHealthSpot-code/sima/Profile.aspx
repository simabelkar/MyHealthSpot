<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="MyHealthSpot.Profile" %>


<html>
<head>
<title>My Health Spot | Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=News+Cycle' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--start lightbox -->
<link rel="stylesheet" type="text/css" href="css/jquery.lightbox.css">
<script src="js/jquery.min.js"></script>
<script src="js/jquery.lightbox.js"></script>
<script>
    // Initiate Lightbox
    $(document).ready(function () {
        $('.gallery a').lightbox();

        calcBMI();

    });

    function calcBMI() {

//        alert(Number($("#txtHeight").text)+1);
//        if (isNaN($("#txtHeight").value)) //$("#txtHeight").toString() )
//        {
//            var a = parseInt($("#txtHeight").text.toString());
//            alert(a);
//           // alert(val($("#txtHeight").text.toString()));
//        var height = parseInt($("#txtHeight").value);
//        alert(height);
////        if $("#txtHeight").toString().indexOf(".",0) >= 0
////            height= $("#txtHeight").toString().
//            $("#lblBMI") = $("#txtWeight").val / (height * height);
        //        }

        if (Number($("#lblBMI").text) < 18.5) {
            alert("AAAAAAAAAAAA");
            $("#lblBMI").text = $("#lblBMI").text & " - תת משקל";
        }
    }
</script>

</head>
<body>
<div class="wrapper">
<div class="wrap">
<div class="wrap_inner">
	<div class="cssmenu" dir="rtl">
            <div class="logo">
			        <h1><a href="Home.aspx"><img src="images/logo4.png" alt=""/></a></h1>
	        </div>
			<ul>
			   <li ><a href="Home.aspx"><span>עמוד הבית</span></a></li>
			    <li><a href="articles.html"><span>כתבות</span></a></li>
                <li><a href=""><span>סרטוני וידאו</span></a></li>
                <li><a href="UserPhotos.aspx"><span>אינסטגרם</span></a></li>
			    <li><a href="recipes.html"><span>מתכונים</span></a></li>
			    <li class="has-sub"><a href="forum.html"><span>פורום</span></a></li>
			    <li class="active last"><a href="Profile.aspx"><span>פרופיל</span></a></li>
			 </ul>
             <div class="clear"></div>
	</div>

	<!--start content-->
	<div class="main" >
		<div class="section group">		
				<div class="col span_2_of_4">                    
      			    <div class="signup-form">
				     	<h1>פרופיל משתמש </h1>
                        <form id="frmProfile" runat="server" dir="rtl" align="center">

                            <table id="tblMain" width="100%">
                                <colgroup>
                                    <col width="60%"  />
                                    <col width="40%" style="background-color:#736761; color:#ffffff;" />
                                </colgroup>
                                <tr>
                                    <td></td>
                                    <td>&nbsp;</td>
                                </tr>

                                <tr>
                                    <td>
                                        <table id="tblDetails"  width="90%" align="center" >
                                            <tr >
                                                <td>                                        
						    	                    <div><span>שם פרטי:</span></div>                                        
                                                </td>
                                                <td>                                        
						    	                    <div><span>שם משפחה:</span></div>                                        
                                                </td>
                                            </tr>

                                            <tr >
                                                <td>
                                                    <div>
						    	                    <span><asp:TextBox ID="TextBox1" runat="server" Enabled="false">שירן</asp:TextBox></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>
                                                    <span><asp:TextBox ID="TextBox2" runat="server" Enabled="false">מור יוסף</asp:TextBox></span>
                                                    </div>
                                                </td>
                                            </tr>

                                             <tr>
                                                <td>                                        
						    	                    <div><span>טלפון:</span></div>                                        
                                                </td>
                                                <td>                                        
						    	                    <div><span>דוא"ל:</span></div>                                        
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <div>
						    	                    <span><asp:TextBox ID="TextBox3" runat="server" Enabled="false">0000000000</asp:TextBox></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>
                                                    <span><asp:TextBox ID="TextBox4" runat="server" Enabled="false">sh@gmail.com</asp:TextBox></span>
                                                    </div>
                                                </td>
                                            </tr>

                                             <tr>
                                                <td>                                        
						    	                    <div><span>גובה:</span></div>                                        
                                                </td>
                                                <td>                                        
						    	                    <div><span>משקל:</span></div>                                        
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <div>
						    	                    <span><asp:TextBox ID="txtHeight" runat="server" Enabled="false" Text="165"></asp:TextBox></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>
                                                    <span><asp:TextBox ID="txtWeight" runat="server" Enabled="false">47</asp:TextBox></span>
                                                    </div>
                                                </td>
                                            </tr>

                                             <tr>
                                                <td colspan="2">                                        
						    	                    <div><span>BMI:</span></div>                                        
                                                </td>                                                                                    
                                            </tr>

                                            <tr>
                                                <td align="right">
                                                    <div><span>
                                                        <asp:Label ID="lblBMI" runat="server" Text="17.25 - תת משקל"></asp:Label>
                                                    </span></div>
                                                </td>
                                                <td>
                                                    <div class="gallery bg1" ><span>
                                                        איפה אני בגרף?
						                                <a href="images/BMIchart.gif">
                                                            <img src="images/graph.jpg" title="איפה אני בגרף?" width="10%" style="vertical-align:middle;">
                                                        </a>                                                        
					                                 </span></div>
                                                 </td>
                                                
                                               
                                            </tr>
                                           
                                        </table> 
                                    </td>

                                    <td align="center" cellpadding="2"  > 
                                        <table width="90%" style="background-color:#ffffff;">
                                            <tr>
                                                <td align="right">
                                                    <div><span>        
                                                    <br />                                             
                                                    <asp:Label runat="server" >&nbsp;&nbsp; שלום ShiranMo ! </asp:Label>
                                                    
                                                    </span></div> 
                                                </td>
                                                <td align="left">
                                                <br />  
                                                    <span>
                                                        <asp:LinkButton ID="LinkButton2" runat="server" > ערוך פרופיל &nbsp;&nbsp;  </asp:LinkButton>
                                                </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                <br />
                                                    <div><span>את/ה:</span></div> 
                                                        <asp:RadioButton ID="RadioButton1" GroupName="userType" runat="server" 
                                                        Text="משתמש רגיל" Checked="True" Enabled="false" Width="42%"  />
                                                        <asp:RadioButton ID="RadioButton4" GroupName="userType" runat="server" 
                                                        Text="משתמש PRO" Checked="false" Enabled="false" Width="42%" />                                                                                                                
                                                   
                                                </td>
                                            </tr>
                                            <tr>
                                                <td dir="rtl" align="center" colspan="2">
                                                    <div><span> 
                                                     <br />   
                                                        יש לך                               
                                                        <asp:LinkButton runat="server" Text=" # משימות"> </asp:LinkButton>
                                                    </span></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td dir="rtl" align="center" colspan="2">
                                                    <div><span> 
                                                         יש לך                               
                                                        <asp:LinkButton ID="LinkButton1" runat="server" Text=" # הודעות"> </asp:LinkButton>
                                                    </span></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td dir="rtl" align="center" colspan="2">
                                                    <div><span> 
                                                         יש לך                               
                                                        <asp:LinkButton ID="LinkButton3" runat="server" Text=" # תגיות שמורות"> </asp:LinkButton>
                                                    </span></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td dir="rtl" align="center" colspan="2">
                                                    <div><span> 
                                                      יש לך                               
                                                        <asp:LinkButton ID="LinkButton4" runat="server" Text=" # המלצות"> </asp:LinkButton>
                                                    </span></div>
                                                    <br />  <br />  
                                                </td>
                                            </tr>
                                            <%--<tr>
                                                <td align="center">
                                                    <div><span> 
                                                    <br />
                                                        <asp:LinkButton ID="LinkButton2" runat="server" Text="ערוך פרופיל"> </asp:LinkButton>
                                                    </span></div>
                                                </td>
                                            </tr>--%>
                                            
                                        </table>
                                        
                                    </td>
                                </tr>                           
                            
                            </table><!-- tblMain-->

                        </form>
				   </div>
                  </div> 
				  
                  <div class="clear"></div>
						

                <!-- grid -->
            <div class="grids_1_of_3">
				<div class="grid_1_of_3 images_1_of_3 bg1">
					 <h3>צור תפריט אישי</h3>
					<div class="gallery">
						<a href="images/pic7.jpg"><img src="images/pic7.jpg" title="image-name" height="200px" width=100% /></a>
					</div>
					  <p dir="rtl">בלחיצה על קישור זה באפשרותך ליצור תפריט מותאם אישית לצרכיך מתוך מאגר קיים או באמצעות דיאטן (כרוך בתשלום)</p>
					<div class="plus_btn">
						<!--<a href="menu.html"><span></span></a>-->
                        <a href="createMenu.aspx"><span></span></a>
					</div>
				</div>
				<div class="grid_1_of_3 images_1_of_3 bg2">
					 <h3>הוסף משימה</h3>
					<div class="gallery">
						<a href="images/pic8.jpg"><img src="images/pic8.jpg" title="image-name" height="200px" width=100% /></a>
					</div>
					  <p>בלחיצה על קישור זה באפשרותך להוסיף משימות אישיות הקשורות לבריאות, תזונה וכושר</p>
	 		   		<div class="plus_btn">
						<span></span>
					</div>
				</div>
				<div class="grid_1_of_3 images_1_of_3 bg3">
					 <h3>בחר תגיות לחיפוש</h3>
					<div class="gallery">
						<a href="images/healthTags.jpg"><img src="images/healthTags.jpg" title="image-name" height="200px" width=100%/></a>
					</div>
					  <p>בלחיצה על קישור זה ניתן להזין תגיות. לפי התגיות הנבחרות, המערכת תבצע חיפוש מותאם אישית ברשת לכתבות, סרטונים והעדפות שלך, המשתמש</p>
				 	<div class="plus_btn">
						<span></span>
					</div>
				</div>
			    <div class="clear"></div>
			</div>
                
               
		</div>
  	</div>		
  	<div class="clear"></div>
		
		<!--end content-->

    <!--
	<div class="grids_btm">
		<div class="grids">
			<div class="images_1_of_1">
				<p>15</p>
			</div>
			<div class="grid_1_of_1">
				  	<h3>Lorem Ipsum is simply text </h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</p>	   
 			</div>
		</div>
			<div class="grids">
			<div class="images_1_of_1">
				<p>$</p>
			</div>
				<div class="grid_1_of_1">
				  	<h3>Lorem Ipsum is simply text </h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</p>   
 				</div>
			</div>
	</div> 
    -->
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
