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
    public partial class itemdetails : System.Web.UI.Page
    {
        Conect obj = new Conect();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                
                string s = "select * from prodtable where proid = '" + Session["prid"] + "'";
                SqlDataReader dr = obj.fun_reader(s);
                while(dr.Read())
                {
                    Image1.ImageUrl = dr["prodimage"].ToString();
                    Label1.Text = dr["prodname"].ToString();
                    Label2.Text = dr["proddescription"].ToString();
                    Label3.Text = dr["prodprice"].ToString();
                    Label4.Text = dr["prodstock"].ToString();
                    Label5.Text = dr["status"].ToString();

                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
            int pprice=0;string stat = "";// prname="";
            string sregid = "select regid from logintable where loginid=" + Session["uid"] + "";
            string drreg = obj.fun_scalar(sregid);
            
            string s = "select * from prodtable where proid = '" + Session["prid"] + "'";
            SqlDataReader dr = obj.fun_reader(s);
            while (dr.Read())
            {
                pprice = Convert.ToInt32( dr["prodprice"]);
                stat = dr["status"].ToString();
               // prname = dr["prodname"].ToString();
            }

            
            int quan =  Convert.ToInt32( TextBox1.Text);
            int priceresul = pprice * quan;

            string sel = "select max(cartid) from carttable ";
            string rid = obj.fun_scalar(sel);

            //for session variable
            int cart_id = 0; //string product_name = "";
            if (rid == "")
            {
                cart_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(rid);
                cart_id = newregid + 1;
            }
            //int price = Convert.ToInt32("+TextBox1.Text+" * pprice);
            string idte = DateTime.Now.ToShortDateString();
            string dte = Convert.ToDateTime(idte).ToString("yyyy-MM-dd");
            string ins = "insert into carttable values(" + cart_id + "," +drreg + "," + Session["prid"] + ",'"+dte+"',"+priceresul+","+quan+",'"+stat+"')";
            int i = obj.fun_nonquery(ins);

            Label9.Visible = true;
            Label9.Text = "ITEM ADDED TO CART !!! ";
            Session["carttid"] = cart_id;
           // Session["prname"] = product_name;
            Response.Redirect("Mycartpage.aspx");
           

        }
    }
}