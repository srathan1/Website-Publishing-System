﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;

public partial class Adminaddnewproducts : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            ddldivid.Enabled = false;
            txtproductid.Enabled = false;
            txtproductname.Enabled = false;
            txtdescription.Enabled = false;
            ddlproductid.Visible = false;
            FileUpload1.Enabled = false;
            imgbox.Visible = false;
            btnview.Visible = false;
        }


    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        if (btnnew.Text == "New")
        {
            btnview.Visible = false;
            FileUpload1.Enabled = true;
            ddldivid.Enabled = true;
            txtproductid.Enabled = true;
            txtproductid.Enabled = true;
            txtdescription.Enabled = true;
            FileUpload1.Enabled = true;
            txtproductname.Enabled = true;
            btnnew.Text = "Insert";
            btnmodify.Enabled = false;
            btndelete.Enabled = false;
        }
        else if (btnnew.Text == "Insert")
        {
            string path;
            path = Server.MapPath("Upload");
            string i = con.newproduct(txtproductid.Text, txtproductname.Text, ddldivid.Text, txtdescription.Text, "Upload\\" + FileUpload1.FileName);
            if (i == "1")
            {
                MessageBox.Show("product Inserted");
                FileUpload1.SaveAs(path + "\\" + FileUpload1.FileName);
            }
            else
            {
                MessageBox.Show("product id already exists");
            }
            btnnew.Text = "New";
            txtproductid.Text = "";
            txtdescription.Text = "";
            txtproductname.Text = "";
            ddldivid.Enabled = false;
            txtproductid.Enabled = false;
            txtproductname.Enabled = false;
            txtdescription.Enabled = false;
            ddlproductid.Visible = false;
            FileUpload1.Enabled = false;
            imgbox.Visible = false;
            ddldivid.Enabled = false;
            txtproductname.Enabled = false;
            txtdescription.Enabled = false;
            btnview.Enabled = false;
            btnmodify.Enabled = true;
            btndelete.Enabled = true;
        }
       
    }

    protected void btnmodify_Click(object sender, EventArgs e)
    {
        if (btnmodify.Text == "Modify")
        {
            
            txtproductid.Visible = false;
            btnnew.Enabled=false;
            btndelete.Enabled=false;
            ddlproductid.Visible = true;
            txtproductid.Visible = false;
            btnmodify.Text = "Update";
            btnview.Text = "Change Image";
            FileUpload1.Enabled = false;
            btnview.Visible = true;
            btnview.Enabled = true;
            
        }
        else if (btnmodify.Text == "Update"&&btnview.Text=="Image Changed"&&FileUpload1.FileContent!=null)
        {
            string path = Server.MapPath("upload");
            string i=con.modifyproductI(ddlproductid.Text, ddldivid.Text, txtproductname.Text, txtdescription.Text, "upload\\" + FileUpload1.FileName);
            if (i == "1")
            {
                MessageBox.Show("Record Modified");
                FileUpload1.SaveAs(path + "\\" + FileUpload1.FileName);

            }
            else
            {
                MessageBox.Show("Record Not Modified");
            }
            btnmodify.Text = "Modify";
            btnnew.Enabled = true;
            btndelete.Enabled = true;
            txtdescription.Text = "";
            txtproductname.Text = "";
            ddlproductid.Visible = false;
            txtproductid.Visible = true;
            FileUpload1.Enabled = false;
            ddldivid.Enabled = false;
            txtproductname.Enabled = false;
            txtdescription.Enabled = false;
            FileUpload1.Enabled = false;


          
        }
        else if (btnmodify.Text == "Update")
        {
            string i = con.modifyproduct(ddlproductid.Text, ddldivid.Text, txtproductname.Text, txtdescription.Text);
            if (i == "1")
            {
                MessageBox.Show("Record Modified");
                btnmodify.Text = "Modify";
                btndelete.Enabled = true;
                txtdescription.Text = "";
                txtproductname.Text = "";
                ddlproductid.Visible = false;
                txtproductid.Visible = true;                
                FileUpload1.Enabled = false;
                ddldivid.Enabled = false;
                txtproductname.Enabled = false;
                txtdescription.Enabled = false;
                FileUpload1.Enabled = false;
                btnview.Visible = true;
                btnview.Enabled = true;
            }
            else
            {
                MessageBox.Show("Record Not Modified");
                btnmodify.Text = "Modify";
                btnnew.Enabled = true;
                btndelete.Enabled = true;
                txtdescription.Text = "";
                txtproductname.Text = "";
                ddlproductid.Visible = false;
                txtproductid.Visible = true;
                FileUpload1.Enabled = false;
                ddldivid.Enabled = false;
                txtproductname.Enabled = false;
                txtdescription.Enabled = false;
                FileUpload1.Enabled = false;
            }
           
        }
    }
    protected void ddlproductid_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddldivid.Enabled = true;
        txtproductid.Visible = false;
        txtproductname.Enabled = true;        
        txtdescription.Enabled = true;
        DataTable dt = new DataTable();
        dt = con.getproductdetails(ddlproductid.Text);
        txtproductname.Text=dt.Rows[0][2].ToString();
        txtdescription.Text=dt.Rows[0][3].ToString();
        imgbox.Visible = true;
        imgbox.ImageUrl = dt.Rows[0][4].ToString();
        ddldivid.SelectedValue = dt.Rows[0][0].ToString();
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        if (btnview.Text == "Change Image")
        {
            btnview.Text = "Image Changed";
            FileUpload1.Enabled = true;
            imgbox.Visible = false;
            btnview.Enabled = false;
        }
        else if (btnview.Text == "View")
        {
            try
            {
                imgbox.ImageUrl = "Upload\\" + FileUpload1.FileName;
                imgbox.Visible = true;
            }
            catch (Exception ee)
            {
                MessageBox.Show("Image Not Found");
            }
        }

           
           
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        if (btndelete.Text == "Delete")
        {
            txtproductid.Visible=false;
            ddlproductid.Visible = true;
            btnview.Visible = false;
            btnnew.Enabled = false;
            btnmodify.Enabled = false;
            ddldivid.Enabled = false;
            btndelete.Text = "Remove";
            btnview.Visible = false;
        }
        else if (btndelete.Text == "Remove")
        {
            string i = con.deleteproduct(ddlproductid.Text);
            if (i == "1")
            {
                MessageBox.Show("Product Deleted");
            }
            else
            {
                MessageBox.Show("Product Not Deleted");
            }
            btndelete.Text = "Delete";
            btnnew.Enabled = true;
            txtproductname.Visible=true;
            btnview.Visible = false;
            btnmodify.Enabled = true;
            txtproductid.Text = "";
            txtproductname.Text = "";
            txtdescription.Text = "";
            txtproductid.Visible = true;
            txtproductname.Enabled = false;
            ddlproductid.Visible = false;
            ddldivid.Enabled = false;
            imgbox.Visible = false;

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

        txtproductid.Text = "";
        txtproductname.Visible = true;
        txtproductid.Text = "";
        ddlproductid.Visible = false;
        txtproductname.Text = "";
        txtproductid.Enabled = false;
        txtproductid.Visible = true;
        txtproductname.Enabled = false;


        ddldivid.Enabled = false;

        btnview.Enabled = false;
        btnview.Visible = false;

        txtdescription.Text = "";
        txtdescription.Enabled = false;

        FileUpload1.Enabled = false;
        imgbox.Visible = false;
       
      


    }
}