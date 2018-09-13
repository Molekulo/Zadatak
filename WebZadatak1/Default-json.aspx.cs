using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default_json : System.Web.UI.Page
{
    public ProducJSONCollection products = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        products = JsonConvert.DeserializeObject<ProducJSONCollection>(File.ReadAllText("D:\\MS Projects\\WebZadatak1\\WebZadatak1\\json.json"));

        GridView1.DataSource = products.Collection;

        GridView1.DataBind();

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataBind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }

}