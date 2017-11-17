using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class GUI_Calendario : System.Web.UI.Page
{

    int posCalendario = 0;
    ArrayList calendarios = new ArrayList();
   

    protected void Page_Load(object sender, EventArgs e)
    {
        calendarios.Add("~/Calendario1");
        calendarios.Add("~/Calendario2");
        calendarios.Add("~/Calendario3");

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        posCalendario += 1;
        if (posCalendario > 2)
            posCalendario = 0;
        Image1.ImageUrl = calendarios[posCalendario].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        posCalendario -= 1;
        if (posCalendario < 0)
            posCalendario = 2;
        Image1.ImageUrl = calendarios[posCalendario].ToString();

    }
}