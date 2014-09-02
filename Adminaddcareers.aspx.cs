using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;


public partial class Adminaddcareers : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            txtjobid.Enabled = false;
            ddljobid.Visible = false;
            txtdescription.Enabled = false;
            txtdescription.Text = "";
            txtjobid.Text = "";
            btnnew.Text = "New";
            btnmodify.Text = "Modify";
            btndelete.Text = "Delete";
        }        
    }

   
    protected void btnnew_Click(object sender, EventArgs e)
    {
        if (btnnew.Text == "New")
        {
            txtjobid.Enabled = true;
            txtdescription.Enabled = true;

            btnmodify.Enabled = false;
            btndelete.Enabled = false;
            btnnew.Text = "Insert";
        }
        else if (btnnew.Text == "Insert")
        {
            string i = con.addcareers(txtjobid.Text, txtdescription.Text);
            if (i == "1")
            {
                MessageBox.Show("JOB ADDED");
            }
            else
            {
                MessageBox.Show("JOB NOT ADDED");
            }
            txtdescription.Text = "";
            txtjobid.Text = "";
            btnnew.Text="New";
            btnmodify.Enabled=true;
            btndelete.Enabled = true;
            txtdescription.Enabled = false;
            txtjobid.Enabled = false;
        }
    }
    protected void btnmodify_Click(object sender, EventArgs e)
    {
        if (btnmodify.Text == "Modify")
        {
            btnnew.Enabled = false;
            btndelete.Enabled = false;

            txtdescription.Enabled = true;
            txtjobid.Visible = false;
            ddljobid.Visible = true;
            ddljobid.Enabled = true;
            btnmodify.Text = "Update";
        }
        else if(btnmodify.Text == "Update")
        {
            string i = con.modifycareers(ddljobid.Text, txtdescription.Text);
            if(i=="1")
            {
                MessageBox.Show("Job Updated");
            }
            else
            {
                MessageBox.Show("Job Not Updated");
            }
            btnnew.Enabled = true;
            btndelete.Enabled = true;

            txtdescription.Enabled = false;
            txtjobid.Visible = true;
            ddljobid.Visible = false;
            ddljobid.Enabled = false;
            btnmodify.Text = "Modify";
            txtdescription.Text="";
            txtjobid.Text="";
        }
    }
    protected void ddljobid_SelectedIndexChanged(object sender, EventArgs e)
    {
        string i = con.getcareerdetails(ddljobid.Text);
        txtdescription.Text = i;
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        if (btndelete.Text == "Delete")
        {
            btnnew.Enabled = false;
            btnmodify.Enabled = false;
            btndelete.Text = "Remove";
            txtjobid.Visible = false;
            ddljobid.Visible=true;
            ddljobid.Enabled=true;

        }
        else if (btndelete.Text == "Remove")
        {
            string i = con.deletecareers(ddljobid.Text);
            if (i == "1")
            {
                MessageBox.Show("Job Deleted");
            }
            else
            {
                MessageBox.Show("Job Not Deleted");
            }
            btnnew.Enabled = true;
            btnmodify.Enabled = true;
            btndelete.Text = "Delete";
            txtjobid.Visible = true;
            ddljobid.Visible = false;
            txtdescription.Text = "";
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        btnnew.Enabled = true;
        btnmodify.Enabled = true;
        btndelete.Enabled = true;

        txtjobid.Enabled = false;
        txtjobid.Text = "";

        txtdescription.Enabled = false;
        txtdescription.Text = "";
        ddljobid.Visible = false;
        txtjobid.Visible = true;
        btnmodify.Text = "Modify";
        btnnew.Text = "New";
        btndelete.Text = "Delete";
    }
}