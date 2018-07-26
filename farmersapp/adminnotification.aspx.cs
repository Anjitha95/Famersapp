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
            string a = "select * from notification";
            DataTable dt = db.ret(a);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
            

        }


    }
    protected void save_Click(object sender, EventArgs e)
    {
       
        string b = "select max(policyid) from notification";
        string c = db.maxid(b).ToString();
        if (save.Text == "SAVE")
        {
            string s = "insert into notification values ('" + c + "','" + tit.Text + "','" + notd.Text + "','" + notde.Text + "')";
            db.nonreturn(s);
            Response.Write("<script>alert('Inserted successfully...');window.location='adminnotification.aspx'</script>");
            tit.Text = " ";
            notd.Text = " ";
            notde.Text = " ";
        }
        else
        {
            string s = "update notification set title='" + tit.Text + "',notdate='" + notd.Text + "',notdet='" + notde.Text + "' where policyid='" + c + "'";
            db.nonreturn(s);
            Response.Write("<script>alert('updated successfully...');window.location='adminnotification.aspx'</script>");
            tit.Text = " ";
            notde.Text = " ";
            notd.Text = " ";
        }


    }
    protected void add_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        save.Text = "SAVE";
    }

    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            MultiView1.SetActiveView(View2);
            tit.Text = e.Item.Cells[0].Text;
            notd.Text = e.Item.Cells[1].Text;
            notde.Text = e.Item.Cells[2].Text;
            save.Text = "UPDATE";
        }

    }
}