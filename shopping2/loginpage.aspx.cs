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
    public partial class loginpage : System.Web.UI.Page
    {
        Conect obj = new Conect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(loginid) from logintable ";
            string rid = obj.fun_scalar(sel);
            int reg_id = 0;
            if (rid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(rid);
                reg_id = newregid + 1;
            }
            string ins = "insert into userreg values(" + reg_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + RadioButtonList1.SelectedItem.Text + "'," + TextBox6.Text + ",'" + TextBox7.Text + "')";
            int i = obj.fun_nonquery(ins);

            if (i != 0)
            {
                string inslog = "insert into logintable values(" + reg_id + ",'" + TextBox10.Text + "','" + TextBox11.Text + "','User','Active')";
                int j = obj.fun_nonquery(inslog);
                Label16.Visible = true;
                Label16.Text = "Succesfully Registered !!! ";
            }
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    //string uid = "";
        //    string chk = "select count(loginid) from logintable where username='" + TextBox8.Text + "' and password='" + TextBox9.Text + "'";
        //    string i = obj.fun_scalar(chk);
        //    if (i == "1")
        //    {
        //        string strid = "select loginid from logintable where username='" + TextBox8.Text + "' and password='" + TextBox9.Text + "'";
        //        string id = obj.fun_scalar(strid);
        //        Session["uid"] = id;
        //        Response.Redirect("userprofile.aspx");
        //    }
        //    else
        //    {
        //        Label17.Visible = true;
        //        Label17.Text = "INVALID USERNAME OR PASSWORD !!!";
        //    }
        //}

        protected void Button3_Click(object sender, EventArgs e)
        {
            string sel = "select max(loginid) from logintable ";
            string rid = obj.fun_scalar(sel);
            int reg_id = 0;
            if (rid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(rid);
                reg_id = newregid + 1;
            }
            string ins = "insert into adminreg values(" + reg_id + ",'" + TextBox13.Text + "','" + TextBox14.Text + "'," + TextBox15.Text + ",'" + TextBox16.Text + "')";
            int i = obj.fun_nonquery(ins);

            if (i != 0)
            {
                string inslog = "insert into logintable values(" + reg_id + ",'" + TextBox17.Text + "','" + TextBox18.Text + "','Admin','Active')";
                int j = obj.fun_nonquery(inslog);
                Label26.Visible = true;
                Label26.Text = "Succesfully Registered !!! ";
            }

        }
    }
}