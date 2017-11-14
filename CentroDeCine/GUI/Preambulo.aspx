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
            <asp:Image ID="Image1" runat="server" ImageUrl="~/IMG/centro.jpg" />
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
                <asp:DropDownList ID="DropDownListMenu" runat="server" BackColor="#47493C" Font-Names="Bebas Neue" Font-Size="20pt" ForeColor="White">
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
                <asp:ImageButton ID="BttnMiercoles" runat="server"  Width="266px" Height="200px" OnClick="BttnMiercoles_Click" />
                <asp:Label ID="LblMiercoles" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnJueves" runat="server"  Width="266px" Height="200px" OnClick="BttnJueves_Click" />
                <asp:Label ID="LblJueves" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnViernes" runat="server"  Width="266px" Height="200px" OnClick="BttnViernes_Click" />
                <asp:Label ID="LblViernes" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:400px; height: 250px; margin-top: 0px; margin-left: 19%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnSabado" runat="server"  Width="266px" Height="200px" OnClick="BttnSabado_Click" />
                <asp:Label ID="LblSabado" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:400px; height: 250px; margin-top: 0px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnDomingo" runat="server"  Width="266px" Height="200px" OnClick="BttnDomingo_Click" />
                <asp:Label ID="LblDomingo" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
                <br />
                <br />
            </div>
        </asp:Panel>  
         <div style="text-align:center">
            <asp:Label ID="LblNoticias" runat="server" Text="Noticias Recientes" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="30pt"></asp:Label>
        </div>

        <asp:Panel ID="PnlFreshNews" runat="server" Height="400px" HorizontalAlign="Center">
            <div style ="float:left;width:266px; height: 250px; margin-top: 30px; margin-left: 19%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="bttnImgNewOne" runat="server"  Width="200px" Height="200px" OnClick="BttnImageNoticiasOne_Click" />
                <asp:Label ID="Label1" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 30px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="bttnImgNewTwo" runat="server"  Width="200px" Height="200px" OnClick="BttnImageNoticiasTwo_Click" />
                <asp:Label ID="Label2" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 30px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="bttnImgNewThree" runat="server"  Width="200px" Height="200px" OnClick="BttnImageNoticiasThree_Click" />
                <asp:Label ID="Label3" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
        </asp:Panel>
        <div style="text-align:center">
            <asp:Button ID="Button1" runat="server" Text="Leer más.." ForeColor="Black" Font-Names="Bebas Neue"  onClick="BttnLeerMas_Click" BackColor="White" Font-Size="15pt" BorderStyle="None"/>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Secciones Preámbulo" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="25pt"></asp:Label>
        </div> 
    </form>
    
</body>
</html>
