<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="manageLecturer.aspx.cs" Inherits="MINIPROJECT.Admin.manageLecturer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <style>
        .icon-size{
            width:30px;
            height:30px;
        }
    </style>
        <section class="content-header">
    <h1>
        Lecturer
        <small>Manage Lecturer</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active">Manage Lecturer</li>
    </ol>
</section>
<section class="content">
    <div class="row">
    <div class="col-md-12 col-sm-6">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Manage Lecturer</h3>
            </div>
            <div class="box-body">
     <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" CellPadding="4" ForeColor="#051615" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="lecturer_ID" DataSourceID="SqlDataSource1" Width="100%" PageSize="5">
        <AlternatingRowStyle BackColor="White" />
          <Columns>
              
             <asp:BoundField DataField="matricNo" HeaderText="matricNo" SortExpression="matricNo" />
             <asp:BoundField DataField="lecturerName" HeaderText="lecturerName" SortExpression="lecturerName" />
              <asp:BoundField DataField="lecturer_ID" HeaderText="lecturer_ID" InsertVisible="False" ReadOnly="True" SortExpression="lecturer_ID" />
            <asp:CommandField ShowSelectButton="True" HeaderText="Action" ControlStyle-CssClass="icon-size" SelectImageUrl="~/Admin/Icon/view.png" ButtonType="Image"  />
            </Columns>
      </asp:GridView>
    <br />
    <br />
                <asp:DetailsView ID="DetailsView1" CssClass="table table-bordered table-hover" runat="server" Height="50px" Width="100%" AutoGenerateRows="False" DataKeyNames="lecturer_ID" DataSourceID="SqlDataSource2" OnItemDeleted="DetailsView1_ItemDeleted1" OnItemUpdated="DetailsView1_ItemUpdated1">
                   <EditRowStyle CssClass="table table-bordered table-hover"  /> 
                    <Fields>
                        <asp:BoundField DataField="lecturerName" HeaderText="lecturerName" SortExpression="lecturerName" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="matricNo" HeaderText="matricNo" SortExpression="matricNo" />
                        <asp:BoundField DataField="IC" HeaderText="IC" SortExpression="IC" />
                        <asp:BoundField DataField="lecturer_ID" HeaderText="lecturer_ID" InsertVisible="False" ReadOnly="True" SortExpression="lecturer_ID" />
                        <asp:CommandField  ShowEditButton="True" ItemStyle-HorizontalAlign="Right" EditImageUrl="~/Admin/Icon/edit.png" ShowDeleteButton="true" DeleteImageUrl="~/Admin/Icon/delete1.png" UpdateImageUrl="~/Admin/Icon/update.png" CancelImageUrl="~/Admin/Icon/cancel.png" ControlStyle-CssClass="icon-size" ButtonType="Image" />
                    </Fields>
                     <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#3B8CBB" BorderColor="#3B8CBB" BorderStyle="None" ForeColor="White" VerticalAlign="Middle" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle/>
                </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [matricNo], [lecturerName], [lecturer_ID] FROM [lecturer]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [lecturerName], [gender], [matricNo], [IC], [lecturer_ID] FROM [lecturer] WHERE ([lecturer_ID] = @lecturer_ID)" DeleteCommand="DELETE FROM [lecturer] WHERE [lecturer_ID] = @lecturer_ID" InsertCommand="INSERT INTO [lecturer] ([lecturerName], [gender], [matricNo], [IC]) VALUES (@lecturerName, @gender, @matricNo, @IC)" UpdateCommand="UPDATE [lecturer] SET [lecturerName] = @lecturerName, [gender] = @gender, [matricNo] = @matricNo, [IC] = @IC WHERE [lecturer_ID] = @lecturer_ID">
        <DeleteParameters>
            <asp:Parameter Name="lecturer_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="lecturerName" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="matricNo" Type="String" />
            <asp:Parameter Name="IC" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="lecturer_ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="lecturerName" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="matricNo" Type="String" />
            <asp:Parameter Name="IC" Type="String" />
            <asp:Parameter Name="lecturer_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
            </div>
        </div>
    </div>
    </div>
</section>
</asp:Content>
