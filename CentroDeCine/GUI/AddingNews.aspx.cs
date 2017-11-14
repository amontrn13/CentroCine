using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class GUI_AddingNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
                //LoadGridData();
        }
            
    }

    protected void btnInsertarNoticia_Click(object sender, EventArgs e)
    {
        ConexionModel cm = new ConexionModel();
        SqlCommand cmd = new SqlCommand();
        

        try
        {
            cm.Con.Open();
            cmd.CommandText = "dbo.addNew";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = cm.Con;
            cmd.Parameters.AddWithValue("@tittle",txtTittle.Text);
            cmd.Parameters.AddWithValue("@new", txtTittle.Text);
            cmd.ExecuteNonQuery();
            cm.Con.Close();

            string myStringVariable = "Se ha agregado la noticia";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);

        }
        catch (Exception ex)
        {
        }





    }

   
}