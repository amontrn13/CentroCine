using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GUI_CRFIC : System.Web.UI.Page
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