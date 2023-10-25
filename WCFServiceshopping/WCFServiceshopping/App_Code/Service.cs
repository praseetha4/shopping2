using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;



// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{

	SqlConnection con = new SqlConnection(@"server=PRASEETHA\SQLEXPRESS;database=project;Integrated security=True");
	public string GetData(int value)
	{
		return string.Format("You entered: {0}", value);
	}

	public CompositeType GetDataUsingDataContract(CompositeType composite)
	{
		if (composite == null)
		{
			throw new ArgumentNullException("composite");
		}
		if (composite.BoolValue)
		{
			composite.StringValue += "Suffix";
		}
		return composite;
	}
	public int Getbalance(int value,int uid)
	{
		string chk = "select balance from accounttable where accountnumber=" + value + " and userid=" + uid+"";
		SqlCommand cmd = new SqlCommand(chk, con);
		con.Open();
		string bal = "";
		SqlDataReader dr = cmd.ExecuteReader();
		while (dr.Read())
		{
			bal = dr["balance"].ToString();
		}
		int b = Convert.ToInt32(bal);
		return b;

	}
}
