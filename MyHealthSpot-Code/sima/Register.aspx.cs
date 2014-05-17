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
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                userName.Value = "";
                Password.Value = "";
                userEmail.Value = "";
                firstName.Value = "";
                lastName.Value = "";
                userPhone.Value = "";
            }
        }

        protected void bb1_Click(object sender, EventArgs e)
        {
            string strDSN = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\\Users\\sbelkar\\Documents\\GitHub\\MyHealthSpot\\MyHealthSpot-Code\\sima\\App_Data\\Northwind.mdb";
            string strSQL = "insert into Users values ('" + userName.Value + "','" + Password.Value.ToString() + "','" + userEmail.Value.ToString() + "','" + firstName.Value.ToString() + "','" + lastName.Value.ToString() + "','" + userPhone.Value.ToString() + "')";
            // create Objects of ADOConnection and ADOCommand
            OleDbConnection myConn = new OleDbConnection(strDSN);
            OleDbDataAdapter myCmd = new OleDbDataAdapter(strSQL, myConn);
            myConn.Open();
            OleDbCommand cmd = new OleDbCommand(strSQL, myConn);
            try
            {
                cmd.ExecuteNonQuery();
                myConn.Close();
                Response.Redirect("Register.aspx");
            }
            catch (Exception ex) 
            {
                errLabel.Text = "Had Problem - " + ex.Message;
                errLabel.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}