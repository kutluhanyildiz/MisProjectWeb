<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="AddAnnouncement.aspx.cs" Inherits="MisProjectWeb.AddAnnouncement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="DropDownList1" runat="server">Instructor:</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>

            <br />

            <div>
                <asp:Label for="TxtAnnouncementTitle" runat="server">Title of your annouoncement:</asp:Label>
                <asp:TextBox ID="TxtAnnouncementTitle" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TextArea1" runat="server">Announcement's Content:</asp:Label>
                <div class="form-group">
                    <textarea id ="TextArea1" class="form-control" runat ="server" rows="6"></textarea>
                </div>
                <br />

                <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-info" BorderColor="yellow" OnClick="Button1_Click" />
            </div>
        </div>
    </form>

</asp:Content>
