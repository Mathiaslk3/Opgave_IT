using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Repeater1.DataSource = connect.connecter("SELECT TOP 1 billeder.bill_sti, film.film_beskr, film.film_navn FROM billeder INNER JOIN film ON billeder.fk_film_id = film.film_id INNER JOIN genre ON film.fk_genre_id = genre.genre_Id ORDER BY NEWID()");
        Repeater1.DataBind();
    }
    protected string kort(object obj)
    {
        string besked = obj.ToString();


        if (besked.Length > 100)
        {
            besked = besked.Substring(0, 100) + "....";

        }
        return besked;
    }
}