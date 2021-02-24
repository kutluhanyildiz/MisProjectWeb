<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentAnnouncement.aspx.cs" Inherits="MisProjectWeb.StudentAnnouncement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">TITLE</th>
            <th scope="col">CONTENT</th>
           <%-- <th scope="col">INSTRUCTOR ID</th>--%>
            <th scope="col">INSTRUCTOR NAME</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <itemtemplate>

                    <tr>
                        <td><%#Eval("ANNOUNCEMENTID")%></td>
                        <td><%#Eval("ANNOUNCETITLE")%></td>
                        <td><%#Eval("ANNOUNCECONTENT")%></td>
                        <%--<td><%#Eval("ANNOUNCETEACHER")%></td>--%>
                        <td><%#Eval("TEACHERFULLNAME")%></td>
                        <td>

<%--                            <asp:HyperLink NavigateUrl='<%#"DeleteAnnouncement.aspx?ANNOUNCEMENTID="+Eval("ANNOUNCEMENTID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-danger">DELETE</asp:HyperLink>--%>




                        </td>
                    </tr>

                </itemtemplate>
            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>
