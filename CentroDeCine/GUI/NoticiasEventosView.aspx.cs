using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GUI_NoticiaEventosView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LblTitlePage.Text = (string)(Session["newtitle"]);

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