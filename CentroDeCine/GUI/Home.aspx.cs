using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GUI_Home : System.Web.UI.Page
{
    ArrayList lastNews = new ArrayList(3);
    protected void Page_Load(object sender, EventArgs e)
    {
    	loadNews();
        loadEvents();
    }

    private void ActivarBannersSlideShow(int numBanner) {
        ImageBannerP.Visible = false;
        ImageBannerCrfic.Visible = false;
        ImageBannerF.Visible = false;
        switch (numBanner) {
            case 1:
                ImageBannerF.Visible = true;
                break;
            case 2:
                ImageBannerCrfic.Visible = true;
                break;
            case 3:
                ImageBannerP.Visible = true;
                break;
        }
    }

    //Function for load images of news to panel.
    private void loadNews() {
        ConexionModel cm = new ConexionModel();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;
        try {
            cm.Con.Open();
            cmd.CommandText = "dbo.getTopThreeNews";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = cm.Con;
            //cmd.Parameters.AddWithValue("@value", "dfgdh");
            reader = cmd.ExecuteReader();
            int index = 0;
            while (reader.Read())
            {
                switch (index) {
                    case 0:
                        LblNewTitleOne.Text = reader.GetValue(0).ToString();
                        BttnImageNoticiasOne.ImageUrl = "~/" + reader.GetValue(1).ToString();
                        break;
                    case 1:
                        LblNewTitleTwo.Text = reader.GetValue(0).ToString();
                        BttnImageNoticiasTwo.ImageUrl = "~/" + reader.GetValue(1).ToString();
                        break;
                    case 2:
                        LblNewTitleThree.Text = reader.GetValue(0).ToString();
                        BttnImageNoticiasThree.ImageUrl = "~/" + reader.GetValue(1).ToString();
                        break;
                }
                index++;
            }
            cm.Con.Close();
        }
        catch (Exception ex) {
            LblMensaje.Text = ex.ToString();
        }
        
    }

    private void loadEvents()
    {
        ConexionModel cm = new ConexionModel();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;
        try
        {
            cm.Con.Open();
            cmd.CommandText = "dbo.getTopThreeEvents";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = cm.Con;
            //cmd.Parameters.AddWithValue("@value", "dfgdh");
            reader = cmd.ExecuteReader();
            int index = 0;
            while (reader.Read())
            {
                switch (index)
                {
                    case 0:
                        Label1.Text = reader.GetValue(0).ToString();
                        bttnImgEventOne.ImageUrl = "~/" + reader.GetValue(1).ToString();
                        break;
                    case 1:
                        Label2.Text = reader.GetValue(0).ToString();
                        bttnImgEventTwo.ImageUrl = "~/" + reader.GetValue(1).ToString();
                        break;
                    case 2:
                        Label3.Text = reader.GetValue(0).ToString();
                        bttnImgEventThree.ImageUrl = "~/" + reader.GetValue(1).ToString();
                        break;
                }
                index++;
            }
            cm.Con.Close();
        }
        catch (Exception ex)
        {
            LblMensaje.Text = ex.ToString();
        }

    }

    //Buttons Code.

    protected void BttnLeerMasNoticias_Click(object sender, EventArgs e)
    {
        Response.Redirect("NoticiasEventos.aspx",true);
    }

    protected void BttnVerMasEventos_Click(object sender, EventArgs e)
    {
        Response.Redirect("Eventos.aspx",true);
    }
    

    protected void BttnImageDot1_Click(object sender, ImageClickEventArgs e)
    {
        ActivarBannersSlideShow(1);
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

    protected void BttnImageDot2_Click(object sender, ImageClickEventArgs e)
    {
        ActivarBannersSlideShow(2);
    }

    protected void BttnImageDot3_Click(object sender, ImageClickEventArgs e)
    {
        ActivarBannersSlideShow(3);
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

    protected void ImageBannerP_Click(object sender, EventArgs e)
    {
        Response.Redirect("Preambulo.aspx",true);
    }

    protected void ImageBannerCrfic_Click(object sender, EventArgs e)
    {
        Response.Redirect("CRFIC.aspx",true);
    }

    protected void ImageBannerF_Click(object sender, EventArgs e)
    {
        Response.Redirect("Fauno.aspx",true);
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