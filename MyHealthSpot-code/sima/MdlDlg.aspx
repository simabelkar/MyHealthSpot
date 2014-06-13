<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MdlDlg.aspx.cs" Inherits="MyHealthSpot.MdlDlg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-ui-1.10.4.custom.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
    <link href="css/Smoothness/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript">

        jQuery(document).ready(function () {

            $(function () {
                $("#Button1").click(function () {

                    $("#dialog-modal").dialog({
                        height: 140,
                        modal: true
                    });

                });

                
            });

        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <div id="dialog-modal" title="Basic dialog" style="display:none;">
  <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
</div>
    </form>
</body>
</html>
