using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System;

public partial class _Default : System.Web.UI.Page
{
    dboperation db = new dboperation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string a = "select * from fertilizerdetails";
            DataTable dt = db.ret(a);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }

    }
    protected void upload_Click(object sender, EventArgs e)
    {
        string path = "~//fertiPic//" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Image1.ImageUrl = path;
        Session["path"] = path;
    }
    protected void add_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        save.Text = "SAVE";
    }
    protected void save_Click(object sender, EventArgs e)
    {
        string a = "select max(fertid) from fertilizerdetails";
        string b = db.maxid(a).ToString();
        if(save.Text=="SAVE")
        {
            string s= "insert into fertilizerdetails values ('"+b+"','"+fertn.Text+"','"+usedfr.Text+"','"+Session["path"]+"')";
            db.nonreturn(s);
            Response.Write("<script>alert('Inserted successfully...');window.location='adminferti.aspx'</script>");
            fertn.Text=" ";
            usedfr.Text=" ";
        }
        else
        {
            string s= "update fertilizerdetails set fertname='"+fertn.Text+"',usedin='"+usedfr.Text+"' where fertid='"+b+"'";
            db.nonreturn(s);
            Response.Write("<script>alert('Updated successfully...');window.location='adminferti.aspx'</script>");
            fertn.Text=" ";
            usedfr.Text=" ";
        }

    }

protected void  DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
{
    if (e.CommandName == "edit")
    {
        MultiView1.SetActiveView(View2);
        fertn.Text = e.Item.Cells[0].Text;
        usedfr.Text = e.Item.Cells[1].Text;
        Image1.ImageUrl = e.Item.Cells[4].Text;
    }

}
}