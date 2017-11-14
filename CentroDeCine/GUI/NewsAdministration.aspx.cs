using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class GUI_NewsAdministration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            LoadGridDataNews();
    }

    protected void btnAgregandoNoticia_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddingNews.aspx");
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["newtitle"] = (grdData.SelectedRow.FindControl("lblNew") as Label).Text;
        Response.Redirect("EditingNew.aspx");
    }

    public void LoadGridDataNews()
    {
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
}