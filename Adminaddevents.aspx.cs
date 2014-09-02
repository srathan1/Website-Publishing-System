using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;

public partial class Adminaddevents : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {

            ddldivid.Enabled = false;
            ddleventid.Visible = false;

            txteventid.Enabled = false;
            txteventname.Enabled = false;
            txteventdescription.Enabled = false;

            btnchangeimage.Visible = false;
            imgupload.Enabled = false;
            imgbox.Visible = false;
        }
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        if (btnnew.Text == "New")
        {
            ddleventid.Visible = false;
            ddldivid.Enabled = true;
            txteventname.Enabled = true;
            txteventid.Enabled = true;
            txteventdescription.Enabled = true;
            imgupload.Enabled = true;
            btnmodify.Enabled = false;
            btndelete.Enabled = false;
            btnnew.Text = "Insert";

        }
        else if (btnnew.Text == "Insert")
        {
            string path;
            path = Server.MapPath("Upload");
            string i = con.newevent(txteventid.Text, txteventname.Text, ddldivid.Text, txteventdescription.Text, "Upload\\"+imgupload.FileName);
            if (i == "1")
            {
                MessageBox.Show("Event Inserted");
                imgupload.SaveAs(path + "\\" + imgupload.FileName);
            }
            else
            {
                MessageBox.Show("event id already exists");
            }
            ddldivid.Enabled = true;
            txteventid.Enabled = false;
            txteventdescription.Enabled = false;
            imgupload.Enabled = false;
            btnmodify.Enabled = true;
            btndelete.Enabled = true;
            btnnew.Text = "New";
            txteventname.Text = "";
            txteventid.Text = "";
            txteventdescription.Text = "";
            txteventname.Enabled = false;
            ddldivid.Enabled = false;
            
        }

    }
    protected void btnmodify_Click(object sender, EventArgs e)
    {
        if (btnmodify.Text == "Modify")
        {
            btnnew.Enabled = false;
            btndelete.Enabled = false;
            txteventid.Visible = false;
            ddleventid.Visible = true;
            ddldivid.Enabled = true;
            txteventname.Enabled = true;
            txteventdescription.Enabled = true;
            imgupload.Enabled = false;
            imgbox.Visible = false;
            btnchangeimage.Visible = true;
            btnmodify.Text = "Update";
            
        }
        else if (btnmodify.Text == "Update"&&btnchangeimage.Text=="Image Changed"&&imgupload.FileContent!=null)
        {
            string path;
            path = Server.MapPath("Upload");
            string i = con.modifyeventsimg(ddleventid.Text, txteventname.Text, ddldivid.Text, txteventdescription.Text, "Upload\\" + imgupload.FileName);
            if (i == "1")
            {
                MessageBox.Show("event Modified");
                imgupload.SaveAs(path + "\\" + imgupload.FileName);
            }
            else
            {
                MessageBox.Show("event Not modified");
            }
            btnnew.Enabled = true;
            btndelete.Enabled = true;
            txteventid.Visible = true;
            ddleventid.Visible = false;
            ddldivid.Enabled = false;
            txteventname.Enabled = false;
            txteventdescription.Enabled = false;
            imgupload.Enabled = false;
            imgbox.Visible = false;
            btnchangeimage.Visible = false;
            btnmodify.Text = "Modify";
            txteventname.Text = "";
            txteventdescription.Text = "";
            txteventid.Text = "";
            btnchangeimage.Text = "Change Image";


        }
        else if (btnmodify.Text == "Update")
        {            
            string i = con.modifyevents(ddleventid.Text, txteventname.Text, ddldivid.Text, txteventdescription.Text);
            if (i == "1")
            {
                MessageBox.Show("event Modified");                
            }
            else
            {
                MessageBox.Show("event Not modified");
            }
            btnnew.Enabled = true;
            btndelete.Enabled = true;
            txteventid.Visible = true;
            ddleventid.Visible = false;
            ddldivid.Enabled = false;
            txteventname.Enabled = false;
            txteventdescription.Enabled = false;
            imgupload.Enabled = false;
            imgbox.Visible = false;
            btnchangeimage.Visible = false;
            btnmodify.Text = "Modify";
            txteventname.Text = "";
            txteventdescription.Text = "";
            txteventid.Text = "";
            btnchangeimage.Text = "Change Image";
        }
    }


    protected void btnchangeimage_Click(object sender, EventArgs e)
    {

        if (btnchangeimage.Text == "Change Image")
        {
            btnchangeimage.Text = "Image Changed";
            imgupload.Enabled = true;
            imgbox.Visible = false;
            btnchangeimage.Enabled = false;
        }
    }

    protected void ddleventid_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = con.geteventdetails(ddleventid.Text);       
        txteventname.Text=dt.Rows[0][1].ToString();
        txteventdescription.Text=dt.Rows[0][2].ToString();
        ddldivid.SelectedValue = dt.Rows[0][3].ToString();
        imgbox.ImageUrl=dt.Rows[0][4].ToString();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        if (btndelete.Text == "Delete")
        {
            btnnew.Enabled = false;
            btnmodify.Enabled = false;

            txteventid.Visible = false;
            ddleventid.Visible = true;

            btndelete.Text = "Remove";
        }
        else if (btndelete.Text == "Remove")
        {
            string i = con.deleteevent(ddleventid.Text);
            if (i == "1")
            {
                MessageBox.Show("Event Deleted");

            }
            else
            {
                MessageBox.Show("Event Not Deleted");
            }
            btnnew.Enabled = true;
            btnmodify.Enabled = true;

            txteventid.Visible = true;
            ddleventid.Visible = false;

            btndelete.Text = "Delete";
            txteventname.Text = "";
            txteventdescription.Text = "";

        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        btnnew.Enabled = true;
        btnnew.Text = "New";

        btnmodify.Enabled = true;
        btnmodify.Text = "Modify";

        btndelete.Enabled = true;
        btndelete.Text = "Delete";

        ddleventid.Visible = false;
        ddldivid.Enabled = false;
        txteventdescription.Enabled = false;
        txteventname.Enabled = false;
        txteventid.Enabled = false;
        txteventid.Text = "";
        txteventdescription.Text = "";
        txteventname.Text = "";
        btnchangeimage.Visible = false;
        txteventid.Visible = true;
        txteventid.Enabled = false;
    }
}