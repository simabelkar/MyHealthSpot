<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createMenu.aspx.cs" Inherits="MyHealthSpot.WebForm2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>My Health Spot | Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=News+Cycle' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
.b_ttl_bg {
background-image: url("http://www.heli-group.co.il/images/box/ttl_bg.png");
height: 34px;
}
.b_ttl_rgt {
background-image: url("http://www.heli-group.co.il/images/box/ttl_rgt.png");
height: 34px;
background-position: right;
background-repeat: no-repeat;
}
.b_ttl_lft {
background-image: url("http://www.heli-group.co.il/images/box/ttl_lft.png");
height: 34px;
background-position: left;
background-repeat: no-repeat;
}
.b_ttl_txt {
padding: 9px 20px 0px 0px;
font-size: 15px;
color: #555555;
font-weight: bold;
}
.smn 
{
direction:rtl;
height: 30px;
border-bottom: 1px #E6E6E6 solid;
border-left: 1px #E6E6E6 solid;
border-right: 1px #E6E6E6 solid;
background-image: url("http://www.heli-group.co.il/images/side/m_bg.png");
background-position: center bottom;
padding-top: 15px;
}
.smn_bull {
width: 24px;
background-image: url("http://www.heli-group.co.il/images/side/bull.png");
background-position: center center;
background-repeat: no-repeat;
}
.smn_txt {
color: #666666;
font-size: 14px;
}
.smn_txt_s {
color: #666666;
font-size: 14px;
font-weight: bold;
}
.mName {
display: block;
font-weight: bold;
font-size: 14pt;
color: #000;
padding-bottom: 18px;
text-align: center;
text-decoration: underline;
}
.slot {
display: block;
font-size: 10pt;
font-weight: bold;
}
.select
{
    width:80%;
    direction:rtl;
}
</style>
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
			    <li><a href="Home.aspx"><span>עמוד הבית</span></a></li>
			    <li><a href="articles.html"><span>כתבות</span></a></li>
                <li><a href=""><span>סרטוני וידאו</span></a></li>
                <li><a href="UserPhotos.aspx"><span>אינסטגרם</span></a></li>
			    <li><a href="recipes.html"><span>מתכונים</span></a></li>
			    <li class="has-sub"><a href="forum.html"><span>פורום</span></a></li>
			    <li class="last"><a href="Profile.aspx"><span>פרופיל</span></a></li>
			 </ul>
	</div>

    <!--start content-->
	<div class="main" >
        <div id="right" style="width:20%; float:right;">
            <div>
                <div class="b_ttl_bg"><div class="b_ttl_rgt"><div class="b_ttl_lft"><div class="b_ttl_txt">תפריטי דיאטה</div></div></div></div>
                <table cellpadding="0" cellspacing="0" width="100%" height="100%" border="0">
		            <tbody><tr>
		            <td class="smn" id="top_TD0">
			            <div align="right">
			            <table cellpadding="0" cellspacing="0"><tbody><tr><td class="smn_bull"></td><td><a href="/diets.php?mpid=18" class="smn_txt_s">תפריט 1200 קלוריות</a></td></tr></tbody></table>
			              </div>
		            </td>
		            </tr>
		            <tr>
		            <td class="smn" id="top_TD1">
			            <div align="right">
			            <table cellpadding="0" cellspacing="0"><tbody><tr><td class="smn_bull"></td><td><a href="/diets.php?mpid=19" class="smn_txt">תפריט 1500 קלוריות</a></td></tr></tbody></table>
			              </div>
		            </td>
		            </tr>
		            <tr>
		            <td class="smn" id="top_TD2">
			            <div align="right">
			            <table cellpadding="0" cellspacing="0"><tbody><tr><td class="smn_bull"></td><td><a href="/diets.php?mpid=809" class="smn_txt">תפריט 1800 קלוריות</a></td></tr></tbody></table>
			              </div>
		            </td>
		            </tr>
		            <tr>
		            <td class="smn" id="top_TD3">
			            <div align="right">
			            <table cellpadding="0" cellspacing="0"><tbody><tr><td class="smn_bull"></td><td><a href="/diets.php?mpid=321" class="smn_txt">תפריט לצמחונים 1200</a></td></tr></tbody></table>
			              </div>
		            </td>
		            </tr>
		            <tr>
		            <td class="smn" id="top_TD4">
			            <div align="right">
			            <table cellpadding="0" cellspacing="0"><tbody><tr><td class="smn_bull"></td><td><a href="/diets.php?mpid=312" class="smn_txt">תפריט לצמחונים 1500</a></td></tr></tbody></table>
			              </div>
		            </td>
		            </tr>
		            <tr>
		            <td class="smn" id="top_TD5">
			            <div align="right">
			            <table cellpadding="0" cellspacing="0"><tbody><tr><td class="smn_bull"></td><td><a href="/diets.php?mpid=314" class="smn_txt">תפריט עשיר בברזל 1200</a></td></tr></tbody></table>
			              </div>
		            </td>
		            </tr>

            </tbody></table>
            </div>
        </div>
        <div id="left" style="width:75%; float:left; border:2px dotted darkgreen; padding:20px;">
        <form id="menu" runat="server">
            <div class="1200">
                <h2 class="mName">תפריט 1200 קלוריות</h2>
                <div class="mealTitle" style="font-size: 12pt;font-weight: bold;padding-bottom: 10px;">(ארוחת בוקר: מנת פחמימה + מנת חלבון (גבינה</div>
                <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select">
                </asp:DropDownList>
                <div class="slot">:(בחר מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </div>
        </form>
        </div>
   

    </div>
    <!--end content-->

	<div class="clear"></div>
	<div class="footer1">
		<div class="copy">
			<p class="w3-link">Design by&nbsp; <a href="#"> MyHealthSpot team </a></p>
		</div>
		<div class="clear"></div>	
	</div>
</div>
</div>
</div>
</body>
</html>

