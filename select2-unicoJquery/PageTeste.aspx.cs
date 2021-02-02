using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace select2_unicoJquery
{
    public partial class PageTeste : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["mydata"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                var cmd = new SqlCommand("Select Id, Nome from TbLoja", con);
                con.Open();
                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataBind();
            }
        }
    }
}