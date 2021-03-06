﻿using System;
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
                firstName.Value = "";
                lastName.Value = "";
                userEmail.Value = "";
                userPhone.Value = "";
                userHeight.Value = "";
                userWeight.Value = "";
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string strDSN = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("./App_Data/Northwind.mdb");
            string strSQL = "insert into Users values ('" + userName.Value + "','" + Password.Value.ToString() + "','" + userEmail.Value.ToString() + "','" + firstName.Value.ToString() + "','" + lastName.Value.ToString() + "','" + userPhone.Value.ToString() + "','" + userWeight.Value.ToString() + "','" + userHeight.Value.ToString() + "')";
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

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}