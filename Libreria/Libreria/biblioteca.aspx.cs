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
    public partial class biblioteca1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["activo"] = "0";
            }
            List<Libro> todosLibrosDisp = ServTodosLibros.verTodosLibros();

            Session["todosLibros"] = todosLibrosDisp;

            repBiblioteca.DataSource = todosLibrosDisp;
            repBiblioteca.DataBind();

        }



        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}