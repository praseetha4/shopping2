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
    public partial class Editcategory : System.Web.UI.Page
    {
        Conect obj = new Conect();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bindgrid1();
            }

        }
        public void bindgrid1()
        {
            string s = "select * from cattable";
            DataSet ds = obj.fun_dataSet(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "Delete from cattable where catid=" + id + "";
            int io = obj.fun_nonquery(del);
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
            TextBox txtcatname = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtdescription = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            string strup = "update cattable set catname='" + txtcatname.Text + "',catdescription='" + txtdescription + "' where catid=" + id + "";
            int ip = obj.fun_nonquery(strup);
            GridView1.EditIndex = -1;
            bindgrid1();
        }
    }
}