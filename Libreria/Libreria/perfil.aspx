<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="Libreria.perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
    <link href="https://fonts.googleapis.com/css2?family=Lexend+Zetta&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <link href="Css/stylePerfil.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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

    <!--CONTENIDO PRINCIPAL-->

          <h2>Datos</h2>
        <div id="message"></div>
  <section class="programa">
    <div class="contenedor-imagen">
                            <img src="../Imagenes/Fondo/perfil.jpg"alt="...">
    </div> <!-- contenedor img -->

    <div class="contenido-programa">
      <div class="contenedor">
        <div class="programa-evento">

          <div class="detalle-evento">
            <i class="fa fa-globe fa-fw"></i><asp:Label ID="lblPais" runat="server" >Pais</asp:Label>
            <asp:TextBox ID="txtPais" type="Text" runat="server" placeholder="Pais"></asp:TextBox>

            <i class="fa fa-paper-plane fa-fw"></i><asp:Label ID="lblCodPost" runat="server" >Codigo Postal</asp:Label>
            <asp:TextBox ID="txtCodPost" type="Text" runat="server" placeholder="Codigo Postal"></asp:TextBox>
          </div>

          <div class="info-curso ocultar clearfix">
            <div class="detalle-evento">
            <i class="fa fa-map fa-fw"></i><asp:Label ID="Label1" runat="server" >Provincia</asp:Label>
            <asp:TextBox ID="txtProvincia" type="Text" runat="server" placeholder="Provincia"></asp:TextBox>

            <i class="fa fa-compass fa-fw"></i><asp:Label ID="Label2" runat="server" >Direccion</asp:Label>
            <asp:TextBox ID="txtDireccion" type="Text" runat="server" placeholder="Direccion"></asp:TextBox>
            </div>

            <div class="detalle-evento">


            <i class="fa fa-credit-card fa-fw"></i><asp:Label ID="Label4" runat="server" >Numero Tarjeta</asp:Label>
            <asp:TextBox ID="txtTarjeta" type="Text" runat="server" placeholder="Numero Tarjeta"></asp:TextBox>

            <i class="fa fa-calendar fa-fw"></i><asp:Label ID="Label5" runat="server" >Fecha Exp</asp:Label>
            <asp:TextBox ID="txtFechaExp" type="Text" runat="server" placeholder="Fecha Exp"></asp:TextBox>
            </div>

              <div class="detalle-evento">
            <i class="fa fa-lock fa-fw"></i><asp:Label ID="Label6" runat="server" >Codigo Seguridad</asp:Label>
            <asp:TextBox ID="txtCodSeg" type="Text" runat="server" placeholder="Codigo Seguridad"></asp:TextBox>

              </div>

             <asp:Button class="boton float-right" value="click alert" runat="server" Text="Modificar" OnClick="btnPerfil_Click" />


          </div> <!-- Talleres -->
            <div class="info-curso clearfix">
              <asp:Label Text="Datos modificados" class="modificar" id="lblPerfil" Visible="false" runat="server" />

            </div>

        </div><!--   programa evento -->
      </div> <!-- Contenedor -->
    </div> <!-- Contenido programa -->

  </section> <!-- programa -->




    <%--FIN CONTENIDO PRINCIPAL--%>

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
