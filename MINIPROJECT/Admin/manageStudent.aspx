<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="manageStudent.aspx.cs" Inherits="MINIPROJECT.Admin.manageStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="matricNo" DataSourceID="SqlDataSource1" Width="100%" PageSize="5">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="matricNo" HeaderText="Matric No" ReadOnly="True" SortExpression="matricNo" HeaderStyle-CssClass="header-padding">
                <ItemStyle CssClass="header-padding" />
            </asp:BoundField>
            <asp:BoundField DataField="student_name" HeaderText="Student Name" SortExpression="student_name" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#3B8CBB" BorderColor="#3B8CBB" BorderStyle="None" ForeColor="White" VerticalAlign="Middle" Height="50px"></HeaderStyle>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB"/>
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>  
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" AutoGenerateRows="False" DataKeyNames="matricNo" DataSourceID="SqlDataSource2" OnItemDeleted="DetailsView1_ItemDeleted" OnItemUpdated="DetailsView1_ItemUpdated" Height="50px">
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <Fields>
            <asp:BoundField DataField="student_name" HeaderText="Student Name" SortExpression="student_name">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="matricNo" HeaderText="Matric No" ReadOnly="True" SortExpression="matricNo">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="phoneNo" HeaderText="Phone No" SortExpression="phoneNo">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="student_IC" HeaderText="Student IC" SortExpression="student_IC">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="DOB" HeaderText="Date of Birth" SortExpression="DOB">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="race" HeaderText="Race" SortExpression="race">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="nationality" HeaderText="Nationality" SortExpression="nationality">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="guardian_name" HeaderText="Guardian Name" SortExpression="guardian_name">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="occupation" HeaderText="Occupation" SortExpression="occupation">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="guardian_phoneNo" HeaderText="Guardian Phone No" SortExpression="guardian_phoneNo">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:BoundField DataField="guardian_address" HeaderText="Guardian Address" SortExpression="guardian_address">
                <HeaderStyle CssClass="detail-header"/>
                <ItemStyle CssClass="detail-item"/>
            </asp:BoundField>
            <asp:CommandField ShowEditButton="true" EditImageUrl="~/Icon/edit.png" ButtonType="Image">
                <ItemStyle Width="52px"></ItemStyle>
            </asp:CommandField>                
            <asp:CommandField ShowDeleteButton="true" DeleteImageUrl="~/Icon/rubbish.png" ButtonType="Image">
                <ItemStyle Width="52px"></ItemStyle>
            </asp:CommandField>                
        </Fields>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#3B8CBB" BorderColor="#3B8CBB" BorderStyle="None" ForeColor="White" VerticalAlign="Middle" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle/>
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
