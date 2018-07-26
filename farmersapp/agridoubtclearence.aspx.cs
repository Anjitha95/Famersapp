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
            grid();

        }
        
    }
    void grid()
    {
        string s = "select * from message";
        DataTable dt = db.ret(s);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
    }

    protected void reply_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View3);

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            Session["msgid"] = e.Item.Cells[5].Text;
            to.Text = e.Item.Cells[0].Text.ToString();
            MultiView1.SetActiveView(View2);
            string a = "select msg from message where fromid=" + e.Item.Cells[0].Text + "";
            DataGrid2.DataSource = db.ret(a);
            DataGrid2.DataBind();
        }
    }
    protected void DataGrid1_ItemCreated(object sender, DataGridItemEventArgs e)
    {

    }

    protected void send_Click(object sender, EventArgs e)
    {
        string c= "select max(replyid) from reply";
        string d=db.maxid(c).ToString();
        string b = "insert into reply values ('" + Session["msgid"] + "','" + d + "','" + msgs + "')";
        db.nonreturn(b);
        Response.Write("<script>alert('Reply send successfully...');window.location='agridoubtclearence.aspx'</script>");

    }
}