using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GUI_Preambulo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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

    }

    protected void BttnJueves_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void BttnViernes_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void BttnSabado_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void BttnDomingo_Click(object sender, ImageClickEventArgs e)
    {
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
}