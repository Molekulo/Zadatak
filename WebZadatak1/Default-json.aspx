<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default-json.aspx.cs" Inherits="Default_json" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" CellPadding="4" runat="server" DataKeyNames ="Id"
        AutoGenerateColumns="false"
        OnRowEditing="GridView1_RowEditing"
        OnRowCancelingEdit="GridView1_RowCancelingEdit"
        OnRowUpdating="GridView1_RowUpdating">
        <RowStyle BackColor="#8A9BA6" ForeColor="#FEFEFE" />
        <HeaderStyle BackColor="#4F95FF" Font-Bold="True" ForeColor="#FEFEFE" Height="40" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id proizvoda" SortExpression="Id" />
            <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="naziv" />
            <asp:BoundField DataField="Opis" HeaderText="Opis" SortExpression="opis" />
            <asp:BoundField DataField="Kategorija" HeaderText="Kategorija" SortExpression="kategorija" />
            <asp:BoundField DataField="Proizvodjac" HeaderText="Proizvodjac" SortExpression="proizvodjac" />
            <asp:BoundField DataField="Dobavljac" HeaderText="Dobavljac" SortExpression="dobavljac" />
            <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="cena" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>

