<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="AnnouncementList.aspx.cs" Inherits="MisProjectWeb.AnnouncementList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">TITLE</th>
            <th scope="col">CONTENT</th>
            <th scope="col">INSTRUCTOR</th>
            <th scope="col">EDIT</th>

        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("ANNOUNCEMENTID")%></td>
                        <td><%#Eval("ANNOUNCETITLE")%></td>
                        <td><%#Eval("ANNOUNCECONTENT")%></td>
                        <td><%#Eval("ANNOUNCETEACHER")%></td>
                        <td>

                            <asp:HyperLink NavigateUrl='<%#"DeleteAnnouncement.aspx?ANNOUNCEMENTID="+Eval("ANNOUNCEMENTID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-danger">DELETE</asp:HyperLink>




                        </td>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
    <%--NavigateUrl='<%#"~/DeleteStudent.aspx?STUDENTID="+Eval("STUDENTID") %>'--%>
</asp:Content>
