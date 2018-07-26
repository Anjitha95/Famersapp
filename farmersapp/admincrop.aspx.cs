using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string a = "select * from cropdetails";
            DataTable dt = db.ret(a);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();


        }
    }
    protected void add_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        save.Text = "SAVE";
    }
    protected void upload_Click(object sender, EventArgs e)
    {
        string path = "~//cropPic//" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Image1.ImageUrl = path;
        Session["path"] = path;
    }
    protected void save_Click(object sender, EventArgs e)
    {
            string a = "select max(cropid) from cropdetails";
            string b = db.maxid(a).ToString();
        if (save.Text == "SAVE")
        {
            string s="insert into cropdetails values('"+b+"','"+crty.Text+"','"+crc.Text+"','"+crn.Text+"','"+Session["path"]+"','"+cd.Text+"')";
            db.nonreturn(s);
            Response.Write("<script>alert('Inserted successfully...');window.location='admincrop.aspx'</script>");
            crty.Text=" ";
            crc.Text=" ";
            cd.Text = " ";
         }
        else
        {
            string s = "update cropdetails set croptype='" + crty.Text + "',cropclass='" + crc.Text + "',cropname='" + crn.Text + "',details='"+cd.Text+"' where cropid='" + b + "'";
            db.nonreturn(s);
            Response.Write("<script>alert('updated successfully...');window.location='admincrop.aspx'</script>");
            crty.Text = " ";
            crc.Text = " ";
            cd.Text = " ";

        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if(e.CommandName=="edit")
        {
            MultiView1.SetActiveView(View2);
            crty.Text=e.Item.Cells[0].Text;
            crc.Text=e.Item.Cells[1].Text;
            crn.Text = e.Item.Cells[2].Text;
            Image1.ImageUrl = e.Item.Cells[4].Text;
            save.Text = "UPDATE";
        }
    }
}