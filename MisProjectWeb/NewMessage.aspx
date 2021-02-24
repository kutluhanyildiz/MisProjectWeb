<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="NewMessage.aspx.cs" Inherits="MisProjectWeb.NewMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TxtSender" runat="server">Sender:</asp:Label>
                <asp:TextBox ID="TxtSender" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TxtReceiver" runat="server">Receiver:</asp:Label>
                <asp:TextBox ID="TxtReceiver" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>
                <asp:Label for="TxtTitle" runat="server">Message Title:</asp:Label>
                <asp:TextBox ID="TxtTitle" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />
            <div>
                <asp:Label for="TxtContent" runat="server">Message Content:</asp:Label>
                <textarea id="TxtContent" class="form-control" runat="server" rows="6"></textarea>
            </div>
            <br />

            <asp:Button ID="BtnSend" runat="server" Text="Send Message" CssClass="btn btn-info" BorderColor="yellow" OnClick="BtnSend_Click" />
        </div>
    </form>

</asp:Content>
