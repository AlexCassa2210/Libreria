using Libreria.Entidades;
using Libreria.Servicios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI.WebControls;

namespace Libreria.Servicios
{
    public class BaseDatos
    {

        public static string CNN = @"Data Source = DESKTOP-RJQ8U90\SQLEXPRESS;Initial Catalog=Libreria; Integrated Security=True";

        public static DataTable fillDTStoreProcedure(string procedure, List<SqlParameter> parametro)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(CNN))  //Creacion del objeto que se conecta
                {
                    conn.Open();                                    //Comando que la conexión SQL
                    SqlCommand cmd = new SqlCommand();              //Creando el objeto comando SQL
                    cmd.CommandText = procedure;                    //Le digo al cdo que es un Stored Procedure
                    cmd.CommandType = CommandType.StoredProcedure;  //Le digo al comaomanndo que es de tipo Stored Procedure
                    cmd.Connection = conn;                          //LE digo al comando que su conexión es mi variable "conn"

                    if (parametro != null)               //Si el parametro que envio es null SOLAMENTE PARA OBTENER UN ELEMENTO
                    {
                        foreach (SqlParameter item in parametro)
                        {
                            cmd.Parameters.Add(item);
                        }
                    }

                    cmd.ExecuteNonQuery();                          //Le digo al comando que se ejecute en el SQL
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);//Adaptador que va a ir a entender que ejecutó el comando
                    DataTable dt = new DataTable();                 //Matriz donde voy a guardar los datos            
                    adapter.Fill(dt);                               //El adaptador llena la matriz con los datos que me devolvió el comando

