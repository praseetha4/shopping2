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
    public partial class addproduct : System.Web.UI.Page
    {
        Conect obj = new Conect();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select catid,catname from cattable";

                DataSet ds = obj.fun_dataSet(s);
                
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "catname";
                DropDownList1.DataValueField = "catid";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "select");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/catimg/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string ins = "insert into prodtable values("+DropDownList1.SelectedItem.Value+",'"+TextBox1.Text+"','"+p+"',"+TextBox2.Text+",'"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"')";
            int i = obj.fun_nonquery(ins);
            if (i != 0)
            {
                Label8.Visible = true;
                Label8.Text = "Product Added Successfully !!";
            }
        }
    }
}