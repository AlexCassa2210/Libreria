<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LibroUno.aspx.cs" Inherits="Libreria.LibroUno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://fonts.googleapis.com/css2?family=Lexend+Zetta&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <script src="js/Main.js"></script>

        <link href="Css/styleLibro.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
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

        <div class="container mt-3">
            <div class="row" >
                <asp:Repeater ID="replibros" runat="server">
                        <ItemTemplate>
                            <div class="card" style="width: 17rem;">
                                <a href="idLibro=<%# Eval("IdLibro")%>" ID="idLibros" visible="false"></a>
                                <img src="<%# Eval("Foto")%>" class="card-img-top imagen" alt="...">
                                    <div class="card-body">
                                        <%--<h5 class="card-title">Ti<%# Eval("Titulo")%></h5>--%>
                                        <asp:Button class="boton" ID="btnAgregar" runat="server" Text="Agregar" type="button" onclick="btnAgregar_Click" />
                            <asp:Label  runat="server" ID="Lblagregador" Visible="false" style="color:#00ff21;"/>
                                    </div>
                            </div> <!-- div card -->


                        <asp:Panel ID="Panel1" runat="server" Style="margin-right: 100px" class="panel2">
                        <div class="card" style="width: 18rem;">
                            <div class="card-header bg-dark text-white">
                                Información
                            </div>
                            <div class="card-body">
                                <div class="form-group border">
                                <i class="fa fa-user fa-fw"></i><asp:Label class="labell" Text="Autor:" runat="server" style="padding: 10px;"/>
                                <p class="card-text "><%# Eval("Autor")%></p>
                                    </div>
                                <div class="form-group border">
                                 <i class="fa fa-money fa-fw"></i><asp:Label class="labell" Text="Precio:" runat="server" style="padding: 10px;"/>
                                <p class="card-text">$<%# Eval("Precio")%></p>
                                     </div>
                                    <div class="form-group border">
                                <i class="fa fa-book fa-fw"></i><asp:Label class="labell" Text="Descripción:" runat="server" style="padding: 10px;"/>
                                <p class="card-text desc"><%# Eval("Descripcion")%></p>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                                                    </ItemTemplate>
                    </asp:Repeater>
            </div> 
        </div>

                   






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
