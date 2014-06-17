<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createMenu.aspx.cs" Inherits="MyHealthSpot.WebForm2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>My Health Spot | Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=News+Cycle' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/recipes.css" rel="stylesheet" type="text/css" />

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $(".suggestion").show();
        $(".1200").hide();
        $(".1500").hide();
        $(".1800").hide();

        $("#1200a").click(function () {
            $(".suggestion").hide();
            $(".1200").show();
            $(".1500").hide();
            $(".1800").hide();
            $("#1200a").attr('class', 'smn_txt_s');
            $("#1500a").attr('class', 'smn_txt');
            $("#1800a").attr('class', 'smn_txt');
        });
        $("#1500a").click(function () {
            $(".suggestion").hide();
            $(".1500").show();
            $(".1200").hide();
            $(".1800").hide();
            $("#1500a").attr('class', 'smn_txt_s');
            $("#1200a").attr('class', 'smn_txt');
            $("#1800a").attr('class', 'smn_txt');
        });
        $("#1800a").click(function () {
            $(".suggestion").hide();
            $(".1800").show();
            $(".1500").hide();
            $(".1200").hide();
            $("#1800a").attr('class', 'smn_txt_s');
            $("#1500a").attr('class', 'smn_txt');
            $("#1200a").attr('class', 'smn_txt');
        });
    });
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
			    <li><a href="Home.aspx"><span>עמוד הבית</span></a></li>
			    <li><a href="articles.html"><span>כתבות</span></a></li>
                <li><a href="UserPhotos.aspx"><span>אינסטגרם</span></a></li>
			    <li><a href="recipes.html"><span>מתכונים</span></a></li>
			    <li class="has-sub"><a href="forum.html"><span>פורום</span></a></li>
			    <li class="last"><a href="Profile.aspx"><span>פרופיל</span></a></li>
			 </ul>
	</div>

    <!--start content-->
	<div class="main" >
        <div id="right" style="width:20%; float:right; padding:20px">
            <div>
                <div class="b_ttl_bg"><div class="b_ttl_rgt"><div class="b_ttl_lft"><div class="b_ttl_txt">תפריטי דיאטה</div></div></div></div>
                <table cellpadding="0" cellspacing="0" width="100%" height="100%" border="0">
		            <tbody><tr>
		            <td class="smn" id="top_TD0">
			            <div align="right">
			            <table cellpadding="0" cellspacing="0"><tbody><tr><td class="smn_bull"></td><td><a id="1200a" href="#" class="smn_txt">תפריט 1200 קלוריות</a></td></tr></tbody></table>
			              </div>
		            </td>
		            </tr>
		            <tr>
		            <td class="smn" id="top_TD1">
			            <div align="right">
			            <table cellpadding="0" cellspacing="0"><tbody><tr><td class="smn_bull"></td><td><a id="1500a" href="#" class="smn_txt">תפריט 1500 קלוריות</a></td></tr></tbody></table>
			              </div>
		            </td>
		            </tr>
		            <tr>
		            <td class="smn" id="top_TD2">
			            <div align="right">
			            <table cellpadding="0" cellspacing="0"><tbody><tr><td class="smn_bull"></td><td><a id="1800a" href="#" class="smn_txt">תפריט 1800 קלוריות</a></td></tr></tbody></table>
			              </div>
		            </td>
		            </tr>
            </tbody></table>
            </div>
        </div>
        <div id="left" style="width:60%; float:right; border:2px darkgreen; background-color:white; margin-top:20px;">
        <form id="menu" runat="server">
            <!--1200-->
            <div class="1200" style="background-color:blue; padding:20px; background-color:#7cc810;">
                <h2 class="mName">תפריט 1200 קלוריות</h2>
                <div class="mealTitle">(ארוחת בוקר: מנת פחמימה + מנת חלבון (גבינה</div>
                <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select">
                </asp:DropDownList>
                <div class="slot">:(בחר מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת ביניים: מנת פרי</div>
                 <div class="slot">:בחר מנת פרי</div>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת צהריים: מנת חלבון (בשר) + מנת פחמימה + מנת שומן</div>
                 <div class="slot">:(בחר מנת חלבון (בשר</div>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:בחר מנת שומן</div>
                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת ביניים: מנת פרי + מנת פחמימה</div>
                  <div class="slot">:בחר מנת פרי</div>
                <asp:DropDownList ID="DropDownList7" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList8" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת ערב: מנת פחמימה + מנת חלבון (גבינה) + חצי מנת חלבון (גבינה) + מנת שומן</div>
                  <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList9" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:(בחר מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList10" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="slot">:(בחר חצי מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList11" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="slot">:בחר מנת שומן</div>
                <asp:DropDownList ID="DropDownList12" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת לילה: מנת חלבון (גבינה) + מנת פרי</div>
                 <div class="slot">:(בחר מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList13" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="slot">:בחר מנת פרי</div>
                <asp:DropDownList ID="DropDownList14" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <br /><br /><br />
                <span><asp:Button ID="btnSave" style="margin-right:40%" Text="שמור" runat="server" onclick="btnSave_Click" /></span>
            </div>

            <!--1500-->
            <div class="1500" style="background-color:blue; padding:20px; background-color:#eeee66;">
                <h2 class="mName">תפריט 1500 קלוריות</h2>
                <div class="mealTitle">(ארוחת בוקר: מנת פחמימה + מנת חלבון (גבינה</div>
                <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList15" runat="server" CssClass="select">
                </asp:DropDownList>
                <div class="slot">:(בחר מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList16" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת ביניים: מנת פרי</div>
                 <div class="slot">:בחר מנת פרי</div>
                <asp:DropDownList ID="DropDownList17" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת צהריים: מנת חלבון (בשר) + מנת פחמימה + מנת שומן</div>
                 <div class="slot">:(בחר מנת חלבון (בשר</div>
                <asp:DropDownList ID="DropDownList18" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList19" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:בחר מנת שומן</div>
                <asp:DropDownList ID="DropDownList20" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת ביניים: מנת פרי + מנת פחמימה</div>
                  <div class="slot">:בחר מנת פרי</div>
                <asp:DropDownList ID="DropDownList21" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList22" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת ערב: מנת פחמימה + מנת חלבון (גבינה) + חצי מנת חלבון (גבינה) + מנת שומן</div>
                  <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList23" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:(בחר מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList24" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="slot">:(בחר חצי מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList25" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="slot">:בחר מנת שומן</div>
                <asp:DropDownList ID="DropDownList26" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת לילה: מנת חלבון (גבינה) + מנת פרי</div>
                 <div class="slot">:(בחר מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList27" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="slot">:בחר מנת פרי</div>
                <asp:DropDownList ID="DropDownList28" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </div>

            <!--1800-->
            <div class="1800" style="background-color:blue; padding:20px; background-color:#ff9999;">
                <h2 class="mName">תפריט 1800 קלוריות</h2>
                <div class="mealTitle">(ארוחת בוקר: מנת פחמימה + מנת חלבון (גבינה</div>
                <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList29" runat="server" CssClass="select">
                </asp:DropDownList>
                <div class="slot">:(בחר מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList30" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת ביניים: מנת פרי</div>
                 <div class="slot">:בחר מנת פרי</div>
                <asp:DropDownList ID="DropDownList31" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת צהריים: מנת חלבון (בשר) + מנת פחמימה + מנת שומן</div>
                 <div class="slot">:(בחר מנת חלבון (בשר</div>
                <asp:DropDownList ID="DropDownList32" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList33" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:בחר מנת שומן</div>
                <asp:DropDownList ID="DropDownList34" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת ביניים: מנת פרי + מנת פחמימה</div>
                  <div class="slot">:בחר מנת פרי</div>
                <asp:DropDownList ID="DropDownList35" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList36" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת ערב: מנת פחמימה + מנת חלבון (גבינה) + חצי מנת חלבון (גבינה) + מנת שומן</div>
                  <div class="slot">:בחר מנת פחמימה</div>
                <asp:DropDownList ID="DropDownList37" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                 <div class="slot">:(בחר מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList38" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="slot">:(בחר חצי מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList39" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="slot">:בחר מנת שומן</div>
                <asp:DropDownList ID="DropDownList40" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="mealTitle">ארוחת לילה: מנת חלבון (גבינה) + מנת פרי</div>
                 <div class="slot">:(בחר מנת חלבון (גבינה</div>
                <asp:DropDownList ID="DropDownList41" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <div class="slot">:בחר מנת פרי</div>
                <asp:DropDownList ID="DropDownList42" runat="server" CssClass="select">
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </div>
            <!--default text-->
            <br/>
            <div dir="rtl" class="suggestion">
                <h2>חשוב לדעת:</h2> 
                <p>מומלץ להתחיל לאכול את הארוחה הראשונה תוך שעה מהקימה.</p>
                <p>המרווח בין הארוחות נע בין שעה וחצי לשלוש שעות.</p>
                <p>אין חשיבות לסדר הארוחות.</p>
                <p>לא ניתן לפצל,לצרף, לדלג על ארוחות.</p>
                <p>חשוב לשתות לפחות 2 כוסות מים כל ארוחה(ניתן להוסיף תרכיזי דיאט)</p>
                <p>מנה מותרת בנוסף לתפריט פעם בשבוע.</p>
                <p>ירקות חינמיים ניתן לאכול תמיד בארוחות ובין הארוחות בשפיות.</p>
                <p>עד 4 כוסות קפה ליום + כוס חלב 1% לכל היום.</p>  
            </div>
            <br/>
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

