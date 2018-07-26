using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }
    dboperation op = new dboperation();

    [WebMethod]
    public string registerfarmer(string name, string gender, string house, string place, string district, string contactno, string email)
    {
        string res = "";
        try
        {
            string a = "select maxid(userid) from login";
            string s = "insert into farmer values("+a+",'" + name + "','" + gender + "','"+house+"','"+place+"','"+district+"','"+contactno+"','"+email+"')";
            op.nonreturn(s);
            res = "yes";
        }
        catch
        {
            res = "no";
        }
        return res;
    }
    public string postenquiry(string date, string time,string userid)
    {
        string res = " ";
        try
        {
            string a = "select maxid(enqid) from enquiries";
            string s = "insert into enquiries("+a+",'" + date + "','" + time + "')";
            op.nonreturn(s);
            res = "yes";
        }
        catch
        {
            res = "no";
        }
        return res;
    }
    public string product(string name, string price, string image,string fid)
    {
        string res = " ";
        try
        {
            string a = "select maxid(pid) from product";
            string s = "insert into product (" + a + ",'" + name + "','" + price + "','" + image + "')";
            op.nonreturn(s);
            res = "yes";
        }
        catch
        {
            res = "no";
        }
        return res;
        
    }
    public string productenquiry(string qty,string userid)
    {
        string res = " ";
        try
        {
            string a = "select maxid(enqid) from enquirydetails";
            string s = "insert into enquirydetails(" + a + ",'" + qty + "')";
            op.nonreturn(s);
            res = "yes";
        }
        catch
        {
            res = "no";
        }
        return res;
    }
    public string notification()
    {
        string result = " ";
        string s = "select * from notification";
        DataTable dt = op.ret(s);
        foreach (DataRow dr in dt.Rows)
        {
            result = dr[0].ToString() + "#" + dr[1].ToString() + "#" + dr[2].ToString() + "#" + dr[3].ToString() + "@" + result;
        }
        return result;
    }
    public string productview()
    {
        string result = " ";
        string s = "select * from product";
        DataTable dt = op.ret(s);
        foreach (DataRow dr in dt.Rows)
        {
            result = dr[0].ToString() + "#" + dr[1].ToString() + "#" + dr[2].ToString() + "#" + dr[3].ToString() + "#" + dr[4].ToString() +"@"+ result;
        }
        return result;
    }
    public string seedview()
    {
        string result = " ";
        string s = "select * from cropdetail";
        DataTable dt = op.ret(s);
        foreach (DataRow dr in dt.Rows)
        {
            result = dr[0].ToString() + "#" + dr[1].ToString() + "#" + dr[2].ToString() + "#" + dr[3].ToString() + "#" + dr[4].ToString() + "#" + dr[5].ToString() + "@" + result;
        }
        return result;
    }
}
