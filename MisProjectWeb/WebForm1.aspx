<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MisProjectWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">Student ID</th>
            <th scope="col">Student Number</th>
            <th scope="col">Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Student's Phone Number</th>
            <th scope="col">Student's Mail Adress</th>
            <th scope="col">Student's Password</th>
            <th scope="col">Edit</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("STUDENTID")%></td>
                        <td><%#Eval("STUDENTNUMBER")%></td>
                        <td><%#Eval("STUDENTNAME")%></td>
                        <td><%#Eval("STUDENTLASTNAME")%></td>
                        <td><%#Eval("STUDENTCELL")%></td>
                        <td><%#Eval("STUDENTMAIL")%></td>
                        <td><%#Eval("STUDENTPASSWORD")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/UpdateStudent.aspx?STUDENTID="+Eval("STUDENTID") %>' runat="server" CssClass="btn btn-success">UPDATE</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DeleteStudent.aspx?STUDENTID="+Eval("STUDENTID") %>' runat="server" CssClass="btn btn-danger">DELETE</asp:HyperLink>


                        </td>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>
<%-- <th scope="row">1</th>--%>