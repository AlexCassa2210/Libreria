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
    public partial class LibroUno : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string codigoLibro = Request.QueryString["codigoLibro"];
                List<Libro> librosAgregar = ServLibro.ObtenerLibro(codigoLibro);

                foreach (Libro libro in librosAgregar)
                {
                    libro.CorreoUsuario = Session["Email"].ToString();
                    int id = Convert.ToInt32(libro.IdLibro);
                    Session["idlibro"] = id;
                }

                

                replibros.DataSource = librosAgregar;
                replibros.DataBind();
            }
        }

        public void btnAgregar_Click(object sender, EventArgs e)
        {
            //string codigoLibro = Convert.ToInt32(["codigoLibro"]);

            //BaseDatos.executespGuardarCarrito(idLibro, correo);
            string correo = Session["Email"].ToString();
            int id = Convert.ToInt32(Session["idlibro"]);

            BaseDatos mycnn = new BaseDatos();

            BaseDatos.executespGuardarCarrito(id, correo);

            Response.Redirect("biblioteca.aspx", true);
        }

    }
}