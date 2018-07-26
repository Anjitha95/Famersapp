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
            string a = "select * from governmentpolicies";
            DataTable dt = db.ret(a);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
            string b = "select max(policyno) from governmentpolicies";
            policy_no.Text = db.maxid(b).ToString();
        }
    }
    protected void add_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        save.Text = "SAVE";
    }
    protected void save_Click(object sender, EventArgs e)
    {
        
        if (save.Text == "SAVE")
        {
           
            string s = "insert into governmentpolicies values('" +policy_no.Text+ "','" + sub.Text + "','" + des.Text + "','" + dte.Text + "')";
            db.nonreturn(s);
            Response.Write("<script>alert('Inserted successfully...');window.location='admingovernpolicy.aspx'</script>");
            sub.Text = " ";
            des.Text = " ";
            dte.Text = " ";

        }
        else
        {
            string g = "update governmentpolicies set subject='" + sub.Text + "',description='" + des.Text + "',date='" + dte.Text + "' where policyno='" +policy_no.Text+ "'";
            db.nonreturn(g);
            Response.Write("<script>alert('updated successfully...');window.location='admingovernpolicy.aspx'</script>");
            sub.Text = " ";
            des.Text = " ";
            dte.Text = " ";

        }
    }

 

protected void  DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
{
    if (e.CommandName == "edit")
    {
        MultiView1.SetActiveView(View2);
        policy_no.Text = e.Item.Cells[0].Text;
        sub.Text = e.Item.Cells[1].Text;
        des.Text = e.Item.Cells[2].Text;
        dte.Text = e.Item.Cells[3].Text;
        save.Text = "UPDATE";
    }
}
}