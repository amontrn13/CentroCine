using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public class ConexionModel
{
    private  SqlConnection con;
    public ConexionModel()
    {
        con = new SqlConnection("Data Source=MPC\\SQLEXPRESS;Initial Catalog=TEC_CS_CCC;Integrated Security=True");
    }

    public SqlConnection Con
    {
        get
        {
            return con;
        }

        set
        {
            con = value;
        }
    }
}