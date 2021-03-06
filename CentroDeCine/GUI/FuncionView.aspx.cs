﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GUI_FuncionView : System.Web.UI.Page
{
    String NewTitle;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            loadTipo();

    }

    protected void loadTipo() {
        //NewTitle = (string)(Session["newtitle"]);
        //lblTitle.Text = NewTitle;
        LblTitlePage.Text = "Funciones";
        string strID = Session["id"].ToString();
        int id = int.Parse(strID);
        loadFunction(id);
        
    }

    protected void loadFunction(int id) {
        ConexionModel cm = new ConexionModel();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;
        try
        {
            cm.Con.Open();
            cmd.CommandText = "dbo.getDataFunction";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Connection = cm.Con;
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                lblText.Text = reader.GetValue(0).ToString();
                lblDate.Text = reader.GetValue(1).ToString();
                ImgNew.ImageUrl = "~/" + reader.GetValue(2).ToString();
                lblText.Text += "\n";
                lblText.Text += reader.GetValue(3).ToString();

            }
            cm.Con.Close();
        }
        catch (Exception ex)
        {
            lblText.Text = ex.ToString();
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
