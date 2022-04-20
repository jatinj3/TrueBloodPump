using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class acceptor : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Label2.Text = Session["textbox1"].ToString();
            //GridView1.Visible = false;
        }
        cn.Open();
        SqlCommand cmd = new SqlCommand("select Name,Phone_no from acceptoreg where Email_id='"+Label2.Text+"'",cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
           TextBox1.Text = dr[0].ToString();
           TextBox2.Text = dr[1].ToString();
        }
        cn.Close();
    }
    
    String bg;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "A")
        {
            bg = "A";
            SqlDataAdapter da = new SqlDataAdapter("select Name,Gender,dob,Phone_no,Addr,Blood_group from donoreg where Blood_group='" + bg + "' ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        else if (DropDownList1.SelectedValue == "A+")
        {
            bg = "A+";
            SqlDataAdapter da = new SqlDataAdapter("select Name,Gender,dob,Phone_no,Addr,Blood_group from donoreg where Blood_group='" + bg + "' ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedValue == "B")
        {
            bg = "B";
            SqlDataAdapter da = new SqlDataAdapter("select Name,Gender,dob,Phone_no,Addr,Blood_group from donoreg where Blood_group='" + bg + "' ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedValue == "B+")
        {
            bg = "B+";
            SqlDataAdapter da = new SqlDataAdapter("select Name,Gender,dob,Phone_no,Addr,Blood_group from donoreg where Blood_group='" + bg + "' ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedValue == "O")
        {
            bg = "O";
            SqlDataAdapter da = new SqlDataAdapter("select Name,Gender,dob,Phone_no,Addr,Blood_group from donoreg where Blood_group='" + bg + "' ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedValue == "O+")
        {
            bg = "O+";
            SqlDataAdapter da = new SqlDataAdapter("select Name,Gender,dob,Phone_no,Addr,Blood_group from donoreg where Blood_group='" + bg + "' ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedValue == "O-")
        {
            bg = "O-";
            SqlDataAdapter da = new SqlDataAdapter("select Name,Gender,dob,Phone_no,Addr,Blood_group from donoreg where Blood_group='" + bg + "' ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else if (DropDownList1.SelectedValue == "AB+")
        {
            bg = "AB+";
            SqlDataAdapter da = new SqlDataAdapter("select Name,Gender,dob,Phone_no,Addr,Blood_group from donoreg where Blood_group='" + bg + "' ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            bg = "AB-";
            SqlDataAdapter da = new SqlDataAdapter("select Name,Gender,dob,Phone_no,Addr,Blood_group from donoreg where Blood_group='" + bg + "' ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("insert into bloodreq values(@a,@b,@c,@d)", cn);
            //exm = DropDownList1.SelectedItem.ToString();
            cn.Open();
            // cmd.Parameters.AddWithValue("@a", Convert.ToInt32(TextBox8.Text));
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);

            if (DropDownList1.SelectedValue == "A")
            {
                bg = "A";
            }
            else if (DropDownList1.SelectedValue == "A+")
            {
                bg = "A+";
            }
            else if (DropDownList1.SelectedValue == "B")
            {
                bg = "B";
            }
            else if (DropDownList1.SelectedValue == "B+")
            {
                bg = "B+";
            }
            else if (DropDownList1.SelectedValue == "O")
            {
                bg = "O";
            }
            else if (DropDownList1.SelectedValue == "O+")
            {
                bg = "O+";
            }
            else if (DropDownList1.SelectedValue == "O-")
            {
                bg = "O-";
            }
            else if (DropDownList1.SelectedValue == "AB+")
            {
                bg = "AB+";
            }
            else
            {
                bg = "AB-";
            }
            cmd.Parameters.AddWithValue("@b", bg);
            
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);

            cmd.Parameters.AddWithValue("@d", TextBox3.Text);
            
           
            //cmd.Parameters.AddWithValue("@h", exm);

            
            cmd.ExecuteNonQuery();
            //cn.Close();
            Label3.Text = "REQUEST SENT";
            //SqlDataAdapter da = new SqlDataAdapter("select Registration_ID from RegForm", cn);
            // DataTable dt = new DataTable();
            //da.Fill(dt);

            //object obj = cmd.ExecuteScalar();
            // lblMessage.Text = "Record inserted successfully. ID = " + obj.ToString();




            //MessageBox.Show("Data Saved & your Reg_id is:-" + obj.ToString());

            cn.Close();
            // MessageBox.Show("Data Saved & your Reg_id is:-" +cmd.ExecuteScalar());
            // LoadGrid();
        }
        catch (Exception ex)
        {
            Label3.Text = ex.Message;
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        
    }
}