                    return dt;                                      //Retorne los datos que contiene la matriz
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }



        public static void executeStoreProcedure(string procedure, List<SqlParameter> param)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(CNN)) //Creacion del objeto que se conecta a SQL
                {
                    conn.Open(); //Comando que abre la conexión a SQL
                    SqlCommand cmd = new SqlCommand(); //Creando el objeto comando SQL
                    cmd.CommandText = procedure; // Le digo al comando que es un Stored Procedure
                    cmd.CommandType = CommandType.StoredProcedure; // Le digo al comando que es de tipo Stored Procedure
                    cmd.Connection = conn; // Le digo al comando que su conexion es mi variable conn

                    if (param != null)
                    {
                        foreach (SqlParameter item in param)
                        {
                            cmd.Parameters.Add(item);
                        }
                    }

                    cmd.ExecuteNonQuery(); // Le digo al comando que se ejecute en el SQL
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.WriteLine(ex.StackTrace);
                throw ex; //Devuelve un error
            }
        }


        public static List<Libro> executeVerLibros()
        {
            DataTable dt = fillDTStoreProcedure("spVerLibros", null);

            List<Libro> LibrosDisponibles = new List<Libro>();

            foreach (DataRow row in dt.Rows)
            {
                Libro libro = new Libro
                {
                    IdLibro = row["IdLibro"].ToString(),
                    ISBN = row["ISBN"].ToString(),
                    Titulo = row["Titulo"].ToString(),
                    Autor = row["Autor"].ToString(),
                    Fecha_Publicacion = row["Fecha_Publicacion"].ToString(),
                    Precio = Convert.ToDouble(row["Precio"]),
                    Foto = row["Foto"].ToString()
                };

                LibrosDisponibles.Add(libro);

            }

            return LibrosDisponibles;
        }


        public static void executespRegistrar(string nombre, string correo, string contrasena)
        {
            List<SqlParameter> lista = new List<SqlParameter>();

            lista.Add(new SqlParameter("@Nombre", nombre));
            lista.Add(new SqlParameter("@Email", correo));
            lista.Add(new SqlParameter("@Contraseña", contrasena));

            executeStoreProcedure("spRegistrar", lista);
        }

        public String executespLoguear(string correo, string contrasena)
        {
            List<SqlParameter> lista = new List<SqlParameter>();

            lista.Add(new SqlParameter("@email", correo));
            lista.Add(new SqlParameter("@password", contrasena));
            DataTable dt = fillDTStoreProcedure("spLoguear", lista);

            string Codigo = "";
            if (dt.Rows.Count > 0)
            {
                Codigo = (dt.Rows[0][0].ToString());
            }

            return Codigo;
        }


        public static List<Libro> executeVerOfertas()
        {
            DataTable dt = fillDTStoreProcedure("spVerOfertas", null);

            List<Libro> OfertasDisponibles = new List<Libro>();

            foreach (DataRow row in dt.Rows)
            {
                Libro Oferta = new Libro
                {
                    //IdLibro = row["IdLibro"].ToString(),
                    ISBN = row["ISBN"].ToString(),
                    Titulo = row["Titulo"].ToString(),
                    Autor = row["Autor"].ToString(),
                    Fecha_Publicacion = row["Fecha_Publicacion"].ToString(),
                    Precio = Convert.ToDouble(row["Precio"]),
                    Foto = row["Foto"].ToString(),
                    IdOferta = row["IdOferta"].ToString()
                };

                OfertasDisponibles.Add(Oferta);

            }

            return OfertasDisponibles;
        }

        public static void executespContactar(string nombre, string correo, string mensaje)
        {
            List<SqlParameter> lista = new List<SqlParameter>();
            lista.Add(new SqlParameter("@Nombre", nombre));
            lista.Add(new SqlParameter("@Correo", correo));
            lista.Add(new SqlParameter("@Mensaje", mensaje));

            executeStoreProcedure("[spContactar]", lista);
        }

        public static List<Libro> executeTodosLibros()
        {
            DataTable dt = fillDTStoreProcedure("spVerTodosLibros", null);

            List<Libro> libros = new List<Libro>();

            foreach (DataRow row in dt.Rows)
            {
                Libro todoslibros = new Libro
                {
                    IdLibro = row["IdLibro"].ToString(),
                    ISBN = row["ISBN"].ToString(),
                    Titulo = row["Titulo"].ToString(),
                    Autor = row["Autor"].ToString(),
                    Fecha_Publicacion = row["Fecha_Publicacion"].ToString(),
                    Precio = Convert.ToDouble(row["Precio"]),
                    Foto = row["Foto"].ToString()
                };

                libros.Add(todoslibros);

            }

            return libros;
        }

        public static List<Libro> executespBuscar(string nombre)
        {
            List<SqlParameter> parametro = new List<SqlParameter>();
            parametro.Add(new SqlParameter("@nombre", nombre));
            DataTable dt = fillDTStoreProcedure("spBuscar", parametro);
            List<Libro> librosDisponibles = new List<Libro>();

            foreach (DataRow row in dt.Rows)
            {
                Libro libro = new Libro
                {
                    IdLibro = row["IdLibro"].ToString(),
                    ISBN = row["ISBN"].ToString(),
                    Titulo = row["Titulo"].ToString(),
                    Autor = row["Autor"].ToString(),
                    Precio = Convert.ToDouble(row["Precio"]),
                    Foto = row["Foto"].ToString(),
                    Descripcion = row["Descripcion"].ToString()

                };
                librosDisponibles.Add(libro);
            }
            return librosDisponibles;
        }  /* BUSCADOR DE LIBRO <No funciona> */


        public static List<Libro> executeUnLibro(string Id)
        {
            List<SqlParameter> parametro = new List<SqlParameter>();
            parametro.Add(new SqlParameter("@Idn", Id));
            DataTable dt = fillDTStoreProcedure("spObtenerUnLibro", parametro);
            List<Libro> librosDisponibles = new List<Libro>();

            foreach (DataRow row in dt.Rows)
            {
                Libro libro = new Libro
                {
                    IdLibro = row["IdLibro"].ToString(),
                    ISBN = row["ISBN"].ToString(),
                    Titulo = row["Titulo"].ToString(),
                    Autor = row["Autor"].ToString(),
                    Fecha_Publicacion = row["Fecha_Publicacion"].ToString(),
                    Precio = Convert.ToDouble(row["Precio"]),
                    Foto = row["Foto"].ToString(),
                    Descripcion = row["Descripcion"].ToString()

                };
                librosDisponibles.Add(libro);
            }
            return librosDisponibles;
        }

        public static void executespAgregar(int cantidad, int idUsuario, int idLibro)
        {
            List<SqlParameter> lista = new List<SqlParameter>();

            lista.Add(new SqlParameter("@Cantidad", cantidad));
            lista.Add(new SqlParameter("@IdUsuario", idUsuario));
            lista.Add(new SqlParameter("@IdLibro", idLibro));

            executeStoreProcedure("spAgregar", lista);
        }

        public static void executespGuardarCarrito(int idLibro, string correo)
        {
            List<SqlParameter> lista = new List<SqlParameter>();

            lista.Add(new SqlParameter("@IdLibro", idLibro));
            lista.Add(new SqlParameter("@Email_Usuario", correo));

            executeStoreProcedure("spGuardarCarrito", lista);
        }

        public static void executespGuardarCarritoDOS(string activo)
        {
            List<SqlParameter> lista = new List<SqlParameter>();

            lista.Add(new SqlParameter("@Activo", activo));


            executeStoreProcedure("spGuardarCarritoDOS", lista);
            //Va a pasar todos los del carrito a "C", independientemente del usuario
        }

        public static List<Libro> executeVerCarrito(string correo)
        {
            List<SqlParameter> parametro = new List<SqlParameter>();
            parametro.Add(new SqlParameter("@correo", correo));
            DataTable dt = fillDTStoreProcedure("spVerCarrito", parametro);
            List<Libro> librosDisponibles = new List<Libro>();

            foreach (DataRow row in dt.Rows)
            {
                Libro libro = new Libro
                {

                    Titulo = row["Titulo"].ToString(),
                    Autor = row["Autor"].ToString(),
                    Precio = Convert.ToDouble(row["Precio"]),
                    Foto = row["Foto"].ToString(),
                };
                librosDisponibles.Add(libro);
            }
            return librosDisponibles;
        }

        public static void executespFacturar(int monto, int cantidad, string correo)
        {
            List<SqlParameter> lista = new List<SqlParameter>();

            lista.Add(new SqlParameter("@Monto", monto));
            lista.Add(new SqlParameter("@Cantidad", cantidad));
            lista.Add(new SqlParameter("@CorreoUsuario", correo));

            executeStoreProcedure("spFacturar", lista);
        }

        public static void executespPerfil(string correo, string pais, string provincia, 
            string direccion, int codigoPostal, int tarjeta, string fecha, int CodSeguridad)
        {
            List<SqlParameter> lista = new List<SqlParameter>();
            lista.Add(new SqlParameter("@Correo", correo));
            lista.Add(new SqlParameter("@Pais", pais));
            lista.Add(new SqlParameter("@Provincia", provincia));
            lista.Add(new SqlParameter("@Direccion", direccion));
            lista.Add(new SqlParameter("@CodPostal", codigoPostal));
            lista.Add(new SqlParameter("@NumTarjeta", tarjeta));
            lista.Add(new SqlParameter("@Fecha", fecha));
            lista.Add(new SqlParameter("@CodSeguridad", CodSeguridad));

            executeStoreProcedure("spPerfil", lista);
        }

        public static void executespBorrarCarrito(string correo, int id)
        {
            List<SqlParameter> lista = new List<SqlParameter>();

            lista.Add(new SqlParameter("@Correo", correo));
            lista.Add(new SqlParameter("@Id", id));


            executeStoreProcedure("spBorrarCarrito", lista);
            //Va a pasar todos los del carrito a "C", independientemente del usuario
        }

    } /*Base Datos*/

}