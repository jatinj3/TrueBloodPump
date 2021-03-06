using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class acceptordetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    string chk;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadGrid();
            
        }
    }
    void LoadGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from acceptoreg", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id1 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlCommand cmd = new SqlCommand("delete from acceptoreg where Registeration_ID='" + id1 + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        LoadGrid();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadGrid();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        LoadGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int id1 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        TextBox name = (TextBox)(GridView1.Rows[e.RowIndex].FindControl("txtname"));
        TextBox gender = (TextBox)(GridView1.Rows[e.RowIndex].FindControl("txtgender"));
        TextBox dob = (TextBox)(GridView1.Rows[e.RowIndex].FindControl("txtdob"));
      //  TextBox bgp = (TextBox)(GridView1.Rows[e.RowIndex].FindControl("txtbgp"));
        SqlCommand cmd = new SqlCommand("update acceptoreg set Name='" + name.Text + "',Gender='" + gender.Text + "' ,dob='" + dob.Text + "'where Registeration_ID='" + id1 + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.EditIndex = -1;
        LoadGrid();
    }
   
}