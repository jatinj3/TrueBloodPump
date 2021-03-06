using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Acceptor : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Calendar1.Visible = false;
            LoadGrid();
        }
    }
 
         void LoadGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from acceptoreg", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
    
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox9.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = String.Empty;
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        TextBox9.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox5.Text = String.Empty;
        TextBox6.Text = String.Empty;
        RequiredFieldValidator1.Visible = false;
        RequiredFieldValidator2.Visible = false;
        RequiredFieldValidator5.Visible = false;
        Label3.Text = String.Empty;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("insert into acceptoreg values(@a,@b,@c,@d,@e,@f,@g,@h)", cn);
            //exm = DropDownList1.SelectedItem.ToString();
            cn.Open();
            // cmd.Parameters.AddWithValue("@a", Convert.ToInt32(TextBox8.Text));
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);

            if (RadioButton1.Checked)
            {
                cmd.Parameters.AddWithValue("@b", RadioButton1.Text);
            }
            else
            {
                cmd.Parameters.AddWithValue("@b", RadioButton2.Text);
            }
            cmd.Parameters.AddWithValue("@c", TextBox9.Text);
            cmd.Parameters.AddWithValue("@d", TextBox3.Text);
            cmd.Parameters.AddWithValue("@e", TextBox4.Text);
            


            cmd.Parameters.AddWithValue("@f", TextBox2.Text);
            cmd.Parameters.AddWithValue("@g", TextBox5.Text);
            //cmd.Parameters.AddWithValue("@h", exm);

            string path = FileUpload1.PostedFile.FileName;
            FileUpload1.SaveAs(MapPath("~/images/" + path));
            cmd.Parameters.AddWithValue("@h", "~/images/" + path);
            cmd.ExecuteNonQuery();
            //cn.Close();
            Label3.Text = "Data Saved";
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
}