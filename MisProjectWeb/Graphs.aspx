<%@ Page Title="" Language="C#" MasterPageFile="~/Teachers.Master" AutoEventWireup="true" CodeBehind="Graphs.aspx.cs" Inherits="MisProjectWeb.Graphs" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <table class="table table-bordered table-hover">
            <tr>
                <td>
                    <asp:Chart ID="Chart5" runat="server" Width="500px">
                        <Series>
                            <asp:Series ChartType="FastPoint" Name="Grades" YValuesPerPoint="6">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Name="Title1" Text="Grades For Management Information Systems">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart2" runat="server" Width="500px">
                        <Series>
                            <asp:Series Name="LessonName">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Name="Title1" Text="# Of Instructor by Courses">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="Chart3" runat="server" Width="500px">
                        <Series>
                            <asp:Series Name="Gender" ChartType="Pie">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Name="Title1" Text="Gender of Students">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart4" runat="server" Width="500px">
                        <Series>
                            <asp:Series Name="Lessons">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Alignment="TopCenter" Name="Title1" Text="# Of Students Attached to the Courses">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
