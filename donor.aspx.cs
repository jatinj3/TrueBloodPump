using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class donor : System.Web.UI.Page
{
    
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!Page.IsPostBack)
        {
            Label2.Text = Session["textbox1"].ToString();
            //GridView1.Visible = false;
        }

    }
    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {

    }
    string st;
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Label2.Text;
        SqlCommand cmd = new SqlCommand("select Blood_group from donoreg where Email_id='"+id+"'", cn);
        cn.Open();
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataSet ds = new DataSet();
        //da.Fill(ds, "donoreg");
        //string st = ds.Tables["donoreg"].Rows[0][6].ToString();
        //Label3.Text = st;
        
       //string st=;
        object ss = cmd.ExecuteScalar();
        string stt=ss.ToString();
        //Label3.Text = stt;
        SqlDataAdapter daa = new SqlDataAdapter("select * from bloodreq where Blood_group='" + stt + "'", cn);
        DataTable dt = new DataTable();
        daa.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cn.Close();
    }
}