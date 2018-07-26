using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string b = "select max(userid) from login";
            f_id.Text = db.maxid(b).ToString();
        }
    }
    dboperation db = new dboperation();
    protected void reg_Click(object sender, EventArgs e)
    {
       string a=" ";
        string c = DropDownList1.Text;
       if (f.Checked == true)
           a = f.Text;
       else
           a = m.Text;
       
        string s = "insert into farmer values('"+f_id.Text+"','"+f_name.Text+"','"+a+"','"+hm_name.Text+"','"+plac_e.Text+"','"+c+"','"+cnt_no.Text+"','"+email_id.Text+"')";
           db.nonreturn(s);
        string s1="insert into login values('"+f_id.Text+"','"+email_id.Text+"','"+pas_word.Text+"','Farmer')";
        db.nonreturn(s1);
       Response.Write("<script>alert('Inserted successfully...')</script>");
       f_name.Text=" ";
        hm_name.Text=" ";
        plac_e.Text=" ";
        cnt_no.Text=" ";
        email_id.Text=" ";
        pas_word.Text=" ";
        cur_word.Text = " ";
        }
   
}