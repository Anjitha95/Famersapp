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
            string a = "select culturingmethod.cropid, cropdetails.cropname, culturingmethod.cultureingmethod, culturingmethod.weatherdetails from culturingmethod inner join cropdetails on culturingmethod.cropid = cropdetails.cropid";
            DataTable dt = db.ret(a);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
            string s = "select cropid ,cropname from cropdetails";
             dt = db.ret(s);
            DropDownList1.DataTextField = "cropname";
            DropDownList1.DataValueField = "cropid";
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "select");

        }
    }
    protected void add_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void upload_Click(object sender, EventArgs e)
    {
        string path = "~//culturingmethod//" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Session["path"] = path;
    }
    protected void save_Click(object sender, EventArgs e)
    {
        string b = "insert into culturingmethod values('" + DropDownList1.SelectedValue + "','" + Session["path"] + "','" + weathr_details.Text + "')";
        db.nonreturn(b);
        Response.Write("<script>alert('Inserted successfully...');window.location='agricultureingmethod.aspx'</script>");
        
    }
}