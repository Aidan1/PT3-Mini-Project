<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="manageStudent.aspx.cs" Inherits="MINIPROJECT.Admin.manageStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="matricNo" DataSourceID="SqlDataSource1">
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
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [matricNo] = @matricNo" InsertCommand="INSERT INTO [student] ([student_name], [matricNo], [phoneNo], [email], [student_IC], [address], [DOB], [gender], [race], [nationality], [guardian_name], [occupation], [guardian_phoneNo], [salary], [guardian_address]) VALUES (@student_name, @matricNo, @phoneNo, @email, @student_IC, @address, @DOB, @gender, @race, @nationality, @guardian_name, @occupation, @guardian_phoneNo, @salary, @guardian_address)" SelectCommand="SELECT * FROM [student]" UpdateCommand="UPDATE [student] SET [student_name] = @student_name, [phoneNo] = @phoneNo, [email] = @email, [student_IC] = @student_IC, [address] = @address, [DOB] = @DOB, [gender] = @gender, [race] = @race, [nationality] = @nationality, [guardian_name] = @guardian_name, [occupation] = @occupation, [guardian_phoneNo] = @guardian_phoneNo, [salary] = @salary, [guardian_address] = @guardian_address WHERE [matricNo] = @matricNo">
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
