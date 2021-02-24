<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="UpdateStudent2.aspx.cs" Inherits="MisProjectWeb.UpdateStudent2" %>

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
                <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" Enabled="True">Password:</asp:TextBox>
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtPassword2" runat="server" CssClass="form-control" Enabled="True">Repeat Password:</asp:TextBox>
            </div>

        </div>

        <asp:Button ID="Button1" runat="server" Text="Update Password" CssClass="btn btn-success" OnClick="Button1_Click" />

    </form>

</asp:Content>
