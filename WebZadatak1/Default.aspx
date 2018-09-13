<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" CellPadding="4" runat="server" DataKeyNames ="Id"
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <RowStyle BackColor="#8A9BA6" ForeColor="#FEFEFE" />
        <HeaderStyle BackColor="#4F95FF" Font-Bold="True" ForeColor="#FEFEFE" Height="40" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id proizvoda" SortExpression="Id" />
            <asp:BoundField DataField="naziv" HeaderText="Naziv" SortExpression="naziv" />
            <asp:BoundField DataField="opis" HeaderText="Opis" SortExpression="opis" />
            <asp:BoundField DataField="kategorija" HeaderText="Kategorija" SortExpression="kategorija" />
            <asp:BoundField DataField="proizvodjac" HeaderText="Proizvodjac" SortExpression="proizvodjac" />
            <asp:BoundField DataField="dobavljac" HeaderText="Dobavljac" SortExpression="dobavljac" />
            <asp:BoundField DataField="cena" HeaderText="Cena" SortExpression="cena" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource 
        ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:WebProductsConnectionString %>" 
        SelectCommand="SELECT [Id], [naziv], [opis], [kategorija], [proizvodjac], [dobavljac], [cena] FROM [Products]"
        UpdateCommand="UPDATE Products SET naziv = @naziv, opis = @opis, kategorija = @kategorija, proizvodjac = @proizvodjac, dobavljac = @dobavljac, cena = @cena  WHERE Id = @Id">
    </asp:SqlDataSource>

</asp:Content>

