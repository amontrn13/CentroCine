<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FuncionView.aspx.cs" Inherits="GUI_FuncionView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Centro de Cine Costa Rica</title>
    <link rel="stylesheet" type="text/css" href="~/CSS/StyleSheet.css" />

</head>
<body>
    
    <form id="form1" runat="server">
        <asp:Panel ID="PanelNavigator" runat="server" Height="319px" HorizontalAlign="Center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/IMG/centro.jpg" />
            <div class ="containerLogo">
                <asp:Label ID="LblTitlePage" runat="server" Text="Noticias" ForeColor="White" Font-Names="Bebas Neue" Font-Size="70pt"></asp:Label>
            </div>
            <div class="containerButtons">
                <asp:ImageButton ID="BttnImageYT" runat="server" ImageUrl ="~/IMG/yt.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageYT_Click" />
                <asp:ImageButton ID="BttnImageFB" runat="server" ImageUrl ="~/IMG/face.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageFB_Click" />
                <asp:ImageButton ID="BttnImageIG" runat="server" ImageUrl ="~/IMG/instagram.png" Width="45" Height="40" OnClientClick = "target='blank'" OnClick="BttnImageIG_Click"/>
                <asp:ImageButton ID="BttnImageTwitter" runat="server" ImageUrl ="~/IMG/twitter.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageTwitter_Click"/>
            </div>
            <div class="container">
                <asp:DropDownList ID="DropDownListMenu" runat="server" BackColor="Transparent" Font-Names="Bebas Neue" Font-Size="20pt" ForeColor="White" AutoPostBack="True" OnSelectedIndexChanged="DropDownListMenu_SelectedIndexChanged">
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
            <asp:Label ID="lblTitle" runat="server" Text="Título" Width="800px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="30pt"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblDate" runat="server" Text="Fecha" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            <br />
            <br />
            <asp:Image ID="ImgNew" runat="server" Width="600px"/>
            <br />
            <br />
            <asp:Label ID="lblText" runat="server"  Text="Text" Width="600px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            <br />
            <br />
            <br />
            <br />        
        </asp:Panel>
    </form>
</body>
</html>
