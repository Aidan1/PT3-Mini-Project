<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="manageCourse.aspx.cs" Inherits="MINIPROJECT.Admin.manageCourse" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <asp:Table ID="Table1" runat="server" Width="100%" CssClass="header-center"  BackColor="#3B8CBB" BorderColor="#3B8CBB" BorderStyle="None">
        <asp:TableHeaderRow ForeColor="White">
            <asp:TableHeaderCell CssClass="header-center">
                Year & Semester
            </asp:TableHeaderCell>
            <asp:TableHeaderCell CssClass="header-center">
                Course Code
            </asp:TableHeaderCell>
            <asp:TableHeaderCell CssClass="header-center">
                Course ID
            </asp:TableHeaderCell>
            <asp:TableHeaderCell CssClass="header-center">
                Lecturer Name
            </asp:TableHeaderCell>
            <asp:TableHeaderCell CssClass="header-center">
                Action
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [year_semester]"></asp:SqlDataSource>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="courseCode" DataValueField="courseCode" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AppendDataBoundItems="true">
                    <asp:ListItem>Choose Course Code</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [courseCode] FROM [course]"></asp:SqlDataSource>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="course_offered_ID"
         OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" EmptyDataText="No course has been added" Width="100%" HeaderStyle-HorizontalAlign="Center" BorderColor="White"> 
        <Columns>
            <asp:TemplateField HeaderText="Course Code" HeaderStyle-CssClass="header-center">
                <ItemTemplate>
                    <asp:Label ID="courseCodeLbl" runat="server" Text='<%# Eval("courseCode") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="courseCodeText" runat="server" Text='<%# Eval("courseCode") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemStyle Width="10%"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course ID" HeaderStyle-CssClass="header-center">
                <ItemTemplate>
                    <asp:Label ID="courseIDLbl" runat="server" Text='<%# Eval("courseID") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="courseIDText" runat="server" Text='<%# Eval("courseID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemStyle Width="10%"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course Name" HeaderStyle-CssClass="header-center">
                <ItemTemplate>
                    <asp:Label ID="courseNameLbl" runat="server" Text='<%# Eval("courseName") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="40%"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Lecturer" HeaderStyle-CssClass="header-center">
                <ItemTemplate>
                    <asp:Label ID="lecturerNameLbl" runat="server" Text='<%# Eval("lecturerName") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="lecturerNameText" runat="server" Text='<%# Eval("lecturer_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemStyle Width="20%"></ItemStyle>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="true" DeleteImageUrl="~/Icon/rubbish.png" ButtonType="Image">
                <ItemStyle Width="25px"></ItemStyle>
            </asp:CommandField>
        </Columns>
        <HeaderStyle BackColor="#3B8CBB" BorderColor="#3B8CBB" BorderStyle="None" ForeColor="White" VerticalAlign="Middle"></HeaderStyle>
        <RowStyle HorizontalAlign="Center" Height="50px" />
    </asp:GridView>
</asp:Content>