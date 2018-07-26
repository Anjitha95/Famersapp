using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);

            grid();
        }
    }
    void grid()
    {
        string a = "select * from article";
        DataTable dt = db.ret(a);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
    }
    protected void add_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);

    }
    protected void upload_Click(object sender, EventArgs e)
    {
        string path = "~//article//" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Session["path"] = path;

    }
    protected void save_Click(object sender, EventArgs e)
    {
        string b = "select max(artid) from article";
        string c = db.maxid(b).ToString();
        string s = "insert into article values ('" + c + "','"+System.DateTime.Now.ToShortDateString()+"','"+artit.Text+"','"+Session["path"]+"')";
        db.nonreturn(s);
        Response.Write("<script>alert('Inserted successfully...');window.location='adminarticle.aspx'</script>");
        artit.Text = " ";
        MultiView1.SetActiveView(View1);
        grid();
    }

    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        string x;
        if (e.CommandName == "remove")
        {

            string s = "delete from article where artid=" + e.Item.Cells[0].Text + "";
            db.nonreturn(s);
            Response.Write("<script>alert('Deleted successfully...');window.location='adminarticle.aspx'</script>");
            grid();
        }
        else
        {
            string path = e.Item.Cells[3].Text;
            string ex = Path.GetExtension(path);
            if (ex == ".TXT")
            {
                x = ex;
                Response.ContentType = x;
                Response.AppendHeader("Content-disposition", "attachment;filename='" + path + "'");
                Response.TransmitFile(Server.MapPath(path));
            }
            else if (ex == ".PDF")
            {
                x = ex;
                Response.ContentType = x;
                Response.AppendHeader("Content-disposition", "attachment;filename='" + path + "'");
                Response.TransmitFile(Server.MapPath(path));
            }
            else
            {
                x = ex;
                Response.ContentType = x;
                Response.AppendHeader("Content-disposition", "attachment;filename='" + path + "'");
                Response.TransmitFile(Server.MapPath(path));
            }

            Response.End();
        }
    }
}