 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="GUI_Home" %>

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
                <asp:ImageButton ID="BttnImageLogoCentro" runat="server" ImageUrl ="~/IMG/centroWhite.png" Width="302" Height="94" OnClick="BttnImageLogoCentro_Click" />
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

        <asp:Panel ID="PanelSlideShow" runat="server" Height="319px" HorizontalAlign="Center">
            <div class="slidecontainer">
              <div id="divPreambulo" class ="slidecontainer">
                <asp:ImageButton ID="ImageBannerP" runat="server" ImageUrl="~/IMG/bannerP.jpg" Width="800"  OnClick="ImageBannerP_Click"/>
              </div>

              <div id="divCRFIC" class ="slidecontainer">
                <asp:ImageButton ID="ImageBannerCrfic" runat="server" ImageUrl="~/IMG/bannerCrfic.jpg" Width="800" OnClick="ImageBannerCrfic_Click"/>
              </div>

              <div  id="divFauno" class ="slidecontainer">
                <asp:ImageButton ID="ImageBannerF" runat="server" ImageUrl="~/IMG/bannerF.jpg" Width="800" OnClick="ImageBannerF_Click"/>
              </div>

             
            </div>
            <br />

            <div class="containerDots">
              <asp:ImageButton ID="BttnImageDot1" runat="server" ImageUrl ="~/IMG/dotGray.png" Width="10" Height="10" OnClick="BttnImageDot1_Click" /> 
              <asp:ImageButton ID="BttnImageDot2" runat="server" ImageUrl ="~/IMG/dotGray.png" Width="10" Height="10" OnClick="BttnImageDot2_Click" /> 
              <asp:ImageButton ID="BttnImageDot3" runat="server" ImageUrl ="~/IMG/dotGray.png" Width="10" Height="10" OnClick="BttnImageDot3_Click" />  
            </div>
        </asp:Panel>
        <div style="text-align:center">
            <asp:Label ID="LblMensaje" runat="server" Text="Visite el Centro de Cine" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="20pt"></asp:Label>
            <br /> 
            <br /> 
            <br /> 
            <br />
            <asp:Label ID="LblNoticias" runat="server" Text="Noticias Recientes" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="30pt"></asp:Label>
        </div>
        <br /> 
        <br /> 
        <br /> 
        <asp:Panel ID="PanelNoticiasRecientes" runat="server" Height="319px" HorizontalAlign="Center">
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 19%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnImageNoticiasOne" runat="server"  Width="266px" Height="200px" OnClick="BttnImageNoticiasOne_Click" />
                <asp:Label ID="LblNewTitleOne" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnImageNoticiasTwo" runat="server"  Width="266px" Height="200px" OnClick="BttnImageNoticiasTwo_Click" />
                <asp:Label ID="LblNewTitleTwo" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="BttnImageNoticiasThree" runat="server"  Width="266px" Height="200px" OnClick="BttnImageNoticiasThree_Click" />
                <asp:Label ID="LblNewTitleThree" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
        </asp:Panel>
        <div style="text-align:center">
             <asp:Button ID="BttnLeerMasNoticias" runat="server" Text="Leer más..." ForeColor="Black" Font-Names="Bebas Neue"  onClick="BttnLeerMasNoticias_Click" BackColor="White" Font-Size="15pt" BorderStyle="None" />
        </div>  
        <br />
        <br />
        <asp:Panel ID="PnlFreshEvents" runat="server" Height="319px" HorizontalAlign="Center">
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 19%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="bttnImgEventOne" runat="server"  Width="200px" Height="200px" OnClick="BttnImageNoticiasOne_Click" />
                <asp:Label ID="Label1" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="bttnImgEventTwo" runat="server"  Width="200px" Height="200px" OnClick="BttnImageNoticiasTwo_Click" />
                <asp:Label ID="Label2" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
            <div style ="float:left;width:266px; height: 250px; margin-top: 0px; margin-left: 0%; background-color: #FFDE2F; overflow: hidden;">
                <asp:ImageButton ID="bttnImgEventThree" runat="server"  Width="200px" Height="200px" OnClick="BttnImageNoticiasThree_Click" />
                <asp:Label ID="Label3" runat="server" Text="Label" Width="266px" Height="50px" ForeColor="Black" Font-Names="Bebas Neue" Font-Size="15pt"></asp:Label>
            </div>
        </asp:Panel>
        <div style="text-align:center">
             <asp:Button ID="BttnVerMasEventos" runat="server" Text="Ver más..." ForeColor="Black" Font-Names="Bebas Neue"  onClick="BttnVerMasEventos_Click" BackColor="White" Font-Size="15pt" BorderStyle="None" />
        </div> 
    </form>
    
</body>
</html>
