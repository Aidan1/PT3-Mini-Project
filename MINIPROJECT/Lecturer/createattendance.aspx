<%@ Page Title="" Language="C#" MasterPageFile="~/Lecturer/LecturerMasterPage.Master" AutoEventWireup="true" CodeBehind="createattendance.aspx.cs" Inherits="MINIPROJECT.Lecturer.createattendance" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <style>
        /*Calendar Control CSS*/
        .cal_Theme1 .ajax__calendar_container {
            background-color: #DEF1F4;
            border:solid 1px #77D5F7;
        }

        .cal_Theme1 .ajax__calendar_header  {
            background-color: #ffffff;
            margin-bottom: 4px;
        }

        .cal_Theme1 .ajax__calendar_title,
        .cal_Theme1 .ajax__calendar_next,
        .cal_Theme1 .ajax__calendar_prev    {
            color: #004080;
            padding-top: 4px;
        }

        .cal_Theme1 .ajax__calendar_body    {
            background-color: #ffffff;
            border: solid 1px #77D5F7;
        }

        .cal_Theme1 .ajax__calendar_dayname {
            text-align:center;
            font-weight:bold;
            margin-bottom: 4px;
            margin-top: 2px;
            color: #004080;
        }

        .cal_Theme1 .ajax__calendar_day {
            color: #004080;
            text-align:center;
        }

        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_day,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_month,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_year,
        .cal_Theme1 .ajax__calendar_active  {
            color: #004080;
            font-weight: bold;
            background-color: #DEF1F4;
        }

        .cal_Theme1 .ajax__calendar_today   {
            font-weight:bold;
        }

        .cal_Theme1 .ajax__calendar_other,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_today,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_title {
            color: #bbbbbb;
        }
        .auto-style1 {
            height: 22px;
            width: 169px;
        }
        .auto-style2 {
            width: 169px;
        }
        .header-center{
            text-align:center;
        }
        .padding{
            padding:10px;
        }
    </style>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Create Attendance</h3>
        </div>
        <div class="panel-body">
            <ajaxToolkit:ToolkitScriptManager ID="toolkit1" runat="server"></ajaxToolkit:ToolkitScriptManager>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <td>Course Code</td>
                        <td>Course ID</td>
                        <td>Section Course</td>
                        <td>Pick a Date</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="col-md-3">
                            <asp:DropDownList AppendDataBoundItems="true" Width="100%" Height="30px" ID="DropDownList1" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server" DataSourceID="SqlDataSource1" DataTextField="courseCode" DataValueField="courseCode">
                            <asp:ListItem Text="Choose Course Code"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="col-md-2">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [courseCode] FROM [course]"></asp:SqlDataSource>
                            <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="100%" Height="30px" ID="DropDownList2" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="col-md-2">
                            <asp:DropDownList Width="100%" Height="30px" ID="DropDownList3" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="col-md-2">
                            <asp:TextBox Width="100%" Height="30px" ID="TextBoxDateOfBirth" runat="server"></asp:TextBox>
                        </td>
                        <td class="col-md-2">
                            <asp:ImageButton runat="server" ID="img" ImageUrl="~/Lecturer/Icons/calendar.png" height="30px" width="30px"/>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender" runat="server" TargetControlID="TextBoxDateOfBirth" PopupButtonID="img" CssClass="cal_Theme1"/>
                        </td>
                        <td class="col-md-1">
                            <asp:Button runat="server" Text="Save" CssClass="btn btn-success btn-block" ID="createAtt" Width="100%" OnClick="createAtt_Click"/>
                        </td>
                    </tr>
                </tbody>
            </table>

            <asp:GridView ID="GridView1" CssClass="table table-hover" AutoGenerateColumns="false" runat="server" Width="100%" DataKeyNames="matricNo" EmptyDataText="No student list">
                <Columns>
                    <asp:TemplateField HeaderText="Matric No" HeaderStyle-CssClass="header-center">
                        <ItemTemplate>
                            <asp:Label ID="matricNoLbl" runat="server" Text='<%# Eval("matricNo") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="20%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Student Name" HeaderStyle-CssClass="header-center">
                        <ItemTemplate>
                            <asp:Label ID="studentNameLbl" runat="server" Text='<%# Eval("studentName") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="60%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Attendance" HeaderStyle-CssClass="header-center">
                        <ItemTemplate>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                <asp:ListItem Value="1">
                                    Present
                                </asp:ListItem>
                                <asp:ListItem Value="0">
                                    Absence
                                </asp:ListItem>
                                <asp:ListItem Value="2">
                                    Late
                                </asp:ListItem>
                            </asp:RadioButtonList>
                        </ItemTemplate>
                        <ItemStyle Width="20%"></ItemStyle>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#3B8CBB" BorderColor="#3B8CBB" BorderStyle="None" ForeColor="White" VerticalAlign="Middle"></HeaderStyle>
                <RowStyle HorizontalAlign="Center" Height="50px" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
