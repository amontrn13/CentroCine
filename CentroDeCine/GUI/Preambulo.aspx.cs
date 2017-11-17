using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class GUI_Preambulo : System.Web.UI.Page
{
    int[] arrayFunciones = new int[4];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargarID();
        }
        
    }

    protected void cargarID()
    {
        int i =  0;
        ConexionModel cm = new ConexionModel();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;
        try
        {
            cm.Con.Open();
            cmd.CommandText = "dbo.getIDFunciones";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = cm.Con;
            //cmd.Parameters.AddWithValue("@value", "dfgdh");
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                arrayFunciones[i] = (int)reader.GetValue(0);
                i++;
            }
            //LblMensaje.Text = arrayFunciones[2].ToString();
            cm.Con.Close();
        }
        catch (Exception ex)
        {
            LblMensaje.Text = ex.ToString();
        }
    }
    protected void BttnImageIG_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.instagram.com/centrodecine/");
    }

    protected void BttnImageYT_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.youtube.com/user/CCPCMCJ");
    }

    protected void BttnImageFB_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/centrodecine/");
    }

    protected void BttnImageTwitter_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://twitter.com/centrodecine");
    }

    protected void BttnImageLogoCentro_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx", true);
    }

    protected void BttnMiercoles_Click(object sender, ImageClickEventArgs e)
    {
        
        Session["tipo"]= "cita";
        Response.Redirect("NoticiasEventosView.aspx", true);

    }

    protected void BttnJueves_Click(object sender, ImageClickEventArgs e)
    {
        Session["id"] = 1;
        Response.Redirect("FuncionView.aspx", false);
        Context.ApplicationInstance.CompleteRequest();
    }

    protected void BttnViernes_Click(object sender, ImageClickEventArgs e)
    {
        Session["id"] = 2;
        Response.Redirect("FuncionView.aspx", true);
    }

    protected void BttnSabado_Click(object sender, ImageClickEventArgs e)
    {
        Session["id"] = 3;
        Response.Redirect("FuncionView.aspx", true);
    }

    protected void BttnDomingo_Click(object sender, ImageClickEventArgs e)
    {
        Session["id"] = 4;
        Response.Redirect("FuncionView.aspx", true);
    }

    protected void BttnImageNoticiasOne_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void BttnImageNoticiasTwo_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void BttnImageNoticiasThree_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void BttnLeerMas_Click(object sender, EventArgs e)
    {
    }

    protected void DropDownListMenu_SelectedIndexChanged(object sender, EventArgs e)
    {
        int indice = DropDownListMenu.SelectedIndex;
        switch (indice)
        {
            case 0:
                Response.Redirect("Home.aspx", true);
                break;
            case 1:
                Response.Redirect("Preambulo.aspx", true);
                break;
            case 2:
                Response.Redirect("Fauno.aspx", true);
                break;
            case 3:
                Response.Redirect("CRFIC.aspx", true);
                break;
            case 4:
                Response.Redirect("Calendario.aspx", true);
                break;
            case 5:
                Response.Redirect("AboutUS.aspx", true);
                break;
            default:
                Response.Redirect("Home.aspx", true);
                break;

        }
        
    }
}