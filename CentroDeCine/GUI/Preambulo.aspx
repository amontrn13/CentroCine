<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Preambulo.aspx.cs" Inherits="GUI_Preambulo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Centro de Cine Costa Rica</title>
    <script src="~/javascript/Home.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="~/CSS/StyleSheet.css" />

</head>
<body>
    
    <form id="form1" runat="server">
        <asp:Panel ID="PanelNavigator" runat="server" Height="319px" HorizontalAlign="Center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/IMG/centro.jpg" OnDataBinding="DropDownListMenu_SelectedIndexChanged" />
            <div class ="containerLogo">
                <asp:ImageButton ID="BttnImageLogoCentro" runat="server" ImageUrl ="~/IMG/preambuloLogo.png" Width="302" Height="94" OnClick="BttnImageLogoCentro_Click" />
            </div>
            <div class="containerButtons">
                <asp:ImageButton ID="BttnImageYT" runat="server" ImageUrl ="~/IMG/yt.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageYT_Click" />
                <asp:ImageButton ID="BttnImageFB" runat="server" ImageUrl ="~/IMG/face.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageFB_Click" />
                <asp:ImageButton ID="BttnImageIG" runat="server" ImageUrl ="~/IMG/instagram.png" Width="45" Height="40" OnClientClick = "target='blank'" OnClick="BttnImageIG_Click"/>
                <asp:ImageButton ID="BttnImageTwitter" runat="server" ImageUrl ="~/IMG/twitter.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageTwitter_Click"/>
            </div>
            <div class="container">
                <asp:DropDownList ID="DropDownListMenu" runat="server" BackColor="#47493C" Font-Names="Bebas Neue" Font-Size="20pt" ForeColor="White" AutoPostBack="True" OnSelectedIndexChanged="DropDownListMenu_SelectedIndexChanged">
                    <asp:ListItem>Menú</asp:ListItem>
                    <asp:ListItem>Preámbulo</asp:ListItem>
                    <asp:ListItem>Fauno</asp:ListItem>
                    <asp:ListItem>CRFIC</asp:ListItem>
                    <asp:ListItem>Calendario</asp:ListItem>
                    <asp:ListItem>About Us</asp:ListItem>
                </asp:DropDownList>
            </div>
        </asp:Panel>

        <div style="text-align:center">
            <asp:Label ID="LblMensaje" runat="server" Text="Funciones de la semana    Horarios M-D: 4:PM - 7:PM" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="20pt"></asp:Label>
            <br /> 
        </div>
        <br /> 
        <br /> 
        <br /> 
        <asp:Panel ID="PanelFuncionesSemana" runat="server" Height="550px" HorizontalAlign="Center">
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 19%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnMiercoles" ImageUrl="~/IMG/Preambulo/citaciegas.jpg" runat="server"  Width="266px" Height="200px" OnClick="BttnMiercoles_Click" />
                <asp:Label ID="LblMiercoles" runat="server" Text="Miércoles de cita a ciegas" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnJueves" ImageUrl="~/IMG/Preambulo/duraznoJueves.jpg" runat="server"  Width="266px" Height="200px" OnClick="BttnJueves_Click" />
                <asp:Label ID="LblJueves" runat="server" Text="Jueves" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnViernes" ImageUrl="~/IMG/Preambulo/gorgojoViernes.jpg" runat="server"  Width="266px" Height="200px" OnClick="BttnViernes_Click" />
                <asp:Label ID="LblViernes" runat="server" Text="Viernes" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:400px; height: 250px; margin-top: 0px; margin-left: 19%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnSabado" ImageUrl="~/IMG/Preambulo/zonasurSabado.jpg" runat="server"  Width="400px" Height="200px" OnClick="BttnSabado_Click" />
                <asp:Label ID="LblSabado" runat="server" Text="Sábado" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:400px; height: 250px; margin-top: 0px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnDomingo" ImageUrl="~/IMG/Preambulo/CortosDomingo.jpg" runat="server"  Width="400px" Height="200px" OnClick="BttnDomingo_Click" />
                <asp:Label ID="LblDomingo" runat="server" Text="Domingo" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
                <br />
                <br />
            </div>
        </asp:Panel>  
        <div style="text-align:center">
            <asp:Label ID="LblNoticias" runat="server" Text="Noticias Recientes" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="30pt"></asp:Label>
        </div>
        <asp:Panel ID="PnlFreshNews" runat="server" Height="300px" HorizontalAlign="Center">
            
            <div style ="float:left;width:266px; height: 250px; margin-top: 30px; margin-left: 19%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="bttnImgNewOne" runat="server"  Width="200px" Height="200px" OnClick="BttnImageNoticiasOne_Click" />
                <asp:Label ID="Label1" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 30px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="bttnImgNewTwo" runat="server"  Width="200px" Height="200px" OnClick="BttnImageNoticiasTwo_Click" />
                <asp:Label ID="Label2" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 30px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="bttnImgNewThree" runat="server"  Width="200px" Height="210px" OnClick="BttnImageNoticiasThree_Click" />
                <asp:Label ID="Label3" runat="server" Text="Label" Width="266px" Height="40px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
        </asp:Panel>
        <br />
        <div style="text-align:center; margin-left:19%; width:800px; ">
            <asp:Button ID="Button1" runat="server" Text="Leer más.." ForeColor="Black" Font-Names="Bebas Neue"  onClick="BttnLeerMas_Click" BackColor="White" Font-Size="15pt" BorderStyle="None"/>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="400px" HorizontalAlign="Center">
            <div style="text-align:center; margin-left:19%; width:800px; ">
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Secciones Preámbulo" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="25pt"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Orígenes" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="25pt"></asp:Label>
                <br />
                filmes que giran sobre una temática específica, van desde clásicos hasta cine contemporáneo, con lo que se establece el diálogo entre distintos directores, cinematografías y épocas. Al inicio la sección se llamó "Retrospectiva" y estaba enfocada en la obra de un solo director, sin embargo, se decidió ampliar la oferta.
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Cine y...." Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="25pt"></asp:Label>
                 <br />
                una sección bastante lúdica en la que se establecen conexiones entre el cine con distintas áreas, otras artes o aspectos de la cultura popular. Acá los espectadores podrán disfrutar de filmes muy variados, pero que están unidos por una temática en común.
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Territorios" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="25pt"></asp:Label>
                <br />
                Películas recientes de un país o región específica, que permiten apreciar al cine de ese territorio y las tendencias, estilos y géneros que lo caracterizan.
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Centroamérica y el Caribe" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="25pt"></asp:Label>
                <br />
                <br />
                Filmes de la región con los que el público podrá comparar y entender mejor la producción costarricense en el contexto en el que se realizan.
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Panorama" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="25pt"></asp:Label>
                <br />
                Producciones contemporáneas internacionales con un recorrido por festivales, pero que no llegaron a exhibirse en el país. También se presentan filmes que forman parte de un festival internacional establecido y que se aprovecha para traer una muestra al país. Al inicio la sección se llamó "De Festivales".

             </div> 
         </asp:Panel>
        
    </form>
    
</body>
</html>
