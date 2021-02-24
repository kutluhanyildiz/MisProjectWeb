<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="UpdateGrade.aspx.cs" Inherits="MisProjectWeb.UpdateGrade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
                <asp:Label for="TxtLessonName" runat="server">Course Name:</asp:Label>
                <asp:TextBox ID="TxtLessonName" runat="server" CssClass="form-control"></asp:TextBox>

            </div>

            <br />

            <div>
                <asp:Label for="TxtStdID" runat="server">Student ID</asp:Label>
                <asp:TextBox ID="TxtStdID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtStdName" runat="server">Student Full Name</asp:Label>
                <asp:TextBox ID="TxtStdName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtStdExam1" runat="server">Midterm 1</asp:Label>
                <asp:TextBox ID="TxtStdExam1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />

            <div>
                <asp:Label for="TxtStdExam2" runat="server">Midterm 2</asp:Label>
                <asp:TextBox ID="TxtStdExam2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtStdExam3" runat="server">Final Exam</asp:Label>
                <asp:TextBox ID="TxtStdExam3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtAvg" runat="server">Average</asp:Label>
                <asp:TextBox ID="TxtAvg" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtStat" runat="server">Status</asp:Label>
                <asp:TextBox ID="TxtStdStat" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>


        <asp:Button ID="Button1" runat="server" Text="Calculate" CssClass="btn btn-toolbar" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Update Grades" CssClass="btn btn-primary" OnClick="Button2_Click" />
    </form>

</asp:Content>
