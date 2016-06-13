<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="manageCourse.aspx.cs" Inherits="MINIPROJECT.Admin.manageCourse" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
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
            <small>Manage Course</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
            <li class="active">Manage Course</li>
        </ol>
    </section>

    <section class="content">
	    <div class="row">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Manage Course</h3>
                </div>
                <div class="box-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <td>Year & Semester</td>
                                <td>Course Code</td>
                                <td>Course ID</td>
                                <td>Lecturer Name</td>
                                <td>Action</td>
                            </tr>
                        </thead>

                         <tbody>
                                <tr>
                                    <td class="col-md-3">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                        <br />
                                    </td>

                                    <td class="col-md-2">
                                        <asp:DropDownList ID="DropDownList2" AppendDataBoundItems="True" runat="server" Height="30px" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="courseCode" DataValueField="courseCode">
                                            <asp:ListItem Text="Choose Course Code"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [courseCode] FROM [course]"></asp:SqlDataSource>
                                    </td>

                                    <td class="col-md-2">
                                        <asp:DropDownList ID="DropDownList3" runat="server" Height="30px" Width="100%" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="col-md-2">
                                        <asp:DropDownList ID="DropDownList4" runat="server" Height="30px" Width="100%">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="col-md-2">
                                    <asp:Button ID="btnAdd" CssClass="btn btn-success" Width="100%" Height="30px" runat="server" Text="Add" OnClick="btnAdd_Click"/>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="course_offered_ID"
                             OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" EmptyDataText="No course has been added" Width="100%" HeaderStyle-HorizontalAlign="Center" BorderColor="White"> 
                            <Columns>
                                <asp:TemplateField HeaderText="Course Code" >
                                    <ItemTemplate>
                                        <asp:Label ID="courseCodeLbl" runat="server" Text='<%# Eval("courseCode") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="courseCodeText" runat="server" Text='<%# Eval("courseCode") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="10%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Course ID" >
                                    <ItemTemplate>
                                        <asp:Label ID="courseIDLbl" runat="server" Text='<%# Eval("courseID") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="courseIDText" runat="server" Text='<%# Eval("courseID") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="10%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Course Name">
                                    <ItemTemplate>
                                        <asp:Label ID="courseNameLbl" runat="server" Text='<%# Eval("courseName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="40%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Lecturer">
                                    <ItemTemplate>
                                        <asp:Label ID="lecturerNameLbl" runat="server" Text='<%# Eval("lecturerName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="lecturerNameText" runat="server" Text='<%# Eval("lecturer_ID") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="30%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:CommandField HeaderText="Action" ControlStyle-CssClass="icon-size" ShowDeleteButton="true" DeleteImageUrl="~/Admin/Icon/delete1.png" ButtonType="Image">
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>
                </div>
            </div>
	    </div>
    </section>
    <br />
</asp:Content>