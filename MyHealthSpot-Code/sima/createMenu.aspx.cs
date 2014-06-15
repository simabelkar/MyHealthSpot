using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.OleDb;


namespace MyHealthSpot
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            DataTable dt = new DataTable();
            string strDSN = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("./App_Data/Northwind.mdb");
            //string strDSN = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\sbelkar\\Documents\\GitHub\\MyHealthSpot\\MyHealthSpot-Code\\sima\\App_Data\\Northwind.mdb";
            string strSQL1 = "SELECT name FROM pachmima";
            string strSQL2 = "SELECT name FROM ChelbonCheese";
            string strSQL3 = "SELECT name FROM Fruits";
            string strSQL4 = "SELECT name FROM ChelbonMeat";
            string strSQL5 = "SELECT name FROM Shuman";
            string strSQL6 = "SELECT name FROM HalfChelbonCheese";
            // create Objects of ADOConnection and ADOCommand
            OleDbConnection myConn = new OleDbConnection(strDSN);

            OleDbDataAdapter myCmd1 = new OleDbDataAdapter(strSQL1, myConn);
            OleDbDataAdapter myCmd2 = new OleDbDataAdapter(strSQL2, myConn);
            OleDbDataAdapter myCmd3 = new OleDbDataAdapter(strSQL3, myConn);
            OleDbDataAdapter myCmd4 = new OleDbDataAdapter(strSQL4, myConn);
            OleDbDataAdapter myCmd5 = new OleDbDataAdapter(strSQL1, myConn);
            OleDbDataAdapter myCmd6 = new OleDbDataAdapter(strSQL5, myConn);
            OleDbDataAdapter myCmd7 = new OleDbDataAdapter(strSQL6, myConn);

            myConn.Open();

            OleDbCommand cmd1 = new OleDbCommand(strSQL1, myConn);
            OleDbCommand cmd2 = new OleDbCommand(strSQL2, myConn);
            OleDbCommand cmd3 = new OleDbCommand(strSQL3, myConn);
            OleDbCommand cmd4 = new OleDbCommand(strSQL4, myConn);
            OleDbCommand cmd5 = new OleDbCommand(strSQL1, myConn);
            OleDbCommand cmd6 = new OleDbCommand(strSQL5, myConn);
            OleDbCommand cmd7 = new OleDbCommand(strSQL3, myConn);
            OleDbCommand cmd8 = new OleDbCommand(strSQL1, myConn);
            OleDbCommand cmd9 = new OleDbCommand(strSQL1, myConn);
            OleDbCommand cmd10 = new OleDbCommand(strSQL2, myConn);
            OleDbCommand cmd11 = new OleDbCommand(strSQL6, myConn);
            OleDbCommand cmd12 = new OleDbCommand(strSQL5, myConn);
            OleDbCommand cmd13 = new OleDbCommand(strSQL2, myConn);
            OleDbCommand cmd14 = new OleDbCommand(strSQL3, myConn);
            try
            {
                //pahmima
                OleDbDataReader myReader1 = cmd1.ExecuteReader();
                DropDownList1.DataSource = myReader1;
                DropDownList1.DataTextField="name";
                DropDownList1.DataValueField = "name";
                DropDownList1.DataBind();
                OleDbDataReader myReader5 = cmd5.ExecuteReader();
                DropDownList5.DataSource = myReader5;
                DropDownList5.DataTextField = "name";
                DropDownList5.DataValueField = "name";
                DropDownList5.DataBind();
                OleDbDataReader myReader8 = cmd8.ExecuteReader();
                DropDownList8.DataSource = myReader8;
                DropDownList8.DataTextField = "name";
                DropDownList8.DataValueField = "name";
                DropDownList8.DataBind();
                OleDbDataReader myReader9 = cmd9.ExecuteReader();
                DropDownList9.DataSource = myReader9;
                DropDownList9.DataTextField = "name";
                DropDownList9.DataValueField = "name";
                DropDownList9.DataBind();

                //helbom-cheese
                OleDbDataReader myReader2 = cmd2.ExecuteReader();
                DropDownList2.DataSource = myReader2;
                DropDownList2.DataTextField = "name";
                DropDownList2.DataValueField = "name";
                DropDownList2.DataBind();
                OleDbDataReader myReader10 = cmd10.ExecuteReader();
                DropDownList10.DataSource = myReader10;
                DropDownList10.DataTextField = "name";
                DropDownList10.DataValueField = "name";
                DropDownList10.DataBind();
                OleDbDataReader myReader13 = cmd13.ExecuteReader();
                DropDownList13.DataSource = myReader13;
                DropDownList13.DataTextField = "name";
                DropDownList13.DataValueField = "name";
                DropDownList13.DataBind();

                //fruit
                OleDbDataReader myReader3 = cmd3.ExecuteReader();
                DropDownList3.DataSource = myReader3;
                DropDownList3.DataTextField = "name";
                DropDownList3.DataValueField = "name";
                DropDownList3.DataBind();
                OleDbDataReader myReader7 = cmd7.ExecuteReader();
                DropDownList7.DataSource = myReader7;
                DropDownList7.DataTextField = "name";
                DropDownList7.DataValueField = "name";
                DropDownList7.DataBind();
                OleDbDataReader myReader14 = cmd14.ExecuteReader();
                DropDownList14.DataSource = myReader14;
                DropDownList14.DataTextField = "name";
                DropDownList14.DataValueField = "name";
                DropDownList14.DataBind();

                //helbon-meat
                OleDbDataReader myReader4 = cmd4.ExecuteReader();
                DropDownList4.DataSource = myReader4;
                DropDownList4.DataTextField = "name";
                DropDownList4.DataValueField = "name";
                DropDownList4.DataBind();

                //shuman
                OleDbDataReader myReader6 = cmd6.ExecuteReader();
                DropDownList6.DataSource = myReader6;
                DropDownList6.DataTextField = "name";
                DropDownList6.DataValueField = "name";
                DropDownList6.DataBind();
                OleDbDataReader myReader12 = cmd12.ExecuteReader();
                DropDownList12.DataSource = myReader12;
                DropDownList12.DataTextField = "name";
                DropDownList12.DataValueField = "name";
                DropDownList12.DataBind();

                //Half helbom-cheese
                OleDbDataReader myReader11 = cmd11.ExecuteReader();
                DropDownList11.DataSource = myReader11;
                DropDownList11.DataTextField = "name";
                DropDownList11.DataValueField = "name";
                DropDownList11.DataBind();

            }
            catch (Exception ex)
            {
                
            }
        }
    }
}