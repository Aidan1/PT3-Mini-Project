<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="manageSubject.aspx.cs" Inherits="MINIPROJECT.Admin.manageSubject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
     <style>
        .icon-size{
            width:30px;
            height:30px;
        }
    </style>

    <section class="content-header">
    <h1>
        Course
        <small>Course List</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active">Course List</li>
    </ol>
</section>
<section class="content">
    <div class="row">
    <div class="col-md-12 col-sm-6">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Course List</h3>
            </div>
            <div class="box-body">   
        <asp:GridView ID="GridView1"  CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="courseCode,courseID" Width="100%" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="courseCode" HeaderText="Course Code" ReadOnly="True" SortExpression="courseCode" HeaderStyle-CssClass="header-padding" >
<HeaderStyle CssClass="header-padding"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="courseID"  HeaderText="Course ID" ReadOnly="True" SortExpression="courseID" />
            <asp:BoundField DataField="courseName" HeaderText="Course Name" SortExpression="courseName" />
            <asp:BoundField DataField="shortForm" HeaderText="Short Name" SortExpression="shortForm" />
            <asp:BoundField DataField="creditHours" HeaderText="Credit Hours" SortExpression="creditHours" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Action" ControlStyle-CssClass="icon-size" DeleteImageUrl="~/Admin/Icon/delete1.png"
                 ShowEditButton="True" UpdateImageUrl="~/Admin/Icon/update.png" CancelImageUrl="~/Admin/Icon/cancel.png" EditImageUrl="~/Admin/Icon/edit.png" ButtonType="Image" />
        </Columns>
            <HeaderStyle BorderColor="#337AB7" VerticalAlign="Middle" Height="50px" />
            <RowStyle Height="35px"  />
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
    </div>
    </div>
</section>
</asp:Content>