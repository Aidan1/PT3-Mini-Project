<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="manageSubject.aspx.cs" Inherits="MINIPROJECT.Admin.manageSubject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
  <style>
      .header-padding {
          padding: 10px;
      }

     
  </style>
      
     <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">Subject List</h3>
        </div>
         <div class="panel-body">
            
        <asp:GridView ID="GridView1" runat="server" ForeColor="#333333" AllowPaging="False" AutoGenerateColumns="False" DataKeyNames="courseCode,courseID" Width="100%" DataSourceID="SqlDataSource1" CellPadding="10" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
        <Columns>
           
            <asp:BoundField DataField="courseCode" HeaderText="Course Code" ReadOnly="True" SortExpression="courseCode" HeaderStyle-CssClass="header-padding" />
            <asp:BoundField DataField="courseID"  HeaderText="Course ID" ReadOnly="True" SortExpression="courseID" />
            <asp:BoundField DataField="courseName" HeaderText="Course Name" SortExpression="courseName" />
            <asp:BoundField DataField="shortForm" HeaderText="Short Name" SortExpression="shortForm" />
            <asp:BoundField DataField="creditHours" HeaderText="Credit Hours" SortExpression="creditHours" />
            <asp:CommandField ShowDeleteButton="True" DeleteImageUrl="~/Icon/rubbish.png" ButtonType="Image" />
            <asp:CommandField ShowEditButton="True" DeleteImageUrl="~/Icon/edit.png" ButtonType="Image" />
        
        </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#337AB7" BorderColor="#337AB7" Font-Bold="True" ForeColor="White" VerticalAlign="Middle" Height="50px" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" Height="35px"  />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [courseCode] = @courseCode AND [courseID] = @courseID" InsertCommand="INSERT INTO [course] ([courseCode], [courseID], [courseName], [shortForm], [creditHours]) VALUES (@courseCode, @courseID, @courseName, @shortForm, @creditHours)" SelectCommand="SELECT * FROM [course]" UpdateCommand="UPDATE [course] SET [courseName] = @courseName, [shortForm] = @shortForm, [creditHours] = @creditHours WHERE [courseCode] = @courseCode AND [courseID] = @courseID">
        <DeleteParameters>
            <asp:Parameter Name="courseCode" Type="String" />
            <asp:Parameter Name="courseID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="courseCode" Type="String" />
            <asp:Parameter Name="courseID" Type="Int32" />
            <asp:Parameter Name="courseName" Type="String" />
            <asp:Parameter Name="shortForm" Type="String" />
            <asp:Parameter Name="creditHours" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="courseName" Type="String" />
            <asp:Parameter Name="shortForm" Type="String" />
            <asp:Parameter Name="creditHours" Type="Int32" />
            <asp:Parameter Name="courseCode" Type="String" />
            <asp:Parameter Name="courseID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
             
         </div>
     </div>

   
</asp:Content>
