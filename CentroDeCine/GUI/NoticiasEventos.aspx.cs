using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GUI_NoticiasEventos : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (!IsPostBack)
            LoadGridData();
    }

    private void LoadGridData() {
        //I am adding dummy data here. You should bring data from your repository.
        DataTable dt = new DataTable();
        dt.Columns.Add("Seccion");
        dt.Columns.Add("Title");
        //SQl query for news.
        ConexionModel cm = new ConexionModel();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader reader;
        try
        {
            cm.Con.Open();
            cmd.CommandText = "dbo.getNews";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = cm.Con;
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                DataRow dr = dt.NewRow();
                dr[1] = reader.GetValue(1);
                switch (reader.GetValue(0))
                {
                    case 1:
                        dr[0] = "Préambulo";
                        break;
                    case 2:
                        dr[0] = "CRFIC";
                        break;
                    case 3:
                        dr[0] = "Fauno";
                        break;
                    case 4:
                        dr[0] = "Centro de Cine";
                        break;
                }
                dt.Rows.Add(dr);
            }
            grdData.DataSource = dt;
            grdData.DataBind();
            cm.Con.Close();
        }
        catch (Exception ex)
        {
        }
    }
    protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdData.PageIndex = e.NewPageIndex;
        LoadGridData();
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

    protected void bttnReadNew_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("NoticiaEventosView.aspx");
    }
}