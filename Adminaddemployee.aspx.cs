using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;

public partial class Adminaddemployee : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            txtempid.Enabled = false;
            txtempname.Enabled = false;
            txtdesignation.Enabled = false;
            txtaddress.Enabled = false;
            txtpass1.Visible = false;
            txtpass2.Visible = false;
            ddlempid.Visible = false;
            ddldivisionid.Enabled = false;
            txtphoneno.Enabled = false;
            lblpass1.Visible = false;
            lblpass2.Visible = false;
            ddlemprole.Enabled = false;
        }

    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        con.connect();
        if (btnnew.Text == "New")
        {
            txtempid.Enabled = true;
            txtempname.Enabled = true;
            txtdesignation.Enabled = true;
            txtaddress.Enabled = true;
            txtpass1.Visible = true;
            txtpass2.Visible = true;
            ddlempid.Visible = false;
            ddldivisionid.Enabled = true;            
            btnnew.Text = "Insert";
            lblpass1.Visible = true;
            lblpass2.Visible = true;
            btnmodify.Enabled = false;
            btndelete.Enabled = false;
            txtphoneno.Enabled = true;
            ddlemprole.Enabled = true;
        }
        else if (btnnew.Text == "Insert")
        {
            try
            {
                if (txtpass1.Text == txtpass2.Text)
                {
                    string i = con.newemployee(txtempid.Text, txtempname.Text, ddldivisionid.Text, txtdesignation.Text, txtaddress.Text, txtphoneno.Text,ddlemprole.Text ,txtpass1.Text);
                    if (i == "1")
                    {
                        MessageBox.Show("record inserted");
                    }
                    else
                    {
                        MessageBox.Show("Not inserted");
                    }

                }
                else
                {
                    MessageBox.Show("passwords dosent match");
                }
            }
            catch (Exception ee)
            {
                MessageBox.Show("empid already exists");
            }


            txtempid.Text = "";
            txtempname.Text = "";
            txtdesignation.Text = "";
            txtaddress.Text = "";
            txtphoneno.Text = "";
            txtpass1.Text = "";
            txtpass2.Text = "";
            ddlempid.Visible = false;
            lblpass1.Visible = false;
            lblpass2.Visible = false;
            btnnew.Text = "New";            
            txtempid.Enabled = false;
            txtempname.Enabled = false;
            txtdesignation.Enabled = false;
            txtaddress.Enabled = false;
            txtpass1.Visible = false;
            txtpass2.Visible = false;
            ddlempid.Visible = false;
            ddldivisionid.Enabled = false;
            txtphoneno.Enabled = false;
            btnmodify.Enabled = true;
            btndelete.Enabled = true;
            ddlemprole.Enabled = false;

        }



    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtempid.Text = "";
        txtempname.Text = "";
        txtdesignation.Text = "";
        txtaddress.Text = "";
        txtphoneno.Text = "";        
        txtpass1.Text = "";
        txtpass2.Text = "";
        ddlempid.Visible = false;
        lblpass1.Visible = false;
        lblpass2.Visible = false;
        btnnew.Text = "New";
        btnmodify.Text = "Modify";
        btndelete.Text = "Delete";
        txtempid.Enabled = false;
        txtempname.Enabled = false;
        txtdesignation.Enabled = false;
        txtaddress.Enabled = false;
        txtpass1.Visible = false;
        txtpass2.Visible = false;
        ddlempid.Visible = false;
        ddldivisionid.Enabled = false;
        btnmodify.Enabled = true;
        btndelete.Enabled = true;
        ddlemprole.Enabled = false;
        txtempid.Visible = true;
        btnnew.Enabled = true;
         
    }
    
    protected void ddlempid_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = con.getemployeedetails(ddlempid.Text);
        txtempname.Text = dt.Rows[0][1].ToString();
        ddldivisionid.SelectedValue = dt.Rows[0][2].ToString();
        txtdesignation.Text = dt.Rows[0][3].ToString();
        txtaddress.Text = dt.Rows[0][4].ToString();
        txtphoneno.Text = dt.Rows[0][5].ToString();
        ddlemprole.SelectedValue=dt.Rows[0][6].ToString();
    }

    protected void btnmodify_Click(object sender, EventArgs e)
    {
        if (btnmodify.Text == "Modify")
        {
            btnnew.Enabled = false;
            btndelete.Enabled = false;
            txtempid.Visible = false;
            ddlempid.Visible = true;
            ddldivisionid.Enabled = true;
            txtempname.Enabled = true;
            txtdesignation.Enabled = true;
            txtphoneno.Enabled = true;
            txtaddress.Enabled = true;
            btnmodify.Text = "Update";
            ddlemprole.Enabled = true;
        }
        else if (btnmodify.Text == "Update")
        {
            string i = con.modifyemployee(ddlempid.Text, txtempname.Text, ddldivisionid.Text, txtdesignation.Text, txtaddress.Text, txtphoneno.Text, ddlemprole.Text);
            if (i == "1")
            {
                MessageBox.Show("record modified");

            }
            else
            {
                MessageBox.Show("record not modified");
            }
            btnnew.Enabled = true;
            btndelete.Enabled = true;
            txtempid.Visible = true;
            ddlempid.Visible = false;
            ddldivisionid.Enabled = false;
            txtempname.Enabled = false;
            txtdesignation.Enabled = false;
            txtphoneno.Enabled = false;
            txtaddress.Enabled = false;
            btnmodify.Text = "Modify";
            txtempid.Text = "";
            txtempname.Text = "";
            txtdesignation.Text = "";
            txtaddress.Text = "";
            txtphoneno.Text = "";
            ddlemprole.Enabled = false;
            txtempid.Visible = true;

        }
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        if (btndelete.Text == "Delete")
        {
            btnnew.Enabled=false;
            btnmodify.Enabled = false;

            txtempid.Visible = false;
            ddlempid.Visible = true;
            ddlempid.Enabled = true;

            btndelete.Text = "Remove";

        }
        else if (btndelete.Text =="Remove")
        {
            string i = con.deleteemployee(ddlempid.Text);
            if (i == "1")
            {
                MessageBox.Show("Employee deleted");
            }
            else
            {
                MessageBox.Show("Employee Not Deleted");

            }
            btnnew.Enabled = true;
            btnmodify.Enabled = true;

            txtempid.Visible = true;
            ddlempid.Visible = false;
            ddlempid.Enabled = true;

            txtempname.Text = "";
            txtdesignation.Text = "";
            txtphoneno.Text = "";
            txtaddress.Text = "";
            btndelete.Text = "Delete";
        }
    }
}