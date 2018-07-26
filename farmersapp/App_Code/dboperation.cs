using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for dboperation
/// </summary>
public class dboperation
{
	public dboperation()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|datadirectory|\FarmerappDatabase.mdf;Integrated Security=True;User Instance=True");
    public void nonreturn(string s)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = s;
        con.Close();
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public DataTable ret(string s)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = s;
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        da.SelectCommand = cmd;
        da.Fill(dt);
        return (dt);
    }
    public int maxid(string s)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = s;
        con.Open();
        int id;
        try
        {
            id = int.Parse(cmd.ExecuteScalar().ToString()) + 1;
        }
        catch
        {
            id = 1;
        }
        finally
        {
            con.Close();
        }
        return id;
    }
}