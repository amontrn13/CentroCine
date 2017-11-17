<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CRFIC.aspx.cs" Inherits="GUI_CRFIC" %>

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
                <asp:Label ID="LblTitlePage" runat="server" Text="crfic" ForeColor="White" Font-Names="Bebas Neue" Font-Size="70pt"></asp:Label>
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
         <asp:Panel ID="NewInfo" runat="server" Height="319px" HorizontalAlign="Center">
             <div style="text-align:center; margin-left:19%; width:800px; ">
                 <asp:Image ID="ImgNew" runat="server" width= "800px" ImageUrl="~/IMG/crficinfo.jpg"/>
            <br />
            <br />
            El CRFIC es un festival joven con ganas de ensancharse junto con una audiencia deseosa de desplegar un mapa abismal para peregrinar, con una mirada cotidiana y contemporánea, múltiples historias con sus personajes, realidades, ficciones, humor, nostalgia, crítica social y formas de hacer cine, tan distantes como sea posible de fórmulas comerciales, de clichés.

            Invitamos a los amantes del cine a que conserven estas imágenes no como aburridos souvenirs, sino como una insospechada y conmovedora visión transversal entre gente de todas partes del mundo, con sus olores, sonidos, alimentos y trajes, entre la gente y su ciudad inhóspita o cálida, entre la gente y la naturaleza que abriga o sobrecoge.
            <br />
            <br />
            <br />
            <br /> 
            </div>
                   
        </asp:Panel>
    </form>
</body>
</html>
