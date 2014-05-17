<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyHealthSpot.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>My Health Spot | Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="frm1" runat="server">

	
    <table border="1" width="100%" >
    <tr align="center">
        <td>
            <div class="grids">
                <h3 >
                 רישום משתמש חדש
                </h3>
            </div>                  
            <br />
        </td>
    </tr>

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
			    <span><asp:Button ID="bb1" Text="Submit" runat="server" />
                <asp:Button ID="btnBack" Text="Back" runat="server"  />&nbsp&nbsp&nbsp
                <asp:Label ID="errLabel" Text="" runat="server"></asp:Label></span>
		    </div>
        </td>
    </tr>
    </table>
				
</form>
</asp:Content>
