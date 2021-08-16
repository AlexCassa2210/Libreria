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
    public partial class carrito : System.Web.UI.Page
    {
            int contador = 0;
        public void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Session["activo"] = "0";
            }
            string correo = Session["email"].ToString();
            List<Libro> libroAgregado = ServCarrito.VerCarrito(correo);

            Session["libroAgregado"] = libroAgregado;

            repCarrito.DataSource = libroAgregado;
            repCarrito.DataBind();

            foreach (var Libro in libroAgregado)
            {
                contador = contador + 1;

            }
            Session["contador"] = contador;
            lblCantLibros.Text = Session["contador"].ToString();
        }

        int Resultado = 0;
        protected string MetodoCorreo(Object obj)
        {
  
            int precio = Convert.ToInt32(obj);

            Resultado    = Resultado + precio;
            Session["PrecioTotal"] = Resultado;

            lblCostoLibros.Text = Session["PrecioTotal"].ToString();
            return  "";
        }


        protected void btnPagar_Click(object sender, EventArgs e)
        {
            string activo = "C";
            BaseDatos mycnn = new BaseDatos();


            int monto = Convert.ToInt32(Session["PrecioTotal"]);
            int cantidad = Convert.ToInt32(Session["contador"]);
            string correo = Session["Email"].ToString();

            BaseDatos.executespFacturar(monto, cantidad,  correo);
            BaseDatos.executespGuardarCarritoDOS(activo);

            //Response.Redirect("index.aspx", true);
            lblCompra.Visible = true;
            lblCompra.Text = "Compra realizada con éxito";
        }


        protected string MetodoId(Object obj)
        {

            int Id = Convert.ToInt32(obj);

            Session["IdLibro"] = Id;

            return "";
        }
        //protected void btnBorrar_Click(object sender, EventArgs e)
        //{

        //    BaseDatos mycnn = new BaseDatos();

        //    string correo = Session["Email"].ToString();
        //    int id = Convert.ToInt32(Session["IdLibro"]);

        //    BaseDatos.executespBorrarCarrito(correo, id);
        ////No funciona por el Postback
        //}
    }
}