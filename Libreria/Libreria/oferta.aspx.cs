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
    public partial class oferta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {

                List<Libro> OfertaDisp = ServOferta.VerLibrosOfert();

                Session["Ofertas"] = OfertaDisp;

                repOferta.DataSource = OfertaDisp;
                repOferta.DataBind();
            }
        }
    }
}