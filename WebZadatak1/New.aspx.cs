using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class New : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Product product = new Product()
        {
            naziv = NazivTextBox.Text,
            opis = OpisTextBox.Text,
            kategorija = KategorijaTextBox.Text,
            proizvodjac = ProizvodjacTextBox.Text,
            dobavljac = DobavljacTextBox.Text,
            cena = CenaTextBox.Text
        };

        ProductModelContext db = new ProductModelContext();
        db.Products.Add(product);
        db.SaveChanges();

        Response.Redirect("Default.aspx");
    }
}