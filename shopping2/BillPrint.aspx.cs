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
    public partial class BillPrint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string name = Session["b_name"].ToString() ;
            //Label1.Text = name;
            //string addr = Session["b_addr"].ToString();
            //Label2.Text = addr;
            //string productname = Session["prname"].ToString();
            //Label3.Text = productname;
            //string total = (Session["subt"]).ToString();
            //Label4.Text = total;
            //if (!IsPostBack)
            //{
            //    string s = "select * from prodtable where catid= '" + Session["caid"] + "'";//uid
            //    DataSet ds = obj.fun_dataSet(s);
            //    DataList1.DataSource = ds;
            //    DataList1.DataBind();
            //}

            //select userreg.fname,userreg.phone,userreg.address,ordertable.itemprice,ordertable.quantity,billtable.totalprice,billtable.date from userreg inner join billtable on userreg.userid = billtable.userid inner join ordertable on billtable.userid = ordertable.regid where userreg.userid = Session["uid"];
            //if(!IsPostBack)
            //{

            //}

        }
    }
}