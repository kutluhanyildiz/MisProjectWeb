<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="LessonList.aspx.cs" Inherits="MisProjectWeb.LessonList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">COURSE ID</th>
            <th scope="col">COURSE NAME</th>
            <th scope="col">EDIT</th>

        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("LESSONID")%></td>
                        <td><%#Eval("LESSONNAME")%></td>

                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/UpdateLesson.aspx?LESSONID="+Eval("LESSONID") %>' runat="server" CssClass="btn btn-success">UPDATE</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DeleteLesson.aspx?LESSONID="+Eval("LESSONID") %>' runat="server" CssClass="btn btn-danger">DELETE</asp:HyperLink>


                        </td>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>


        </tbody>
    </table>

    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AddLesson.aspx" CssClass="btn btn-info">Add Course</asp:HyperLink>

</asp:Content>
