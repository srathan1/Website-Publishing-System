using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;

public partial class Adminaddnews : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            ddldivid.Enabled = false;
            ddlnewsid.Visible = false;
            txtnewsid.Enabled = false;
            txtdescriotion.Enabled = false;
            
        }
       
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        if (btnnew.Text == "New")
        {
            ddldivid.Enabled = true;
            txtnewsid.Enabled = true;
            txtdescriotion.Enabled = true;
            btnnew.Text = "Insert";
            btnmodify.Enabled = false;
            btndelete.Enabled = false;
        }
        else if(btnnew.Text=="Insert")
        {

            string i = con.newnews(ddldivid.Text, txtnewsid.Text, txtdescriotion.Text);
                if (i == "1")
                {
                    MessageBox.Show("Record Entered");
                }
                else
                {
                    MessageBox.Show("Record Not Entered");
                }
            ddldivid.Enabled = false;
            txtnewsid.Text = "";
            txtdescriotion.Text = "";
            txtdescriotion.Enabled = false;
            txtnewsid.Enabled = false;
            btndelete.Enabled = true;
            btnmodify.Enabled = true;
            btnnew.Text="New";
        }
    }
    protected void btnmodify_Click(object sender, EventArgs e)
    {
        if (btnmodify.Text =="Modify")
        {
            btnnew.Enabled = false;
            btndelete.Enabled = false;

            txtnewsid.Visible = false;
            txtdescriotion.Enabled = true;
            ddlnewsid.Visible = true;
            ddldivid.Enabled=true;
            ddlnewsid.Enabled = true;

            btnmodify.Text = "Update";

        }
        else if (btnmodify.Text =="Update")
        {
            string i = con.modifynews(ddlnewsid.Text, ddldivid.Text, txtdescriotion.Text);
            if (i == "1")
            {
                MessageBox.Show("News Updated");
            }
            else
            {
                MessageBox.Show("News Not Updated");
            }
            btnnew.Enabled = true;
            btndelete.Enabled = true;
            ddldivid.Enabled = false;
            txtnewsid.Visible = true;
            txtdescriotion.Enabled = false;
            ddlnewsid.Visible = false;
            ddldivid.Enabled=true;
            txtdescriotion.Text = "";
            txtnewsid.Text = "";
            btnmodify.Text = "Modify";
            ddldivid.Enabled = false;

        }

    }
    protected void ddlnewsid_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = new DataTable();
            dt = con.getnewsdetails(ddlnewsid.Text);
            ddldivid.SelectedValue = dt.Rows[0][2].ToString();
            txtdescriotion.Text = dt.Rows[0][1].ToString();
        }
        catch (Exception ee)
        {
            MessageBox.Show("No News Found");
        }
        
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        if (btndelete.Text == "Delete")
        {
            btnmodify.Enabled = false;
            btnnew.Enabled = false;

            txtnewsid.Visible = false;
            ddlnewsid.Visible = true;
            ddlnewsid.Enabled = true;
            btndelete.Text = "Remove";
            ddlnewsid.ClearSelection();
        }
        else if (btndelete.Text == "Remove")
        {
            string i = con.deletenews(ddlnewsid.Text);
            if (i == "1")
            {
                MessageBox.Show("News deleted");

            }
            else
            {
                MessageBox.Show("News Not Deleted");
            }
            btnmodify.Enabled = true;
            btnnew.Enabled = true;

            txtnewsid.Visible = true;
            ddlnewsid.Visible = false;
            ddlnewsid.Enabled = false;
            btndelete.Text = "Delete";
            txtdescriotion.Text = "";
            txtnewsid.Text = "";
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        btnnew.Enabled = true;
        btndelete.Enabled=true;
        btnmodify.Enabled=true;

        txtnewsid.Text="";
        txtdescriotion.Text="";

        ddldivid.Enabled=false;
        ddlnewsid.Visible=false;

        txtnewsid.Enabled=false;
        txtdescriotion.Enabled=false;
        txtnewsid.Visible = true;
        btndelete.Text = "Delete";
        btnnew.Text = "New";
        btnmodify.Text = "Modify";

    }
}