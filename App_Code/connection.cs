using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

/// <summary>
/// Summary description for connection
/// </summary>
public class connection
{
			SqlConnection con = new SqlConnection("Data Source=SAIKIRAN-PC;Initial Catalog=WPS;Integrated Security=True");
            public string  connect()
            {
                 SqlConnection con = new SqlConnection("Data Source=SAIKIRAN-PC;Initial Catalog=WPS;Integrated Security=True");
                 return "1";
            }
            public string getpassword(string userid)
            {
                try
                {
                    string q = "select password from employee where empid='" + userid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteScalar().ToString(); 
                    con.Close();

                    return i;

                }
                catch (Exception ee)
                {
                    MessageBox.Show(ee.Message);
                    string i = "";
                    return i;
                }


            }
            public string role(string userid)
            {
                try
                {
                    string q = " select role from employee where empid='" + userid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteScalar().ToString();
                    con.Close();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }

            }
            public string newemployee(string empid,string empname,string divid,string designation,string address,string phoneno,string role, string password )
            {
                try
                {
                    string q = "insert into employee values('" + empid + "','" + empname + "','" + divid + "','" + designation + "','" + address + "','" + phoneno + "','" + role + "','" + password + "')";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    con.Close();
                    return i;
                }
                catch(Exception ee)
                {
                    string i = "";
                    return i;
                }
               
            }
            public string newnews(string divid, string newsid, string newsdescription)
            {
                try
                {
                    string q = "insert into news values('" + newsid + "','" + newsdescription + "','" + divid + "')";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    con.Close();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
            public string newdivision(string divid, string divname, string divdescription)
            {
                try
                {
                    string q = "insert into division values('" + divid + "','" + divname + "','" + divdescription + "')";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    con.Close();
                    return i;
                }
                catch(Exception ee)
                {
                    string i = "";
                    return i;

                }
                
            }
            public string modifydivision(string divid, string divname, string divdescription)
            {
                try
                {
                    string q = "update division set divname='" + divname + "',divdescription='" + divdescription + "'where divid='"+ divid+"'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q,con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;
                    
                }
                catch (Exception ee)
                {
                    string i;
                    i = "";
                    return i;
                }
            }
            public DataTable getdivdetails(string divid)
            {
                try
                {
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter("select * from division where divid='"+divid+"'", con);
                    da.Fill(dt);
                    return dt;


                }
                catch (Exception ee)
                {
                    DataTable dt = new DataTable();
                    dt = null;
                    return dt;

                }
            }
            public DataTable getproductdetails(string productid)
            {
                try
                {
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter("select * from products where productid='" + productid + "'", con);
                    da.Fill(dt);
                    return dt;
                }
                catch (Exception ee)
                {
                    DataTable dt = new DataTable();
                    dt = null;
                    return dt;
                }
            }
            public string newproduct(string productid, string productname, string divid, string description, string Url)
            {
                try
                {
                    string q = "insert into products values('" + divid + "','" + productid + "','" + productname + "','" + description + "','" + Url + "')";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;
                                  
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }

            public string modifyproductI(string productid, string divid, string productname, string description, string Url)
            {
                try
                {
                    string q = "update products set divid='" + divid + "',productname='" + productname + "',description='" + description + "',Url='" + Url + "' where productid='" + productid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q,con);
                    string i=cmd.ExecuteNonQuery().ToString();
                    con.Close();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
            public string modifyproduct(string productid, string divid, string productname, string description)
            {
                try
                {
                    string q = "update products set divid='" + divid + "',productname='" + productname + "',description='" + description + "' where productid='" + productid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    con.Close();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
    
            public string deleteproduct(string productid)
            {
                try
                {
                    con.Open();
                    string q="delete from products where productid='"+productid+"'";
                    SqlCommand cmd = new SqlCommand(q,con);
                    string i= cmd.ExecuteNonQuery().ToString();
                    con.Close();
                    return i;                   
                }
                catch(Exception ee)
                {
                    string i="";
                    return i;
                }
            }
            public string deletedivision(string divid)
            {
                try
                {
                    string q = "delete from division where divid='" + divid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
               
            }
            public DataTable getemployeedetails(string empid)
            {
                try
                {
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter("select * from employee where empid='" + empid + "'", con);
                    da.Fill(dt);
                    return dt;


                }
                catch (Exception ee)
                {
                    DataTable dt = new DataTable();
                    dt = null;
                    return dt;

                }
            }
            public string modifyemployee(string empid, string empname, string divid, string designation, string address, string phoneno, string role)
            {
                try
                {
                    string q = "update employee set empname='" + empname + "',divid='" + divid + "',designation='" + designation + "',address='" + address + "',phoneno='" + phoneno + "',role='" + role + "'where empid='"+empid+"'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;

                }
                catch (Exception ee)
                {
                    string i;
                    i = "";
                    return i;
                }
            }
            public string deleteemployee(string empid)
            {
                try
                {
                    string q = "delete from employee where empid='" + empid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
            public string modifynews(string newsid, string divid, string description)
            {

                try
                {
                    string q = "update news set newsdescription='" +description + "',divid='" + divid + "'where newsid='" + newsid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;

                }
                catch (Exception ee)
                {
                    string i;
                    i = "";
                    return i;
                }
            }
            public DataTable getnewsdetails(string newsid)
            {
                try
                {
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter("select * from news where newsid='" + newsid + "'", con);
                    da.Fill(dt);
                    return dt;


                }
                catch (Exception ee)
                {
                    DataTable dt = new DataTable();
                    dt = null;
                    return dt;

                }
            }
            public string deletenews(string newsid)
            {
                try
                {
                    string q = "delete from news where newsid='" + newsid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
            public string newevent(string eventid, string eventname, string divid, string description, string Url)
            {

                try
                {
                    string q = "insert into events values('" + eventid + "','" + eventname + "','" + description + "','" + divid + "','" + Url + "')";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;

                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
            public DataTable geteventdetails(string eventid)
            {
                try
                {
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter("select * from events where eventid='" + eventid + "'", con);
                    da.Fill(dt);
                    return dt;


                }
                catch (Exception ee)
                {
                    DataTable dt = new DataTable();
                    dt = null;
                    return dt;

                }
            }
            public string modifyeventsimg(string eventid, string eventname, string divid, string description, string image)
            {

                try
                {
                    string q = "update events set eventname='" + eventname + "',divid='" + divid + "',description='"+description+"',Url='"+image+"'where eventid='" + eventid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;

                }
                catch (Exception ee)
                {
                    string i;
                    i = "";
                    return i;
                }
            }
            public string modifyevents(string eventid, string eventname, string divid, string description)
            {

                try
                {
                    string q = "update events set eventname='" + eventname + "',divid='" + divid + "',description='" + description + "'where eventid='" + eventid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;

                }
                catch (Exception ee)
                {
                    string i;
                    i = "";
                    return i;
                }
            }

            public string deleteevent(string eventid)
            {
                try
                {
                    string q = "delete from events where eventid='" + eventid + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
            public string addcareers(string jobid, string description)
            {
                try
                {
                    string q = "insert into careers values('" + jobid + "','" + description + "')";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    con.Close();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;

                }
            }
            public string modifycareers(string jobid, string description)
            {
                try
                {
                    string q = "update careers set jobdescription='"+description+"' where jobid='"+jobid+"'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;

                }
                catch (Exception ee)
                {
                    string i;
                    i = "";
                    return i;
                }
            }
            public string deletecareers(string jobid)
            {
                try
                {
                    string q = "delete from careers where jobid='" +jobid+ "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
            public string getcareerdetails(string jobid)
            {
                try
                {
                    con.Open();
                    string q = "select jobdescription from careers where jobid='" + jobid + "'";
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteScalar().ToString();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
            public string getdivid(string empid)
            {
                try
                {
                    con.Open();
                    string q = "select divid from employee where empid='" + empid + "'";
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteScalar().ToString();
                    con.Close();
                    return i;
                    

                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
            public string getdivname(string divid)
            {
                try
                {
                    con.Open();
                    string q = "select divname from division where divid='" + divid  + "'";
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteScalar().ToString();
                    return i;

                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;
                }
            }
            public string submitfeedback( string feedback)
            {
                try
                {
                    string q = "insert into feedback values('" + feedback + "')";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(q, con);
                    string i = cmd.ExecuteNonQuery().ToString();
                    con.Close();
                    return i;
                }
                catch (Exception ee)
                {
                    string i = "";
                    return i;

                }
            }
	
}