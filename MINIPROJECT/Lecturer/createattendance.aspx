<%@ Page Title="" Language="C#" MasterPageFile="~/Lecturer/LecturerMasterPage.Master" AutoEventWireup="true" CodeBehind="createattendance.aspx.cs" Inherits="MINIPROJECT.Lecturer.createattendance" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <style>
   /*Calendar Control CSS*/
    .cal_Theme1 .ajax__calendar_container   {
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
</style>
     <ajaxToolkit:ToolkitScriptManager ID="toolkit1" runat="server"></ajaxToolkit:ToolkitScriptManager>
     <div class="box-header with-border">
        <h3 class="box-title">
         <asp:Table ID="Table1" runat="server"></asp:Table>
         CREATE ATTENDANCE</h3>
    </div>
   <br />
    <asp:Table ID="Table2" runat="server" CssClass="header-center" Width="100%" BackColor="#3b8cbb" BorderColor="#3b8cbb" BorderStyle="None">
        <asp:TableHeaderRow ForeColor="White">
            <asp:TableHeaderCell CssClass="header-center">
                Choose Course
            </asp:TableHeaderCell>
            <asp:TableHeaderCell CssClass="header-center">
                Choose Subject
            </asp:TableHeaderCell>
            <asp:TableHeaderCell CssClass="header-center">
                Choose Section
            </asp:TableHeaderCell>
            <asp:TableHeaderCell CssClass="header-center">
                Pick a Date
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="courseCode" DataValueField="courseID">
                </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [courseCode], [courseID] FROM [course]"></asp:SqlDataSource>
                 <asp:DropDownList ID="DropDownList2" runat="server">
                 </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                  <asp:DropDownList ID="DropDownList3" runat="server">
                  </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                 <asp:TextBox ID="TextBoxDateOfBirth" runat="server" Height="23px" Width="165px"></asp:TextBox>
                 <asp:ImageButton runat="server" ID="img" ImageUrl="~/Admin/images/calendar.jpg" height="32px" width="38px"/>
                 <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBoxDateOfBirth" PopupButtonID="img" Format="dd/MM/yyyy" CssClass= " cal_Theme1"/>        
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
     <br />
     <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle BackColor="White" />
         <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
         <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
         <SortedAscendingCellStyle BackColor="#FDF5AC" />
         <SortedAscendingHeaderStyle BackColor="#4D0000" />
         <SortedDescendingCellStyle BackColor="#FCF6C0" />
         <SortedDescendingHeaderStyle BackColor="#820000" />
     </asp:GridView>
</asp:Content>
