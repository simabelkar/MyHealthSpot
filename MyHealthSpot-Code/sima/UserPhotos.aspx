<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPhotos.aspx.cs" Inherits="MyHealthSpot.UserPhotos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Health Spot | Users Photos</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=News+Cycle' rel='stylesheet' type='text/css'>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            var h = 410;
            var pagi;
            var imageremaining;
            var nextstep = 8;
            var NoMore = false;
            var tag = "myhealthspot";
            var count = 8;
            var flagClicked = false;
            var photos;
            var currentpos = 0;
            var access_token = '42496348.70f0e79.1dd7000b196543d7be48ccefbd6a12b0';
            var instagramUrl = 'https://api.instagram.com/v1/tags/' + tag + '/media/recent?callback=?&access_token=' + access_token;

            $('#tagy').append("#" + tag);
            grabImages(instagramUrl);

            function grabImages(instagramUrl) {
                $.getJSON(instagramUrl, onDataLoaded);

            }

            function onDataLoaded(instagram_data) {
                if (flagClicked) {
                    if (!NoMore) {
                        $('#target').css("height", h);
                        console.log(h);
                        for (currentpos; currentpos < nextstep; currentpos++) {
                            var photo = photos[currentpos];
                            $('#target').append('<div class="photo"><a href="' + photo.link + '" target="_blank" class="ebayLVTracking_clickthru" clickid="InstagramImg" onClick="ebayLVTrClk._ebayLVTrackerClk_click(event);"><img class="insta" src="' + photo.images.standard_resolution.url + '" width="190" height="190"/></a><img class="avatar" width="40" height="40" src="' + photo.caption.from.profile_picture + '" /><span class="heart"><strong>' + photo.likes.count + '</strong></span><span class="comments"><strong>' + photo.comments.count + '</strong></span> </div>');

                        }
                    }
                    document.getElementById('photos-wrap').focus();
                }
                else {
                    console.log(instagram_data);

                    if (instagram_data.meta.code == 200) {
                        photos = instagram_data.data;
                        pagi = instagram_data.pagination;

                        if (photos.length > 0) {
                            $('#target').css("height", h);
                            for (currentpos; currentpos < nextstep; currentpos++) {
                                var photo = photos[currentpos];
                                $('#target').append('<div class="photo"><a href="' + photo.link + '" target="_blank"><img class="insta" src="' + photo.images.standard_resolution.url + '" width="190" height="190"/></a><img class="avatar" width="40" height="40" src="' + photo.caption.from.profile_picture + '" /><span class="heart"><strong>' + photo.likes.count + '</strong></span><span class="comments"><strong>' + photo.comments.count + '</strong></span> </div>');
                            }

                        }
                        else {
                            $('#target').append("<p>Hmm.  I couldnt find anything!</p>");
                        }
                    }
                    else {
                        var error = data.meta.error_message;
                        $('#target').append('Something happened, Instagram said: ' + error);
                    }
                }

            }
            $(".ViewMore").click(function () {
                nextstep = nextstep + 8;
                imageremaining = photos.length - currentpos;
                flagClicked = true;
                if (nextstep > photos.length) {
                    console.log("this is the end");
                    nextstep = photos.length;

                    if (pagi.next_url != null) {
                        if (!NoMore) {
                            $('#photos-wrap').append("<p>Sorry, this page shows only the 16 most recent Instagram photos with #" + tag + " tag</p>");
                            NoMore = true;
                        }

                    }
                    else {
                        if (!NoMore) {
                            $('#photos-wrap').append("<p>Hmm.  No more images with this tag!</p>");
                            NoMore = true;
                        }

                    }

                }
                console.log("image remaining: " + imageremaining);
                console.log("nextstep: " + nextstep);
                h = h + 400;
                grabImages(instagramUrl);
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
			<h1><a href="Home.aspx"><img src="images/logo4.png" alt="" /></a></h1>
	    </div>
			<ul>
			   <li ><a href="Home.aspx"><span>עמוד הבית</span></a></li>
			    <li><a href="articles.html"><span>כתבות</span></a></li>
                <li><a href=""><span>סרטוני וידאו</span></a></li>
                <li class="active"><a href="UserPhotos.aspx"><span>אינסטגרם</span></a></li>
			    <li><a href="recipes.html"><span>מתכונים</span></a></li>
			    <li class="has-sub"><a href="forum.html"><span>פורום</span></a></li>
			    <li class="last"><a href="profile.html"><span>פרופיל</span></a></li>
			 </ul>
         <div class="clear"></div>
	</div>
    
    <div class="main"></div>
    <div class="instagramText" align="center"><h3>Shoot it (<em>Instagram</em>). Tag it (<em id="tagy"></em>). See it (<em>Here</em>).</h3></br></br></div>
    <div id="target" ></div>
    <div id="photos-wrap" align="center"><button class="ViewMore">View more</button></div>
</div>
</div>
</div>
</body>
</html>