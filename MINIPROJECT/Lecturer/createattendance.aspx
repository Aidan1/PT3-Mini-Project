<%@ Page Title="" Language="C#" MasterPageFile="~/Lecturer/LecturerMasterPage.Master" AutoEventWireup="true" CodeBehind="createattendance.aspx.cs" Inherits="MINIPROJECT.Lecturer.createattendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

     <div class="box-header with-border">
        <h3 class="box-title">CREATE ATTENDANCE</h3>
    </div>

   <br />
   <br />

     <form action="demo_form.asp">
         Choose Course&nbsp;
         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="courseCode" DataValueField="courseID">
         </asp:DropDownList>

    <br />
    <br />

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [courseCode], [courseID] FROM [course]"></asp:SqlDataSource>
         Choose Subject&nbsp;
         <asp:DropDownList ID="DropDownList2" runat="server">
         </asp:DropDownList>
     </form>
    <br />

     Date&nbsp;
     <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
         <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
         <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
         <OtherMonthDayStyle ForeColor="#999999" />
         <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
         <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
         <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
         <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
         <WeekendDayStyle BackColor="#CCCCFF" />
     </asp:Calendar>



     <br />



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



     <br />
     <br />
     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE" Width="93px" />
     <br />
     <br />



</asp:Content>
