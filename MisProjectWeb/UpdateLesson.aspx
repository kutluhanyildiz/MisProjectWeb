<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="UpdateLesson.aspx.cs" Inherits="MisProjectWeb.UpdateLesson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div>
            <div>
                <asp:Label For="TxtLessonID" runat="server">COURSE ID</asp:Label>
                <asp:TextBox ID="TxtLessonID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label For="TxtLessonName" runat="server">COURSE NAME</asp:Label>
                <asp:TextBox ID="TxtLessonName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="Button1_Click" />




    </form>
</asp:Content>
