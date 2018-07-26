using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;
public partial class _Default : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string s = "select KID , placename from krishibhavan";
            DataTable dt = db.ret(s);
            DropDownList1.DataTextField = "placename";
            DropDownList1.DataValueField = "KID";
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "select");
            string d = "select * from  AOS";
            dt = db.ret(d);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
           
         
            for (int i = 1; i <= 31; i++)
            {
                DropDownList2.Items.Add(i.ToString());
                DropDownList5.Items.Add(i.ToString());
                DropDownList8.Items.Add(i.ToString());


            }
            for (int i = 1; i <= 12; i++)
            {
                DropDownList3.Items.Add(i.ToString());
                DropDownList6.Items.Add(i.ToString());
                DropDownList9.Items.Add(i.ToString());

            }
            for (int i = 1900; i <= 3000; i++)
            {
                DropDownList4.Items.Add(i.ToString());
                DropDownList7.Items.Add(i.ToString());
                DropDownList10.Items.Add(i.ToString());

            }
            
            
                





        }
    }
    string b, z;
   
    protected void save_Click(object sender, EventArgs e)
    {
        Random rnd = new Random();
        int pwd = rnd.Next(4411, 55555);
        string a = "select max(userid) from login";
        b = db.maxid(a).ToString();
        z = "AO" + b;
        string dob = DropDownList2.Text + "/" + DropDownList3.Text + "/" + DropDownList4.Text;
        string doj = DropDownList5.Text + "/" + DropDownList6.Text + "/" + DropDownList7.Text;
        string dor = DropDownList8.Text + "/" + DropDownList9.Text + "/" + DropDownList10.Text;
        string g = " ";
        if (f.Checked == true)
            g = f.Text;
        else
            g = m.Text;
        if (save.Text == "save")
        {
           
            string s = "insert into AOS values('" + b + "'," + DropDownList1.SelectedValue + ",'" + name.Text + "','" + em_l.Text + "','" + Ph_ne.Text + "','" + doj + "','" + dob + "','" + dor + "','" + z+ "','" + Session["path"] + "','" + g + "')";
            db.nonreturn(s);
            string u = "insert into login values('" + b + "','" + z + "','" + pwd + "','AO')";
            db.nonreturn(u);
            SmtpClient sc = new SmtpClient("smtp.gmail.com", 587);
            MailMessage msg = new MailMessage("anjithad43@gmail.com", em_l.Text);
            msg.Subject = "Your A/C password";
            msg.Body = ("thankyou for registering. Your username is" + z + "Your password is" + pwd);
            sc.Credentials = new NetworkCredential("anjithad43", " muqmapassion");
            sc.EnableSsl = true;
            sc.Send(msg);
            Response.Write("<script>alert('Inserted successfully...');window.location='adminaoreg.aspx'</script>");
            name.Text = " ";
            em_l.Text = " ";
            Ph_ne.Text = " ";
           
            

        }
        else
        {
            string c = "update AOS set name=" + name.Text + ", emailid= " + em_l.Text + ",phoneid='" + Ph_ne.Text + "' where aid='"+b+"'";
            db.nonreturn(c);
            Response.Write("<script>alert('updated successfully...');window.location='adminaoreg.aspx'</script>");
            name.Text = " ";
            em_l.Text = " ";
            Ph_ne.Text = " ";

        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        MultiView1.SetActiveView(View2);
        save.Text = "save";
    }
protected void  upload_Click(object sender, EventArgs e)
{
    string path="~//aoPic//"+FileUpload1.FileName;
    FileUpload1.SaveAs(Server.MapPath(path));
    Image1.ImageUrl=path;
    Session["path"]=path;

}
protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
{

    if (e.CommandName == "edit")
    {
        MultiView1.SetActiveView(View2);
         name.Text = e.Item.Cells[0].Text;
        em_l.Text = e.Item.Cells[1].Text;
        Ph_ne.Text = e.Item.Cells[2].Text;
        Image1.ImageUrl = e.Item.Cells[7].Text;
        save.Text = "UPDATE";
    }
}
}