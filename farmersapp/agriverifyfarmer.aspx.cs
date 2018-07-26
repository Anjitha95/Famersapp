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

        }

    }
    protected void search_Click(object sender, EventArgs e)
    {
        string a = " select Landdetails.surveyno, Landdetails.area, Landdetails.type, farmer.Name, farmer.place, farmer.contactno, Landdetails.FID, farmer.FID from Landdetails inner join farmer ON Landdetails.FID = farmer.FID where Landdetails.KID=" + Session["kid"] + " and farmer.Name like '%" + fname.Text + "%'";
        DataTable dt = db.ret(a);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
    }
}