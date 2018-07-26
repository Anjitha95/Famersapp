using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        dboperation db = new dboperation();
        string s = "select *from login where username='"+user_name.Text +"' and password='"+pass_word.Text+"'";
           DataTable dt = db.ret(s);
           if (dt.Rows.Count > 0)
           {
               Session["userid"] = dt.Rows[0][0].ToString();
               string a = dt.Rows[0][3].ToString();
               if (a == "Farmer")
                   Response.Redirect("farmerhome.aspx");
               else if (a == "AO")
               {
                   string b = "select KID from AOS where aid=" + dt.Rows[0][0] + "";
                   DataTable d = db.ret(b);
                   Session["kid"] = d.Rows[0][0].ToString();
                 Response.Redirect("agrihome.aspx");
               }
               else
                   Response.Redirect("adminhome.aspx");
           }
           else
               Response.Write("<script>alert('Incorrect password & username...')</script>");
   
    }
}