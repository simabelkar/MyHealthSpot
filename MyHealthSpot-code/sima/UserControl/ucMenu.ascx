﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucMenu.ascx.cs" Inherits="MyHealthSpot.UserControl.ucMenu" %>
<div class="cssmenu">
    <div class="logo">
			<h1><a href="Home.aspx"><img src="images/logo4.png" alt=""/></a></h1>
	</div>
	<ul>
		<li class="active"><a href="Home.aspx"><span>Home</span></a></li>
		<li><a href="articles.html"><span>Articles</span></a></li>
		<li><a href="recipes.html"><span>Recipes</span></a></li>
		<li class="has-sub"><a href="forum.html"><span>Forum</span></a></li>
		<li class="last"><a href="Profile.aspx"><span>Profile</span></a></li>
		</ul>
        <div class="login">
        <a href="#">Login</a> | <a href="Register.aspx">Register</a>
        </div>

        <div class="clear"></div>
</div>
