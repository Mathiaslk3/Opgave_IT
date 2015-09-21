using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class liste : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = connect.connecter("SELECT TOP 3 billeder.bill_sti, film.film_navn FROM billeder INNER JOIN film ON billeder.fk_film_id = film.film_id INNER JOIN genre ON film.fk_genre_id = genre.genre_Id");
        Repeater1.DataBind();
    }
}