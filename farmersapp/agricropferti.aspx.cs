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
            grid1();
            grid2();
           
        }
    }
    void grid1()
    {
        string a = "select * from cropdetails";
        DataTable dt = db.ret(a);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
    }
    void grid2()
    {

        string b = "select * from fertilizerdetails";
        DataTable dt = db.ret(b);
        DataGrid2.DataSource = dt;
        DataGrid2.DataBind();
    }

    protected void add_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        save1.Text = "SAVE";
    }
    protected void add1_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View3);
        save2.Text = "SAVE";
    }



    protected void save1_Click(object sender, EventArgs e)
    {
            string a = "select max(cropid) from cropdetails";
            string b = db.maxid(a).ToString();
            if (save1.Text == "SAVE")
            {
                string s = "insert into cropdetails values('" + b + "','" + crty.Text + "','" + crc.Text + "','" + crn.Text + "','" + Session["path"] + "','" + dt.Text + "')";
                db.nonreturn(s);
                Response.Write("<script>alert('Inserted successfully...');window.location='agricropferti.aspx'</script>");
                crty.Text = " ";
                crc.Text = " ";
                crn.Text = " ";
                dt.Text = " ";
                grid1();
            }
            else
            {
                string s = "update cropdetails set croptype='" + crty.Text + "',cropclass='" + crc.Text + "',cropname='" + crn.Text + "',details='" + dt.Text + "' where cropid='" + b + "'";
                db.nonreturn(s);
                Response.Write("<script>alert('updated successfully...');window.location='agricropferti.aspx'</script>");
                crty.Text = " ";
                crc.Text = " ";
                dt.Text = " ";
                grid1();
            }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = "~//cropPic//" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Image3.ImageUrl = path;
        Session["path"] = path;
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            MultiView1.SetActiveView(View2);
            crty.Text = e.Item.Cells[1].Text;
            crc.Text = e.Item.Cells[2].Text;
            crn.Text = e.Item.Cells[3].Text;
            Image3.ImageUrl = e.Item.Cells[4].Text;
            save1.Text = "UPDATE";
        }
        else
        {

            string s = "delete from cropdetails where cropid=" + e.Item.Cells[0].Text + "";
            db.nonreturn(s);
            Response.Write("<script>alert('Deleted successfully...');window.location='agricropferti.aspx'</script>");
            grid1();
        }
    }
    protected void save2_Click(object sender, EventArgs e)
    {
        string a = "select max(fertid) from fertilizerdetails";
        string b = db.maxid(a).ToString();
        if (save2.Text == "SAVE")
        {
            string s = "insert into fertilizerdetails values ('" + b + "','" + fn.Text + "','" + usdf.Text + "','" + Session["path"] + "')";
            db.nonreturn(s);
            Response.Write("<script>alert('Inserted successfully...');window.location='agricropferti.aspx'</script>");
            fn.Text = " ";
            usdf.Text = " ";
            grid2();
        }
        else
        {
            string s = "update fertilizerdetails set fertnme='" + fn.Text + "',usedin='" + usdf.Text + "' where fertid='" + b + "'";
            db.nonreturn(s);
            Response.Write("<script>alert('Updated successfully...');window.location='agricropferti.aspx'</script>");
            fn.Text = " ";
            usdf.Text = " ";
            grid2();
        }
    }
    protected void DataGrid2_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            MultiView1.SetActiveView(View2);
            fn.Text = e.Item.Cells[1].Text;
            usdf.Text = e.Item.Cells[2].Text;
            Image3.ImageUrl = e.Item.Cells[3].Text;
            save2.Text = "UPDATE";
        }
        else
        {
            string s = "delete from fertilizerdetails where fertid=" + e.Item.Cells[0].Text + "";
            db.nonreturn(s);
            Response.Write("<script>alert('Deleted successfully...');window.location='agricropferti.aspx'</script>");
            grid2();
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string path = "~//fertiPic//" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Image3.ImageUrl = path;
        Session["path"] = path;
    }
}