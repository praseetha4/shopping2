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
    public partial class order_page : System.Web.UI.Page
    {
        Conect obj = new Conect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int acnumber = 0;
            int buid =Convert.ToInt32(Session["uid"]);
            // balancecheckService.ServiceClient objj = new balancecheckService.ServiceClient();
            balcheckService.ServiceClient objj = new balcheckService.ServiceClient();
            acnumber = Convert.ToInt32(TextBox2.Text);
            int bal = objj.Getbalance(acnumber, buid);
            //int bal = objj.Getbalance( buid);

            int subt = Convert.ToInt32(Session["subtotal"]);
            //int newbal = Convert.ToInt32(bal);
            int new_quan = Convert.ToInt32(Session["newquan"]);
            //if(newbal>= subt)
            if(bal>=subt)
            {
                // int availbal = newbal - subt;
                int availbal = bal - subt;  
                string Ac_update = "update accounttable set balance='" + availbal + "' where userid=" + Session["uid"] + " ";
                int up = obj.fun_nonquery(Ac_update);

               // string quan_update="update producttable "

            }
            else
            {
                Label7.Visible = true;
                Label7.Text = " Not Sufficient Balance";
            }
            string b_name = "",bs_name="", b_addr = "",bs_addr="";
            int s_subtotal=0;
            b_name = TextBox1.Text;
            b_addr = TextBox5.Text;
            Session["b_name"] = bs_name;
            Session["b_addr"] = bs_addr;
            Session["subt"] = s_subtotal;
            Response.Redirect("BillPrint.aspx");
        }
    }
}