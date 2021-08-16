using Libreria.Entidades;
using Libreria.Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libreria
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Libro> librosDisp = ServLibro.VerLibrosDisp();

            Session["libros"] = librosDisp;

            repLibros.DataSource = librosDisp;
            repLibros.DataBind();
        }
    }
}