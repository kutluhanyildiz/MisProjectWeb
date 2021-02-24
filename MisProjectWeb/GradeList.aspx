<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="GradeList.aspx.cs" Inherits="MisProjectWeb.GradeList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">Student ID</th>
            <th scope="col">Student Full Name</th>
            <th scope="col">Course:</th>
            <th scope="col">Midterm 1 grade:</th>
            <th scope="col">Midterm 2 grade:</th>
            <th scope="col">Final grade:</th>
            <th scope="col">Average</th>
            <th scope="col">Status:</th>
            <th scope="col">Edit</th>

        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("STUDID")%></td>
                        <td><%#Eval("STUDENTFULLNAME")%></td>
                        <td><%#Eval("LESSONNAME")%></td>
                        <td><%#Eval("EXAM1")%></td>
                        <td><%#Eval("EXAM2")%></td>
                        <td><%#Eval("EXAM3")%></td>
                        <td><%#Eval("AVERAGE")%></td>
                        <td><%#Eval("SITUATION")%></td>


                        <td>
                            <asp:HyperLink NavigateUrl='<%#"UpdateGrade.aspx?GRADEID="+Eval("GRADEID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-success">UPDATE</asp:HyperLink>



                        </td>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>
