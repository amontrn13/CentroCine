using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class GUI_EditingNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            cargandoNoticia();
    }



    public void cargandoNoticia()
    {
        txtTituloNoticia.Text = (string) (Session["newtitle"]);

        ConexionModel cm = new ConexionModel();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;
        try
        {
            cm.Con.Open();
            cmd.CommandText = "dbo.getNewSpecific";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nombreNoticia", txtTituloNoticia.Text.ToString());
            cmd.Connection = cm.Con;
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                txtNoticia.Text = reader.GetString(0);
            }
            
            cm.Con.Close();
        }
        catch (Exception ex)
        {
        }
    }





    protected void btnEditarNoticia_Click(object sender, EventArgs e)
    {
        txtTituloNoticia.Text = (string)(Session["newtitle"]);


        ConexionModel cm = new ConexionModel();
        SqlCommand cmd = new SqlCommand();
        
        try
        {
            cm.Con.Open();
            cmd.CommandText = "dbo.editNewSpecific";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tituloNoticia", txtTituloNoticia.Text.ToString());
            cmd.Parameters.AddWithValue("@nombreNoticia", txtNoticia.Text.ToString());
            cmd.Connection = cm.Con;
            cmd.ExecuteNonQuery();

            cm.Con.Close();
        }
        catch (Exception ex)
        {
        }
    }
}