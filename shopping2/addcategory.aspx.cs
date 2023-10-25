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
    public partial class addcategory : System.Web.UI.Page
    {
        Conect obj = new Conect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/catimg/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string ins = "insert into cattable values('" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "')";
            int i = obj.fun_nonquery(ins);
            if(i!=0)
            {
                Label4.Visible = true;
                Label4.Text = "Category Added Successfully !!";
            }
        }
    }
}