﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace shopping2
{
    public partial class productlist : System.Web.UI.Page
    {
        Conect obj = new Conect();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string s = "select * from prodtable where catid= '" + Session["caid"] + "'";//uid
                DataSet ds = obj.fun_dataSet(s);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["prid"] = id;//uid
            Response.Redirect("itemdetails.aspx");
        }
    }
}