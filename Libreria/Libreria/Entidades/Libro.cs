using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria.Entidades
{
    public class Libro
    {

        public String IdLibro { get; set; }

        public String ISBN { get; set; }

        public String Titulo { get; set; }

        public String Autor { get; set; }

        public String Fecha_Publicacion { get; set; }

        public double Precio { get; set; }

        public String Foto { get; set; }

        public String IdOferta { get; set; }

        public String Descripcion { get; set; }

        public String CorreoUsuario { get; set; }
    }
}