<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Libreria.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://fonts.googleapis.com/css2?family=Lexend+Zetta&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <script src="js/Main.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <link href="Css/Styles.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <header class="site-header">
            <div class="hero">

                <div class="contenido-header">
                    <nav class="redes-sociales">
                        <a href="#"><i class="fa fa-facebook fa-fw"></i></a>
                        <a href="#"><i class="fa fa-twitter fa-fw"></i></a>
                        <a href="#"><i class="fa fa-pinterest fa-fw"></i></a>
                        <a href="#"><i class="fa fa-youtube fa-fw"></i></a>
                        <a href="#"><i class="fa fa-instagram fa-fw"></i></a>
                    </nav>

                    <div class="informacion-evento">
                        <h1 class="nombre-sitio">Libreria Internacional</h1>
                    </div> <!-- Info Evento -->
                </div>
            </div> <%--Hero--%>
        </header>
          <div class="barra">
            <div class="clearfix contenedor-nav">
                <div class="logo navegacion-principal">
                    
                  <a href="index.aspx" class="first"> 
                    <img src="../Imagenes/Fondo/Liberia.png"alt="..."></a>
                </div>


                <nav class="navegacion-principal clearfix">
                    <a href="buscar.aspx">Buscar</a>
                  <a href="biblioteca.aspx">Libros</a>
                  <a href="oferta.aspx">Ofertas</a>
                  <a href="carrito.aspx">Carrito</a>
                    <a href="perfil.aspx">Perfil</a>
                  <a href="contacto.aspx">Contáctenos</a>
                </nav>

            </div> <!-- Contenedor -->
        </div> <!-- Barras -->


        



        <div>
            <h2 class="tittle">LIBROS DESTACADOS</h2>
            <div class="contenedor">
                <div class="row contenedor-grid">
                    <asp:Repeater ID="repLibros" runat="server">
                        <ItemTemplate>
                            <div class="card" style="width: 17rem;">
                                <img src="<%# Eval("Foto")%>" class="card-img-top imagen" alt="...">
                                    <div class="card-body">
                                        <%--<h5 class="card-title">Ti<%# Eval("Titulo")%></h5>--%>
                                        <p class="card-text"><%# Eval("Autor")%></p>
                                        <a href="LibroUno.aspx?codigoLibro=<%# Eval("IdLibro")%>" class="boton btn" >Ver Libro</a>
                                        <a href="#"   id="favorito"><i class="fa fa-bookmark fa-fw"></i></a>
                                    </div>
                            </div> <!-- div card -->
                        </ItemTemplate>
                    </asp:Repeater>
                </div><!-- div row -->

                <%--<a href="biblioteca.aspx" class="boton btn" >Ver Todos</a>--%>

            </div><!-- div container -->
        </div>



        <div class="newsletter parallax">
            <div class="contenido contenedor">
                <p>Ofertas Diarias</p>
                    <div class="cuenta-regresiva">
                      <ul class="clearfix">
                        <li><p id="dias" class="numero"></p>días</li>
                        <li><p id="horas" class="numero"></p>horas</li>
                        <li><p id="minutos" class="numero"></p>minutos</li>
                        <li><p id="segundos" class="numero"></p>segundos</li>
                      </ul>
                    </div>
                <a href="oferta.aspx" class="button transparente">Ofertas</a>
            </div>  <!-- Contenido -->
        </div>  <!-- newsletter -->


        <section class="invitados contenedor seccion">
            <h2>Escritores Reconocidos</h2>
            <ul class="lista-invitado clearfix">
              <li>
                <div class="invitado">
                  <img src="../Imagenes/Escritores/willian1.jpg"alt="...">
                  <p>Willian Shakespeare    </p>
                </div>
              </li>

              <li>
                <div class="invitado">
                  <img src="../Imagenes/Escritores/gabriel.jpg"alt="...">
                  <p>Gabriel García Marquez</p>
                </div>
              </li>

              <li>
                <div class="invitado inv">
                  <img src="../Imagenes/Escritores/paulo.jpg"alt="...">
                  <p>Paulo Coelho</p>
                </div>
              </li>
            </ul>
        </section> <%--Reconocidos--%>



        <footer class="site-footer">
            <div class="contenedor clearfix">
                <div class="footer-informacion">
                    <h3>Sobre <span>Libreria Internacional</span></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac diam a sapien pellentesque laoreet. Integer tincidunt nibh vitae neque mollis tincidunt.
                        Aenean et auctor arcu, a fringilla lorem. Integer nunc neque, posuere id urna non, congue ultrices lectus. Duis bibendum pellentesque arcu, id posuere 
                        nulla laoreet non. Donec dictum ornare dui id tempor. Nunc eleifend blandit velit vitae tincidunt. Maecenas fringilla ac nisl euismod tempus.Aenean et 
                        auctor arcu, a fringilla lorem. Integer nunc neque, posuere id urna non, congue ultrices lectus. Duis bibendum pellentesque arcu, id posuere nulla laoreet non.
                    </p>
                </div>

                <div class="ultimos-noticias">
                    <h3>Últimas <span>noticias</span></h3>
                    <ul>
                        <li>Donec elementum nibh ac urna feugiat, sed rhoncus dolor consectetur. Cras id dapibus leo.</li>
                        <li>Donec elementum nibh ac urna feugiat, sed rhoncus dolor consectetur. Cras id dapibus leo.</li>
                        <li>Donec elementum nibh ac urna feugiat, sed rhoncus dolor consectetur. Cras id dapibus leo.</li>
                    </ul>
                </div>
                <div class="menu">
                    <h3>Redes <span>sociales</span></h3>
                        <nav class="redes-sociales">
                            <a href="#"><i class="fa fa-facebook fa-fw"></i></a>
                            <a href="#"><i class="fa fa-twitter fa-fw"></i></a>
                            <a href="#"><i class="fa fa-pinterest fa-fw"></i></a>
                            <a href="#"><i class="fa fa-youtube fa-fw"></i></a>
                            <a href="#"><i class="fa fa-instagram fa-fw"></i></a>
                    </nav>
                </div>
            </div>
            <p class="copyright">
                Todos los derechos Reservador LIBRERIA INTERNACIONAL 2020.
            </p>
        </footer>


    </form>
</body>
</html>
