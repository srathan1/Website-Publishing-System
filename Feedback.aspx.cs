using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;

public partial class Feedback : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        
        string i = con.submitfeedback(txtfeedback.Text);
        if (i == "1")
        {
            
            MessageBox.Show("Feedback Submitted");
        }
        else
        {
            MessageBox.Show("Feedback Not Submitted");
        }
        txtfeedback.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtfeedback.Text = "";
    }
}