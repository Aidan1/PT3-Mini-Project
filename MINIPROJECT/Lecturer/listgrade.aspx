<%@ Page Title="" Language="C#" MasterPageFile="~/Lecturer/LecturerMasterPage.Master" AutoEventWireup="true" CodeBehind="listgrade.aspx.cs" Inherits="MINIPROJECT.Lecturer.listgrade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

     <section class="content-header">
        <h1>
            Grade
            <small>Grade List</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
            <li class="active">Grade List</li>
        </ol>
    </section>

    <section class="content">
	    <div class="row">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Grade List</h3>
                </div>
                <div class="box-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <td>Course Code</td>
                                <td>Course ID</td>
                                <td>Section Course</td>
                            </tr>
                        </thead>
                         <tbody>
                            <tr>
                                <td class="col-md-3">
                                    <asp:DropDownList AppendDataBoundItems="true" Width="100%" Height="30px" ID="DropDownList1" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server" DataSourceID="SqlDataSource1" DataTextField="courseCode" DataValueField="courseCode">
                                        <asp:ListItem Text="Choose Course Code"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="col-md-2">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [courseCode] FROM [course]"></asp:SqlDataSource>
                                    <asp:DropDownList Width="100%" Height="30px" ID="DropDownList2" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" runat="server"></asp:DropDownList>
                                </td>
                                <td class="col-md-2">
                                    <asp:DropDownList Width="100%" Height="30px" ID="DropDownList3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                            </tr>
                        </tbody>










                     </table>
                </div>
            </div>
	    </div>
    </section>

</asp:Content>
