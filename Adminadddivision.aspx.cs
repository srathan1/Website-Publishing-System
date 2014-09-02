using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;
public partial class Aviewdivision : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            txtdivisionid.Enabled = false;
            txtdivisiondescription.Enabled = false;
            ddldivisionid.Visible = false;
            txtdivisionname.Enabled = false;
        }
    }
    protected void btnnewdivision_Click(object sender, EventArgs e)
    {
        if (btnnewdivision.Text == "New Division")
        {
            txtdivisionid.Enabled = true;
            txtdivisiondescription.Enabled=true;
            txtdivisionname.Enabled=true;
            btnnewdivision.Text="Insert";
            btndelete.Enabled = false;
            btnmodify.Enabled = false;
        }
        else if (btnnewdivision.Text == "Insert")
        {
           
                string i = con.newdivision(txtdivisionid.Text, txtdivisionname.Text, txtdivisiondescription.Text);
                if (i == "1")
                {
                    MessageBox.Show("record inserted");
                }
                else
                {
                    MessageBox.Show("record not inserted");
                }
                btnnewdivision.Text="New Division";
                txtdivisiondescription.Text = "";
                txtdivisionid.Text = "";
                txtdivisionname.Text = "";
                btnmodify.Enabled = true;
                btndelete.Enabled = true;
                txtdivisionid.Enabled = false;
                txtdivisionname.Enabled = false;
                txtdivisiondescription.Enabled = false;
         }

    }
    protected void btnmodify_Click(object sender, EventArgs e)
    {
        if (btnmodify.Text == "Modify")
        {
            txtdivisionid.Visible = false;
            txtdivisionname.Enabled = true;
            txtdivisiondescription.Enabled = true;
            ddldivisionid.Visible = true;
            btnnewdivision.Enabled = false;
            btndelete.Enabled = false;
            btnmodify.Text = "Update";
        }

        else if (btnmodify.Text == "Update")
        {
            string i = con.modifydivision(ddldivisionid.Text, txtdivisionname.Text, txtdivisiondescription.Text);
            if (i == "1")
            {
                MessageBox.Show("record modified");
            }
            else
            {
                MessageBox.Show("record not modified");
            }
            btnmodify.Text = "Modify";
            btnnewdivision.Enabled = false;
            txtdivisionid.Visible = true;
            txtdivisionname.Enabled = false;
            txtdivisiondescription.Enabled = false;
            ddldivisionid.Visible = false;
            btnnewdivision.Enabled = true;
            btndelete.Enabled = true;
            txtdivisionname.Text = "";
            txtdivisiondescription.Text = "";
            ddldivisionid.ClearSelection();
           
        }

    }
    protected void ddldivisionid_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        DataTable dt = new DataTable();
        dt = con.getdivdetails (ddldivisionid.Text );
        txtdivisionname.Text = dt.Rows[0][1].ToString();
        txtdivisiondescription.Text = dt.Rows[0][2].ToString();
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        btnnewdivision.Text = "New Division";
        btnmodify.Text = "Modify";
        btndelete.Text = "Delete";
        btnnewdivision.Enabled = true;
        btndelete.Enabled = true;
        btnmodify.Enabled = true;
        txtdivisionid.Enabled = false;
        txtdivisiondescription.Enabled = false;
        ddldivisionid.Visible = false;
        txtdivisionname.Enabled = false;
        txtdivisionid.Visible = true;
        txtdivisiondescription.Text = "";
        txtdivisionname.Text = "";

    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        if (btndelete.Text == "Delete")
        {
            txtdivisionid.Visible = false;
            ddldivisionid.Visible = true;
            ddldivisionid.Enabled = true;
            btndelete.Text = "Remove";
            btnnewdivision.Enabled = false;
            btnmodify.Enabled = false;
        }
        else if (btndelete.Text == "Remove")
        {
            string i = con.deletedivision(ddldivisionid.Text);
            if (i == "1")
            {
                MessageBox.Show("division deleted");
            }
            else
            {
                MessageBox.Show("division Not Deleted");

            }
            btnmodify.Enabled=true;
            btnnewdivision.Enabled = true;
            ddldivisionid.Visible = false;
            txtdivisionid.Visible = true;
            txtdivisiondescription.Text = "";
            txtdivisionid.Text = "";
            txtdivisionname.Text = "";

        }
    }
}