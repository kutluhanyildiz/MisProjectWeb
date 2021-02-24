<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="MisProjectWeb.AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TxtStdName" runat="server">Student Name</asp:Label>
                <asp:TextBox ID="TxtStdName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtStdSurname" runat="server">Student Surname</asp:Label>
                <asp:TextBox ID="TxtStdSurname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtStdCell" runat="server">Student Cell Number</asp:Label>
                <asp:TextBox ID="TxtStdCell" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TxtStdMail" runat="server">Student E-Mail Adress</asp:Label>
                <asp:TextBox ID="TxtStdMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtStdPassword" runat="server">Student's Password</asp:Label>
                <asp:TextBox ID="TxtStdPassword" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtStdPhoto" runat="server">Student's Photograph Link</asp:Label>
                <asp:TextBox ID="TxtStdPhoto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        </div>

        <asp:Button ID="Button1" runat="server" Text="Save Student" CssClass="btn btn-info" BorderColor="yellow" OnClick="Button1_Click" />
    </form>


</asp:Content>
