<%@ Page Title="" Language="C#" MasterPageFile="~/Lecturer/LecturerMasterPage.Master" AutoEventWireup="true" CodeBehind="listattendance.aspx.cs" Inherits="MINIPROJECT.Lecturer.listattendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    
     <div class="box-header with-border">
        <h3 class="box-title">LIST ATTENDANCE</h3>
    </div>

     <br />

   <br />
     <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
     <asp:Button ID="Button1" runat="server" Text="EDIT" />
   <br />



</asp:Content>
