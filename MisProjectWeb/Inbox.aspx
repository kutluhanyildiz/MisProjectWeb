<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="MisProjectWeb.Inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">SENDER</th>
            <th scope="col">TITLE</th>
            <th scope="col">CONTENT</th>
            <th scope="col">DATE</th>
            <th scope="col">EDIT</th>

        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("MESSAGEID")%></td>
                        <td><%#Eval("MESSAGEGIVEN")%></td>
                        <td><%#Eval("TITLE")%></td>
                        <td><%#Eval("MESSAGECONTENT")%></td>
                        <td><%#Eval("DATE")%></td>
                       <%-- <td>

                            <asp:HyperLink NavigateUrl='<%#"DeleteMessage.aspx?ANNOUNCEMENTID="+Eval("ANNOUNCEMENTID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-danger">DELETE</asp:HyperLink>




                        </td>--%>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>
