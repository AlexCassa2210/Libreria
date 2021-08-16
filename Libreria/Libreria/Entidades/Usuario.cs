using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Libreria.Entidades
{
    public class Usuario
    {
        public String Nombre { get; set; }

        public String Email { get; set; }

        public String Contraseña { get; set; }

        public Usuario(string nombre, string email, string contraseña)
        {
            Nombre = nombre;
            Email = email;
            Contraseña = contraseña;
        }
    }
}