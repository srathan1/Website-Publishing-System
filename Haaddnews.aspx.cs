using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;

public partial class Haaddnews : System.Web.UI.Page
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
            ddldivid.Enabled = false;
            ddldivid.Text = Session["divid"].ToString();
            txtnewsid.Enabled = true;
            txtdescriotion.Enabled = true;
            btnnew.Text = "Insert";
            btnmodify.Enabled = false;            
        }
        else if (btnnew.Text == "Insert")
        {

            string i = con.newnews(ddldivid.Text, txtnewsid.Text, txtdescriotion.Text);
            if (i == "1")
            {
                MessageBox.Show("Record Entered");
            }
            else
            {
                MessageBox.Show("News ID already Exists");
            }
            ddldivid.Enabled = false;
            txtnewsid.Text = "";
            txtdescriotion.Text = "";
            txtdescriotion.Enabled = false;
            txtnewsid.Enabled = false;            
            btnmodify.Enabled = true;
            btnnew.Text = "New";
            ddldivid.Text = "";
        }
    }
    protected void btnmodify_Click(object sender, EventArgs e)
    {
        if (btnmodify.Text == "Modify")
        {
            btnnew.Enabled = false;            
            txtnewsid.Visible = false;
            txtdescriotion.Enabled = true;
            ddlnewsid.Visible = true;
            ddldivid.Enabled = false;
            ddldivid.Text = Session["divid"].ToString();
            ddlnewsid.Enabled = true;

            btnmodify.Text = "Update";

        }
        else if (btnmodify.Text == "Update")
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
            ddldivid.Enabled = false;
            txtnewsid.Visible = true;
            txtdescriotion.Enabled = false;
            ddlnewsid.Visible = false;
            ddldivid.Enabled = true;
            txtdescriotion.Text = "";
            txtnewsid.Text = "";
            btnmodify.Text = "Modify";
            ddldivid.Enabled = false;
            ddldivid.Text = "";

        }

    }
    protected void ddlnewsid_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = new DataTable();
            dt = con.getnewsdetails(ddlnewsid.Text);            
            txtdescriotion.Text = dt.Rows[0][1].ToString();
        }
        catch (Exception ee)
        {
            MessageBox.Show("No News Found");
        }

    }    
    protected void btncancel_Click(object sender, EventArgs e)
    {
        btnnew.Enabled = true;        
        btnmodify.Enabled = true;

        ddldivid.Text = "";
        txtnewsid.Text = "";
        txtdescriotion.Text = "";

        ddldivid.Enabled = false;
        ddlnewsid.Visible = false;

        txtnewsid.Enabled = false;
        txtdescriotion.Enabled = false;
        txtnewsid.Visible = true;       
        btnnew.Text = "New";
        btnmodify.Text = "Modify";

    }
}