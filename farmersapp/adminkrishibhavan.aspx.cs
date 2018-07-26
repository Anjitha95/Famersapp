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
        
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            string a = "select max(KID) from krishibhavan";
             k_id.Text= db.maxid(a).ToString();
             string b = "select * from krishibhavan";
             DataTable dt = db.ret(b);
             DataGrid1.DataSource = dt;
             DataGrid1.DataBind();


        }
    }
    protected void add_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        save.Text = "SAVE";

    }
    dboperation db = new dboperation();
    protected void save_Click(object sender, EventArgs e)
    {
        if (save.Text == "SAVE")
        {
            string s = "insert into krishibhavan values ('" + k_id.Text + "','" + pl_c.Text + "','" + pan_ch.Text + "','" + dis_t.Text + "','" + Pin.Text + "','" + cnt_nm.Text + "')";
            db.nonreturn(s);
            Response.Write("<script>alert('Inserted successfully...');window.location='adminkrishibhavan.aspx'</script>");
            pl_c.Text = " ";
            pan_ch.Text = " ";
            dis_t.Text = " ";
            Pin.Text = " ";
            cnt_nm.Text = " ";
        }
        else
        {
            string a = "update krishibhavan set placename='" + pl_c.Text + "', panchayath='" + pan_ch.Text + "',District='" + dis_t.Text + "',PIN='" + Pin.Text + "',phoneno='" + cnt_nm.Text + "' where KID='"+k_id.Text+"'";
            db.nonreturn(a);
            Response.Write("<script>alert('updated successfully...');window.location='adminkrishibhavan.aspx'</script>");
            pl_c.Text = " ";
            pan_ch.Text = " ";
            dis_t.Text = " ";
            Pin.Text = " ";
            cnt_nm.Text = " ";
        }


    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            MultiView1.SetActiveView(View2);
            k_id.Text = e.Item.Cells[0].Text;
            pl_c.Text = e.Item.Cells[1].Text;
            pan_ch.Text = e.Item.Cells[2].Text;
            dis_t.Text = e.Item.Cells[3].Text;
            Pin.Text = e.Item.Cells[4].Text;
            cnt_nm.Text = e.Item.Cells[5].Text;
            save.Text = "UPDATE";
        }
    }
}