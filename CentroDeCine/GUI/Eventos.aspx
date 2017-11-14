<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Eventos.aspx.cs" Inherits="GUI_Eventos" %>

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
                <asp:Label ID="LblTitlePage" runat="server" Text="Eventos" ForeColor="White" Font-Names="Bebas Neue" Font-Size="70pt"></asp:Label>
            </div>
            <div class="containerButtons">
                <asp:ImageButton ID="BttnImageYT" runat="server" ImageUrl ="~/IMG/yt.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageYT_Click" />
                <asp:ImageButton ID="BttnImageFB" runat="server" ImageUrl ="~/IMG/face.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageFB_Click" />
                <asp:ImageButton ID="BttnImageIG" runat="server" ImageUrl ="~/IMG/instagram.png" Width="45" Height="40" OnClientClick = "target='blank'" OnClick="BttnImageIG_Click"/>
                <asp:ImageButton ID="BttnImageTwitter" runat="server" ImageUrl ="~/IMG/twitter.png" Width="35" Height="35" OnClientClick = "target='blank'" OnClick="BttnImageTwitter_Click"/>
            </div>
            <div class="container">
                <asp:DropDownList ID="DropDownListMenu" runat="server" BackColor="Transparent" Font-Names="Bebas Neue" Font-Size="20pt" ForeColor="White">
                    <asp:ListItem>Menú</asp:ListItem>
                    <asp:ListItem>Preámbulo</asp:ListItem>
                    <asp:ListItem>Fauno</asp:ListItem>
                    <asp:ListItem>CRFIC</asp:ListItem>
                    <asp:ListItem>Calendario</asp:ListItem>
                    <asp:ListItem>About Us</asp:ListItem>
                </asp:DropDownList>
            </div>
        </asp:Panel> 

        <div style="margin-left:19.5%; text-align:center;">
            <asp:GridView  ID="grdData" runat="server" Font-Names="Bebas Neue" Font-Size="20pt" ForeColor="White"
                AutoGenerateColumns="False" CellPadding="4" PageSize="5"
                GridLines="None" Width="800" AllowPaging="True"
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged"       
                OnPageIndexChanging="grdData_PageIndexChanging">
                <alternatingrowstyle BackColor="White" ForeColor="#261B29"></alternatingrowstyle>
                <columns>
                    <asp:BoundField DataField="Seccion" HeaderText="Sección" />
                    <asp:TemplateField HeaderText="Título">
                        <ItemTemplate>
                            <asp:Label ID="lblNew" runat="server" 
                              Text='<%# Eval("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField Text="Ver" CommandName="Select" />
               </columns>
                    
                <editrowstyle BackColor="#FFDE2F"></editrowstyle>
                <footerstyle BackColor="#261B29" Font-Bold="True" 

                ForeColor="White"></footerstyle>
                <headerstyle BackColor="#FFDE2F" Font-Bold="True" 

                ForeColor="White"></headerstyle>
                <pagerstyle BackColor="#261B29" ForeColor="White" 

                HorizontalAlign="Center"></pagerstyle>
                <rowstyle BackColor="#F7F6F3" ForeColor="#333333"></rowstyle>
                <selectedrowstyle BackColor="#E2DED6" Font-Bold="True" 

                ForeColor="#333333"></selectedrowstyle>
                <sortedascendingcellstyle BackColor="#E9E7E2"></sortedascendingcellstyle>
                <sortedascendingheaderstyle BackColor="#506C8C"></sortedascendingheaderstyle>
                <sorteddescendingcellstyle BackColor="#FFFDF8"></sorteddescendingcellstyle>
                <sorteddescendingheaderstyle BackColor="#6F8DAE"></sorteddescendingheaderstyle>
            </asp:GridView>
        </div>
    </form>
    
</body>
</html>
