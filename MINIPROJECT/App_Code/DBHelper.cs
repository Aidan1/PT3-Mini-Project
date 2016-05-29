using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBHelper
/// </summary>
public class DBHelper
{
	public DBHelper()
	{

	}

	public bool IsUserAuthenticated(string username, string password)
	{
		DataTable result = null;
		try
		{
			using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
			{
				con.Open();
				using (SqlCommand cmd = con.CreateCommand())
				{
					cmd.CommandType = CommandType.StoredProcedure;
					cmd.CommandText = "ValidateUser";
					cmd.Parameters.Add(new SqlParameter("@username", username));
					cmd.Parameters.Add(new SqlParameter("@password", password));
					cmd.ExecuteNonQuery();

					using (SqlDataAdapter da = new SqlDataAdapter(cmd))
					{
						result = new DataTable();
						da.Fill(result);

						//check if any match is found
						if (result.Rows.Count == 1)
						{
							return true;
						}
					}
				}
				con.Close();
			}
		}
		catch (Exception ex)
		{
			throw new ApplicationException("operation failed!", ex);
		}

		//user id not found, lets treat him as a guest        
		return false;
	}

	public String GetViewPermission(string username, string password)
	{
		string result = null;
		try
		{
			using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
			{
				con.Open();
				using (SqlCommand cmd = con.CreateCommand())
				{
					cmd.CommandType = CommandType.StoredProcedure;
					cmd.CommandText = "GetViewPermission";
					cmd.Parameters.Add(new SqlParameter("@username", username));
					cmd.Parameters.Add(new SqlParameter("@password", password));
					cmd.ExecuteNonQuery();

					using (SqlDataReader dr = cmd.ExecuteReader())
					{
						if (dr.Read())
						{
							result = dr["viewPermission"].ToString();
							return result;
						}   
					}
				}
				con.Close();
			}	
		}
		catch (Exception ex)
		{
			throw new ApplicationException("operation failed!", ex);
		}
		return null;	
	}
}
