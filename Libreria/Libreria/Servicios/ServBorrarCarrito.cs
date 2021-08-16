using Libreria.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria.Servicios
{
    public class ServBorrarCarrito
    {
        public static void BorrarCarrito(string correo, int id)
        {
                 BaseDatos.executespBorrarCarrito(correo, id);

        }
    }
}