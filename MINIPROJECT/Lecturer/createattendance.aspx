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
        .header-center{
            text-align:center;
        }
        .padding{
            padding:10px;
        }
        .item-radio-margin{
            margin-left:10px;
            margin-right:1px;
        }
    </style>
    <section class="content-header">
      <h1>
        Attendance
        <small>Create Attendance</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active">Create Attendance</li>
      </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-12 col-sm-6">
                <div class="box">
                    <div class="box-header with-border" style="left: 0px; top: 0px">
                        <h3 class="box-title">Create Attendance</h3>
                    </div>
                    <div class="box-body">
                        <ajaxToolkit:ToolkitScriptManager ID="toolkit1" runat="server"></ajaxToolkit:ToolkitScriptManager>
                        <table class="table">
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
                                    <td class="col-md-1">
                                        <asp:ImageButton runat="server" ID="img" ImageUrl="~/Lecturer/Icons/calendar.png" height="30px" width="30px"/>
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender" runat="server" TargetControlID="TextBoxDateOfBirth" PopupButtonID="img" CssClass="cal_Theme1" Format="dd-MM-yyyy"/>
                                    </td>
                                    <td class="col-md-2">
                                        <asp:Button runat="server" Text="Save" CssClass="btn btn-success btn-block" ID="createAtt" Width="100%" OnClick="createAtt_Click"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <asp:GridView ID="GridView1" CssClass="table table-bordered" AutoGenerateColumns="false" runat="server" Width="100%" DataKeyNames="matricNo" EmptyDataText="No student list">
                            <Columns>
                                <asp:TemplateField HeaderText="Matric No">
                                    <ItemTemplate>
                                        <asp:Label ID="matricNoLbl" runat="server" Text='<%# Eval("matricNo") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="20%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Student Name">
                                    <ItemTemplate>
                                        <asp:Label ID="studentNameLbl" runat="server" Text='<%# Eval("studentName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="40%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Attendance">
                                    <ItemTemplate>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" CellSpacing="10" CssClass="item-radio-margin">
                                            <asp:ListItem Value="1">
                                                Present
                                            </asp:ListItem>
                                            <asp:ListItem Value="0">
                                                Absence
                                            </asp:ListItem>
                                        </asp:RadioButtonList>
                                    </ItemTemplate>
                                    <ItemStyle Width="20%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Comment">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TextBoxComment" placeholder="Comment" runat="server" Width="100%" Height="30px"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle Width="20%"></ItemStyle>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
        </section>
</asp:Content>
