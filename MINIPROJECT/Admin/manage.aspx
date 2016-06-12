<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master"  AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="MINIPROJECT.Admin.manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <section class="content-header">
        <h1>
            Manage
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
                                        <asp:DropDownList ID="DropDownList4" runat="server" Height="30px" Width="213px">
                                        </asp:DropDownList>
                                        <br />
                                    </td>

                                    <td class="col-md-2">
                                        <asp:DropDownList ID="DropDownList5" runat="server" Height="32px" Width="157px">
                                        </asp:DropDownList>
                                    </td>

                                    <td class="col-md-2">
                                        <asp:DropDownList ID="DropDownList6" runat="server" Height="33px" Width="142px">
                                        </asp:DropDownList>
                                    </td>
                   
                                  
                                    <td class="col-md-2">
                                        <asp:DropDownList ID="DropDownList7" runat="server" Height="30px" Width="192px">
                                        </asp:DropDownList>
                                    </td>

                                    <td class="col-md-2">
                                    <asp:Button ID="Button1" runat="server" Text="Add" />
                                    </td>

                                </tr>
                            </tbody>
                        </table>
                </div>
            </div>
	    </div>
    </section>
</asp:Content>