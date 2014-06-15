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

        $("#txtName,#txtLName,#txtPhone,#txtMail,#txtHeight,#txtWeight").css('background-color', "#EEEEEE"); //disable

        calcBMI();

        $("#linkEdit").on('click', function () {
            enableEdit();
        });

        $("#linkSaveEdit").on('click', function () {
            saveEdit();
        });

    });

    function enableEdit() {
        //alert("Edit");
        // $(textId).prop('disabled',true);  $(textId).prop('disabled',false');

        $("#linkEdit").css("display", "none");
        $("#linkSaveEdit").css("display", "block");
        $("#txtName,#txtLName,#txtPhone,#txtMail,#txtHeight,#txtWeight,#rbRegular,#rbPro").prop('disabled', false);
        $("#txtName,#txtLName,#txtPhone,#txtMail,#txtHeight,#txtWeight").css('background-color', "#FFFFFF");
        event.preventDefault();
      
        return false;
    }

    function saveEdit() {
        //alert("Edit");
        // $(textId).prop('disabled',true);  $(textId).prop('disabled',false');

        $("#linkEdit").css("display", "block");
        $("#linkSaveEdit").css("display", "none");
        $("#txtName,#txtLName,#txtPhone,#txtMail,#txtHeight,#txtWeight,#rbRegular,#rbPro").prop('disabled', true);
        $("#txtName,#txtLName,#txtPhone,#txtMail,#txtHeight,#txtWeight").css('background-color', "#EEEEEE"); //disable
        event.preventDefault();
        calcBMI();
        //SAVE TO D.B!!
    }
    function calcBMI() {

       // alert(Number($("#txtHeight").val()));

        var height = $("#txtHeight").val();
        var weight = $("#txtWeight").val();
        var bmi = "";
        var range = "";

        if (Number(height) && Number(weight)) {
            bmi = (weight / Math.pow(height, 2)).toFixed(2); //(height * height);
            //bmi = weight / (1.65 * 1.65);
            // alert(bmi);
            range = checkBMIrange(bmi);
            // alert(range);
            $("#lblBMI").html("ה BMI שלך הוא: " + bmi + " - " + range);
            $("#imgBMI").attr('src', "http://www.goleango.com/calculators/simple_calculators/draw_bmi_graph.php?gender=male&amp;bmi=" + bmi + "&amp;width=550");
        }
        else {
            $("#lblBMI").html("0");
            $("#imgBMI").attr('src', "http://www.goleango.com/calculators/simple_calculators/draw_bmi_graph.php?gender=male&amp;bmi=0&amp;width=550");        
        }


    }

    function checkBMIrange(bmi) {
        if (bmi < 18.5)
            return "תת משקל";
        if (bmi >= 18.5 && bmi < 25)
            return "משקל בריא";
        if (bmi >= 25 && bmi < 30)
            return "עודף משקל";
        if (bmi >= 30 && bmi < 35)
            return "השמנה";
        if (bmi >= 35 && bmi < 45)
            return "השמנה יתר";
        if (bmi >= 45)
            return "השמנה יתר חמורה";
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
				     	<h2>פרופיל משתמש </h2>
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
						    	                    <span><asp:TextBox ID="txtName" runat="server" Enabled="false">שירן</asp:TextBox></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>
                                                    <span><asp:TextBox ID="txtLName" runat="server" Enabled="false">מור יוסף</asp:TextBox></span>
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
						    	                    <span><asp:TextBox ID="txtPhone" runat="server" Enabled="false">0000000000</asp:TextBox></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>
                                                    <span><asp:TextBox ID="txtMail" runat="server" Enabled="false">sh@gmail.com</asp:TextBox></span>
                                                    </div>
                                                </td>
                                            </tr>

                                             <tr>
                                                <td>                                        
						    	                    <div><span>גובה (במטרים):</span></div>                                        
                                                </td>
                                                <td>                                        
						    	                    <div><span>משקל (בק"ג):</span></div>                                        
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <div>
						    	                    <span><asp:TextBox ID="txtHeight" runat="server" Enabled="false" Text="1.63"></asp:TextBox></span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div>
                                                    <span><asp:TextBox ID="txtWeight" runat="server" Enabled="false">74</asp:TextBox></span>
                                                    </div>
                                                </td>
                                            </tr>

                                             <tr>
                                                <td colspan="2">                                        
						    	                    <div><span><asp:Label ID="lblBMI" runat="server" Text="BMI:"></asp:Label></span></div>                                        
                                                </td>                                                                                    
                                            </tr>

                                            <tr style="display:none">
                                                <td align="right">
                                                    <div><span>
                                                        <asp:Label ID="lblBMI2" runat="server" Text="----"></asp:Label>
                                                    </span></div>
                                                </td>
                                                <td>
                                                    <div class="gallery bg1" ><span>
                                                        איפה אני בגרף?
						                                <a href="images/BMIchart1.gif">
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
                                                    <asp:Label runat="server" ID="lblUserName">&nbsp;&nbsp; שלום ShiranMo ! </asp:Label>
                                                    
                                                    </span></div> 
                                                </td>
                                                <td align="left">
                                                <br />  
                                                    <span>
                                                        <asp:LinkButton ID="linkEdit" runat="server" style="display:block" > ערוך פרופיל &nbsp;&nbsp;  </asp:LinkButton>
                                                         <asp:LinkButton ID="linkSaveEdit" runat="server" style="display:none" > שמור פרופיל לאחר עריכה &nbsp;&nbsp;  </asp:LinkButton>
                                                </span>
                                                </td>
                                            </tr>
                                            <tr  style="display:none">
                                                <td align="center" colspan="2">
                                                <br />
                                                    <div><span>את/ה:</span></div> 
                                                        <asp:RadioButton ID="rbRegular" GroupName="userType" runat="server" 
                                                        Text="משתמש רגיל" Checked="True" Enabled="false" Width="42%"  />
                                                        <asp:RadioButton ID="rbPro" GroupName="userType" runat="server" 
                                                        Text="משתמש PRO" Checked="false" Enabled="false" Width="42%" />                                                                                                                
                                                   
                                                </td>
                                            </tr>
                                            <tr>
                                                <td dir="rtl" align="center" colspan="2">
                                                    <div><span> 
                                                     <br />  <br />   <br />  
                                                        יש לך                               
                                                        <asp:LinkButton runat="server" Text=" # משימות"> </asp:LinkButton>
                                                    </span></div>
                                                </td>
                                            </tr>
                                            <tr style="display:none">
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
                                                    <br />  <br />  <br />   <br />  
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
                                
                                <tr>
                                    <td  align="right" id="bmi_result_graph">
                                    <br /> <br />
                                    <span>
                                        <img  id="imgBMI" src="http://www.goleango.com/calculators/simple_calculators/draw_bmi_graph.php?gender=male&amp;bmi=0&amp;width=550">
                                    </span>
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
