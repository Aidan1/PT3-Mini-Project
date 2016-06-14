<%@ Page Title="" Language="C#" MasterPageFile="~/Lecturer/LecturerMasterPage.Master" AutoEventWireup="true" CodeBehind="listattendance.aspx.cs" Inherits="MINIPROJECT.Lecturer.listattendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
<section class="content-header">
    <h1>
        Attendance
        <small>Attendance List</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active">Attendance List</li>
    </ol>
</section>
<section class="content">
    <div class="row">
    <div class="col-md-12 col-sm-6">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Attendance List</h3>
            </div>
            <div class="box-body">
                <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="false" DataKeyNames="attendanceID" EmptyDataText="No course has been added" Width="100%" HeaderStyle-HorizontalAlign="Center">
                    <Columns>
                        <asp:TemplateField HeaderText="Course Code" HeaderStyle-CssClass="header-center">
                            <ItemTemplate>
                                <asp:Label ID="courseCodeLbl" runat="server" Text='<%# Eval("courseCode") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="10%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Course ID" HeaderStyle-CssClass="header-center">
                            <ItemTemplate>
                                <asp:Label ID="courseIDLbl" runat="server" Text='<%# Eval("courseID") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="10%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Course Name" HeaderStyle-CssClass="header-center">
                            <ItemTemplate>
                                <asp:Label ID="courseNameLbl" runat="server" Text='<%# Eval("courseName") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="30%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Section No" HeaderStyle-CssClass="header-center">
                            <ItemTemplate>
                                <asp:Label ID="sectionNoLbl" runat="server" Text='<%# Eval("sectionNo") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="20%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Attendance" HeaderStyle-CssClass="header-center">
                            <ItemTemplate>
                                <asp:Label ID="attendanceLbl" runat="server" Text='<%# Eval("attendance") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="20%"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Date" HeaderStyle-CssClass="header-center">
                            <ItemTemplate>
                                <asp:Label ID="dateLbl" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle Width="10%"></ItemStyle>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    </div>
</section>
</asp:Content>
