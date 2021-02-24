<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentDefault.aspx.cs" Inherits="MisProjectWeb.StudentDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False">Student Number:</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="False">Name-Surname:</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="False">E-Mail:</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="False">Cell-phone number:</asp:TextBox>
            </div>

            <br />

            <div>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False">Password:</asp:TextBox>
            </div>
        
        </div>
        
        <asp:Button ID="Button1" runat="server" Text="Change Password" CssClass="btn btn-primary" OnClick="Button1_Click" />

    </form>
</asp:Content>
