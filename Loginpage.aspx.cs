using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class Loginpage : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {
 
    }


    protected void btnlogin_Click(object sender, EventArgs e)
    {
        con.connect();
        string pass = con.getpassword(txtempid.Text);
        if (txtpassword.Text == pass)
            {
                string role = con.role(txtempid.Text);
                if (role == "ADMIN")

                {
                    Session["userid"] = txtempid.Text;
                    Session["role"] = role;
                    Response.Redirect("Adminhome.aspx");
                }
                else if (role == "HA")
                {
                    string divid = con.getdivid(txtempid.Text);
                    string divname = con.getdivname(divid);
                    Session["divname"] = divname;
                    Session["userid"] = txtempid.Text ;
                    Session["role"] = role;
                    Session["divid"] = divid;
                        
                    Response.Redirect("Hahome.aspx");
                }
                else
                {
                    MessageBox.Show("Invalid Userid Password");
                }

            }
        }
}