<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyHealthSpot.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>My Health Spot | Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=News+Cycle' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--slider-->
<link href="css/camera.css" rel="stylesheet" type="text/css" media="all" />
    <script type='text/javascript' src='js/jquery.min.js'></script>
    <script type='text/javascript' src='js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='js/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='js/camera.min.js'></script> 
    
    <script>
        jQuery(function () {

            jQuery('#camera_wrap_1').camera({
                thumbnails: true
            });

            jQuery('#camera_wrap_2').camera({
                height: '400px',
                loader: 'bar',
                pagination: false,
                thumbnails: true
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
			  <li class="active"><a href="Home.aspx"><span>עמוד הבית</span></a></li>
			    <li><a href="articles.html"><span>כתבות</span></a></li>
                <li><a href=""><span>סרטוני וידאו</span></a></li>
                <li><a href="UserPhotos.aspx"><span>אינסטגרם</span></a></li>
			    <li><a href="recipes.html"><span>מתכונים</span></a></li>
			    <li class="has-sub"><a href="forum.html"><span>פורום</span></a></li>
			    <li class="last"><a href="profile.html"><span>פרופיל</span></a></li>
			 </ul>
                       
             
             <div class="clear"></div>
	</div>
    
    <div class="login" >
        <a href="#">משתמש קיים</a> | <a href="Register.aspx">משתמש חדש</a>
        <!-- SIMA: use linkbutton for links, and label for user details-->
     </div>
     </br>
    <!-- #camera_wrap_1 -->
   
            <div class="fluid_container">
        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
            <div data-thumb="images/thumbs/Pilates.jpg" data-src="images/slider/Pilates.jpg">
            </div>
            <div data-thumb="images/thumbs/slider1.jpg" data-src="images/slider/slider1.jpg">
            </div>            
            <div data-thumb="images/thumbs/pilatesClass.jpg" data-src="images/slider/pilatesClass.jpg">
            </div>
            <div data-thumb="images/thumbs/slider2.jpg" data-src="images/slider/slider2.jpg">
            </div>
            <div data-thumb="images/thumbs/motivation.jpg" data-src="images/slider/motivation.jpg">
            </div>
            <div data-thumb="images/thumbs/foodPyramid.jpg" data-src="images/slider/foodPyramid.jpg">
            </div>            
         </div><!-- #camera_wrap_1 -->
         <div class="clear"></div>
	</div>

    
	<!-- end #camera_wrap_1 -->
    
    <!--add grid-->
	<div class="grids_1_of_3">
        <div class="grid_1_of_3 images_1_of_3 bg3">
		    <h3>סרטוני וידאו</h3>
	        <div class="gallery">
		        <a href="images/pic4.jpg"><img src="images/pic4.jpg" title="image-name" height="200px" width=100% /></a>
		    </div>
		    <p dir="rtl">בלחיצה על קישור זה ניתן לצפות בסרטוני וידאו המסבירים כיצד לעשות כושר באופן עצמאי</p>
		    <div class="plus_btn">
			    <span></span>
		    </div>
	    </div>
	    <div class="grid_1_of_3 images_1_of_3 bg2">
			<h3>מתכונים</h3>
		    <div class="gallery">
			    <a href="images/pic2.jpg"><img src="images/pic2.jpg" title="image-name" height="200px" width=100% /></a>
		    </div>
			    <p dir="rtl">בלחיצה על קישור זה ניתן לצפות במתכוני בריאות שיעזרו לכם לשמור על תזונה נכונה</p>
	 	    <div class="plus_btn">
			    <span></span>
		    </div>
	    </div>
	    <div class="grid_1_of_3 images_1_of_3 bg1">
			<h3>כתבות</h3>
		    <div class="gallery">
			    <a href="images/pic3.jpg"><img src="images/pic3.jpg" title="image-name" height="200px" width=100% /></a>
		    </div>
			    <p dir="rtl"> בלחיצה על קישור זה ניתן לקרוא כתבות בנושאי בריאות, כושר ותזונה </p>
		    <div class="plus_btn">
			    <span></span>
		    </div>
	    </div>
	    <div class="clear"></div>
	</div>
    <div class="grids_1_of_3">
		<div class="grid_1_of_3 images_1_of_3 bg3">
			<h3>פרופיל</h3>
		    <div class="gallery">
			    <a href="images/pic6.jpg"><img src="images/pic6.jpg" title="image-name" height="200px" width=100%/></a>
		    </div>
		    <p>בלחיצה על קישור זה ניתן לצפות בפרופיל האישי המאפשר שינוי הגדרות מותאמות וביצוע פעולות אישיות</p>
		    <div class="plus_btn">
			    <span></span>
		    </div>
	    </div>
        <div class="grid_1_of_3 images_1_of_3 bg2">
			<h3>פורום</h3>
			<div class="gallery">
				<a href="images/pic5.jpg"><img src="images/pic5.jpg" title="image-name" height="200px" width=100% /></a>
			</div>
			<p>בלחיצה על קישור זה ניתן לשאול שאלות בפורום על מנת להתייעץ עם משתמשים אחרים</p>
	 		<div class="plus_btn">
				<span></span>
			</div>
		</div>
        <div class="grid_1_of_3 images_1_of_3 bg1">
			<h3>אינסטגרם</h3>
			<div class="gallery">
				<a href="UserPhotos.aspx"><img alt="user photos" src="images/pic1.jpg" title="image-name" height="200px" width=100% /></a>
			</div>
			<p>בלחיצה על קישור זה ניתן לראות תמונות בנושאי בריאות ותזונה, שמשתמשים אחרים העלו מאפליקציית אינסטגרם</p>
			<div class="plus_btn">
			    <a href="UserPhotos.aspx"><span></span></a>
			</div>
		</div>
		<div class="clear"></div>
	</div>
    <!--end grid-->

	<!--content_btm-->
    <!--
	<div class="content_btm">
		<div class="col_1_of_3 span_1_of_3">
			<h2>Lorem Ipsum simply</h2>
			<div class="text1-nav">
				<ul>
					<li><a href="">The standard chunk of Lorem Ipsum used</a></li>
					<li><a href="">Duis a augue ac libero euismod viverra sitth</a></li>
					<li><a href="">The standard chunk of Lorem Ipsum used </a></li>
					<li><a href="">Duis a augue ac libero euismod viverra sitth</a></li>
					<li><a href="">The standard chunk of Lorem Ipsum used </a></li>
					<li><a href="">Duis a augue ac libero euismod viverra sitth</a></li>

				</ul>
			</div>
		</div>
		<div class="col_1_of_3 span_1_of_3">
			<h2>Lorem Ipsum simply</h2>
			<h4>The standard chunk of Lorem Ipsum dolor sit amet,</h4>
			<p class="para">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage</p>
			<div class="button top"><a href="details.html">Read More</a></div>
		</div>
		<div class="col_1_of_3 span_1_of_3">
			<h2>Lorem Ipsum simply</h2>
			<h4>The standard chunk of Lorem Ipsum dolor sit amet,</h4>
			<p class="para">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage</p>
			<div class="button top"><a href="details.html">Read More</a></div>
		</div>
		<div class="clear"></div>
	</div>
    -->
    <!--end content_btm-->
	<!-- black squares content-->
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
    <!-- end black squares content-->
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
