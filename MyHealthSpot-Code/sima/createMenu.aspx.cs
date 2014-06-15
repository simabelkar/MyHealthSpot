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
            string strDSN = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\sbelkar\\Documents\\GitHub\\MyHealthSpot\\MyHealthSpot-Code\\sima\\App_Data\\Northwind.mdb";
            string strSQL = "SELECT name FROM pachmima WHERE type=5";
            // create Objects of ADOConnection and ADOCommand
            OleDbConnection myConn = new OleDbConnection(strDSN);
            OleDbDataAdapter myCmd = new OleDbDataAdapter(strSQL, myConn);
            myConn.Open();
            OleDbCommand cmd = new OleDbCommand(strSQL, myConn);
            try
            {
                OleDbDataReader myReader = cmd.ExecuteReader();

                DropDownList1.DataSource = myReader;
                DropDownList1.DataTextField="name";
                DropDownList1.DataValueField = "name";
                DropDownList1.DataBind();

            }
            catch (Exception ex)
            {
                
            }
        }
    }
}