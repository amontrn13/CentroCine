using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GUI_NoticiaEventosView : System.Web.UI.Page
{
    String NewTitle;
    protected void Page_Load(object sender, EventArgs e)
    {
        NewTitle = (string)(Session["newtitle"]);
        lblTitle.Text = NewTitle;
        loadNew();

    }

    protected void loadNew() {
        ConexionModel cm = new ConexionModel();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;
        try
        {
            cm.Con.Open();
            cmd.CommandText = "dbo.getTextNew";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", lblTitle.Text);
            cmd.Connection = cm.Con;
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                lblText.Text = reader.GetValue(0).ToString();
                lblDate.Text = reader.GetValue(1).ToString();
                ImgNew.ImageUrl = "~/" + reader.GetValue(2).ToString();

            }
            cm.Con.Close();
        }
        catch (Exception ex)
        {
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
}