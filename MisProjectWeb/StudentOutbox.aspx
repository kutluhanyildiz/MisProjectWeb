<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentOutbox.aspx.cs" Inherits="MisProjectWeb.StudentOutbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">RECEIVER</th>
            <th scope="col">TITLE</th>
            <th scope="col">CONTENT</th>

        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("MESSAGEGIVEN")%></td>
                        <td><%#Eval("TITLE")%></td>
                        <td><%#Eval("MESSAGECONTENT")%></td>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>
