<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="manageStudent.aspx.cs" Inherits="MINIPROJECT.Admin.manageStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <asp:Label ID="Label1" runat="server" Text="List Of Student"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="matricNo" DataSourceID="SqlDataSource1" Width="384px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="matricNo" HeaderText="matricNo" ReadOnly="True" SortExpression="matricNo" />
            <asp:BoundField DataField="student_name" HeaderText="student_name" SortExpression="student_name" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>  
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="matricNo" DataSourceID="SqlDataSource2" OnItemDeleted="DetailsView1_ItemDeleted" OnItemUpdated="DetailsView1_ItemUpdated" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <Fields>
            <asp:BoundField DataField="student_name" HeaderText="student_name" SortExpression="student_name" />
            <asp:BoundField DataField="matricNo" HeaderText="matricNo" ReadOnly="True" SortExpression="matricNo" />
            <asp:BoundField DataField="phoneNo" HeaderText="phoneNo" SortExpression="phoneNo" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="student_IC" HeaderText="student_IC" SortExpression="student_IC" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="race" HeaderText="race" SortExpression="race" />
            <asp:BoundField DataField="nationality" HeaderText="nationality" SortExpression="nationality" />
            <asp:BoundField DataField="guardian_name" HeaderText="guardian_name" SortExpression="guardian_name" />
            <asp:BoundField DataField="occupation" HeaderText="occupation" SortExpression="occupation" />
            <asp:BoundField DataField="guardian_phoneNo" HeaderText="guardian_phoneNo" SortExpression="guardian_phoneNo" />
            <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
            <asp:BoundField DataField="guardian_address" HeaderText="guardian_address" SortExpression="guardian_address" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [matricNo], [student_name] FROM [student]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [matricNo] = @matricNo" InsertCommand="INSERT INTO [student] ([student_name], [matricNo], [phoneNo], [email], [student_IC], [address], [DOB], [gender], [race], [nationality], [guardian_name], [occupation], [guardian_phoneNo], [salary], [guardian_address]) VALUES (@student_name, @matricNo, @phoneNo, @email, @student_IC, @address, @DOB, @gender, @race, @nationality, @guardian_name, @occupation, @guardian_phoneNo, @salary, @guardian_address)" SelectCommand="SELECT * FROM [student] WHERE ([matricNo] = @matricNo)" UpdateCommand="UPDATE [student] SET [student_name] = @student_name, [phoneNo] = @phoneNo, [email] = @email, [student_IC] = @student_IC, [address] = @address, [DOB] = @DOB, [gender] = @gender, [race] = @race, [nationality] = @nationality, [guardian_name] = @guardian_name, [occupation] = @occupation, [guardian_phoneNo] = @guardian_phoneNo, [salary] = @salary, [guardian_address] = @guardian_address WHERE [matricNo] = @matricNo">
        <DeleteParameters>
            <asp:Parameter Name="matricNo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="student_name" Type="String" />
            <asp:Parameter Name="matricNo" Type="String" />
            <asp:Parameter Name="phoneNo" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="student_IC" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="race" Type="String" />
            <asp:Parameter Name="nationality" Type="String" />
            <asp:Parameter Name="guardian_name" Type="String" />
            <asp:Parameter Name="occupation" Type="String" />
            <asp:Parameter Name="guardian_phoneNo" Type="String" />
            <asp:Parameter Name="salary" Type="Double" />
            <asp:Parameter Name="guardian_address" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="matricNo" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="student_name" Type="String" />
            <asp:Parameter Name="phoneNo" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="student_IC" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="race" Type="String" />
            <asp:Parameter Name="nationality" Type="String" />
            <asp:Parameter Name="guardian_name" Type="String" />
            <asp:Parameter Name="occupation" Type="String" />
            <asp:Parameter Name="guardian_phoneNo" Type="String" />
            <asp:Parameter Name="salary" Type="Double" />
            <asp:Parameter Name="guardian_address" Type="String" />
            <asp:Parameter Name="matricNo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
