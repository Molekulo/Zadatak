<%@ Page Title="New Product" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="New.aspx.cs" Inherits="New" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="newproduct">
        <asp:Label ID="Label1" runat="server" Text="Naziv"></asp:Label>
        <asp:TextBox ID="NazivTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="NazivTextBox" 
            ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Morate uneti naziv"
            ForeColor="Red" Font-Bold="true">
        </asp:RequiredFieldValidator><br />
        
        <asp:Label ID="Label2" runat="server" Text="Opis"></asp:Label>
        <asp:TextBox ID="OpisTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="OpisTextBox" 
            ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Morate uneti opis"
            ForeColor="Red" Font-Bold="true">
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="Label3" runat="server" Text="Kategorija"></asp:Label>
        <asp:TextBox ID="KategorijaTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="KategorijaTextBox" 
            ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Morate uneti ketegoriju"
            ForeColor="Red" Font-Bold="true">
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="Label4" runat="server" Text="Proizvodjac"></asp:Label>
        <asp:TextBox ID="ProizvodjacTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="ProizvodjacTextBox" 
            ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Morate uneti proizvodjaca"
            ForeColor="Red" Font-Bold="true">
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="Label5" runat="server" Text="Dobavljac"></asp:Label>
        <asp:TextBox ID="DobavljacTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="DobavljacTextBox" 
            ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="Morate uneti dobavljaca"
            ForeColor="Red" Font-Bold="true">
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="Label6" runat="server" Text="Cena"></asp:Label>
        <asp:TextBox ID="CenaTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ControlToValidate="CenaTextBox" 
            ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Morate uneti cenu"
            ForeColor="Red" Font-Bold="true">
        </asp:RequiredFieldValidator><br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="Morate uneti broj"
            ControlToValidate="CenaTextBox"
            Type="Integer"
            Operator="DataTypeCheck"
            ForeColor="Red" Font-Bold="true">
        </asp:CompareValidator><br />
        
        <asp:Button ID="Button1" runat="server" Text="Unesi" OnClick="Button1_Click"/>
    </div>

</asp:Content>

