using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace shopping2
{
    public partial class Mycartpage : System.Web.UI.Page
    {
        Conect obj = new Conect();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindgrid1();
               
            }
        }
        public void bindgrid1()
        {
            string s = "select * from carttable where regid= "+Session["uid"]+" ";
            DataSet ds = obj.fun_dataSet(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
       

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del="delete from carttable where cartid="+id+"";
            int g = obj.fun_nonquery(del);
            bindgrid1();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bindgrid1();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bindgrid1();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
           // TextBox tprice = (TextBox)GridView1.Rows[i].Cells[6].Controls[0];
            TextBox tquan = (TextBox)GridView1.Rows[i].Cells[7].Controls[0];

            int T = Convert.ToInt32(tquan.Text);
            string stup = "update carttable set quantity="+tquan.Text+" where cartid="+id+"";
            int ip = obj.fun_nonquery(stup);
            string pricep = "select prodprice from prodtable where proid= " +Session["prid"]+ " ";
            string price_updte = obj.fun_scalar(pricep);

            int newprice = Convert.ToInt32(price_updte) * T;
            string new_price = newprice.ToString();
            //string newprice = price_updte * T;
            // string cartup = "update carttable set item_price="+ newprice +" where cartid="+ id +" ";
            string cartup = "update carttable set item_price='" + new_price + "' where cartid=" + id + " ";
            int up = obj.fun_nonquery(cartup);
            GridView1.EditIndex = -1;
            bindgrid1();
            
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            
            Response.Redirect("userprofile.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string chk = "select max(cartid) from carttable";
           // string chk = "select max(cartid) from carttable where regid="+Session["uid"]+"";
            //string chk = "select count(cartid) from carttable where regid=" + Session["uid"] + "";
            string n1 = obj.fun_scalar(chk);
            int n = Convert.ToInt32(n1);
            for (int i = 1; i <= n; i++)
            {
                int cid = 0, rid = 0;
                string pid = "", quan = "", stat = "";
                string iprice = "";
                 string r = "select * from carttable where cartid=" + i + "";
               // string r = "select * from carttable where regid=" + Session["uid"] + "";
                SqlDataReader dr = obj.fun_reader(r);
                while (dr.Read())
                {
                    cid = Convert.ToInt32((dr["cartid"].ToString()));
                    rid = Convert.ToInt32((dr["regid"].ToString()));
                    //int pid = Convert.ToInt32((dr["proid"].ToString()));
                    //string rid = dr["regid"].ToString();
                    pid = dr["proid"].ToString();
                    //date = dr["date"].ToString();
                    //date1 = dr["date"].ToString();
                    iprice = dr["item_price"].ToString();
                    quan = dr["quantity"].ToString();
                    stat = dr["status"].ToString();

                }
                string idte = DateTime.Now.ToShortDateString();
                string dte = Convert.ToDateTime(idte).ToString("yyyy-MM-dd");
                string ins1 = "insert into ordertable values(" + cid + "," + rid + ",'" + pid + "','" + dte + "','" + iprice + "','" + quan + "','" + stat + "')";
                int i1 = obj.fun_nonquery(ins1);
                //if (i1 != 0)
                //{
                    string total = "Select Sum(isnull(cast(item_price as int),0)) from carttable where regid=" + Session["uid"] + "";
                    string subtotal = obj.fun_scalar(total);
                    string ins2 = "insert into billtable values('" + Session["uid"] + "','" + subtotal + "','" + dte + "','" + stat + "')";
                    int i2 = obj.fun_nonquery(ins2);
                   // if (i2 != 0)
                    //{
                         string del = "delete from carttable where cartid=" + i + "";
                       // string del = "delete from carttable where regid=" + Session["uid"] + "";
                        int i3 = obj.fun_nonquery(del);
                // }
                // }
                Session["newsubtotal"] = subtotal;
                Session["newquan"] = quan;
                string datefinal = "";
                Session["dte"] = datefinal;
                //for keeping session
                string prname = "";
                string s = "select * from prodtable where proid = " + pid + "";
                SqlDataReader dr1 = obj.fun_reader(s);
                while (dr1.Read())
                {

                    prname = dr1["prodname"].ToString();
                }
                string product_name = "";
                Session["prname"] = product_name;

            }
            

            // Session["newquan"] = quan;
            Response.Redirect("orderpage.aspx");

            

        }
    }
}