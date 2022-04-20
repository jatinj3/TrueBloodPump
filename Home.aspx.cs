using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (DropDownList1.SelectedValue == "Donor")
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select Email_id,Passwd from donoreg where Email_id=@a and Passwd=@b", cn);
                cn.Open();
                cmd.Parameters.AddWithValue("@a", TextBox1.Text);
                cmd.Parameters.AddWithValue("@b", TextBox2.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label4.Text = "Login Successfuly!!!";
                    Session["textbox1"] = TextBox1.Text;
                    Response.Redirect("donor.aspx");
                }
                else
                {
                    Label4.Text = "Login Failed";
                }

                cn.Close();

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
        else if (DropDownList1.SelectedValue == "Acceptor")
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select Email_id,Passwd from acceptoreg where Email_id=@a and Passwd=@b", cn);
                cn.Open();
                cmd.Parameters.AddWithValue("@a", TextBox1.Text);
                cmd.Parameters.AddWithValue("@b", TextBox2.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label4.Text = "Login Successfuly!!!";
                    Session["textbox1"] = TextBox1.Text;
                    Response.Redirect("acceptor.aspx");
                }
                else
                {
                    Label4.Text = "Login Failed";
                }

                cn.Close();

            }
            catch (Exception ex)
            {

                Label1.Text = ex.Message;
            }
        }
        else if (TextBox1.Text == "administrator@gmail.com" || TextBox2.Text == "198")
        {
            Label4.Text = "Login Successfuly!!!";
            Response.Redirect("admin.aspx");
        }
        else
        {
            Label4.Text = "Login Failed";
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Donorreg.aspx");
    }
    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Acceptorreg.aspx");
    }
}