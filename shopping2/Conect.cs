using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace shopping2
{
    public class Conect
    {
        SqlConnection con;
        SqlCommand cmd;
        public Conect()
        {
            con = new SqlConnection(@"server=PRASEETHA\SQLEXPRESS;database=project;Integrated security=True");
        }
        public int fun_nonquery(string sqlquery)//insert,delete,update
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string fun_scalar(string sqlquery)//scalar function
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);//
            con.Open();
            string i = cmd.ExecuteScalar().ToString();
            con.Close();
            return i;
        }
        public SqlDataReader fun_reader(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);//
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;

        }
        public DataSet fun_dataSet(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, con);
            DataSet dt = new DataSet();
            da.Fill(dt);
            return dt;
        }
    }
}