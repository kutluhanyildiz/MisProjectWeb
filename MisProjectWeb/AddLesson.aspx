<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="AddLesson.aspx.cs" Inherits="MisProjectWeb.AddLesson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            

            <div>
                <asp:Label for="TxtCourse" runat="server">Course Name</asp:Label>
                <asp:TextBox ID="TxtCourse" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-info" BorderColor="yellow" OnClick="Button1_Click" />
            </div>

        </div>
    </form>

</asp:Content>
