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
            string s = " select * from notification";
            DataTable dt = db.ret(s);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = " select * from notification";
        DataTable dt = db.ret(s);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
    }
}