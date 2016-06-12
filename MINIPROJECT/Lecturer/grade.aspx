<%@ Page Title="" Language="C#" MasterPageFile="~/Lecturer/LecturerMasterPage.Master" AutoEventWireup="true" CodeBehind="grade.aspx.cs" Inherits="MINIPROJECT.Lecturer.grade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <section class="content-header">
        <h1>
            Grade
            <small>Student Grade</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
            <li class="active">Student Grade</li>
        </ol>
    </section>

    <section class="content">
	    <div class="row">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Student Grade</h3>
                </div>
                <div class="box-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <td>Course Code</td>
                                <td>Course ID</td>
                                <td>Section Course</td>
                                <td>Student</td>
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
                                <td class="col-md-3">
                                    <asp:DropDownList Width="100%" Height="30px" ID="DropDownList4" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                        </tbody>
                    </table>


                    <br />
                    <table class="table">
                        <thead>
                            <tr>
                                <td>Assignment</td>
                                <td>Quiz</td>
                                <td>Project</td>
                                <td>Lab</td>
                                <td>Mid-Term</td>
                                <td>Final</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" CssClass="form-control" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="a1" CssClass="form-control" placeholder=" Assignment 1 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="q1" CssClass="form-control" placeholder=" Quiz 1 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="p1" CssClass="form-control" placeholder=" Project 1 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="l1" CssClass="form-control" placeholder=" Lab 1 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="mt" CssClass="form-control" placeholder=" Mid Term " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="f" CssClass="form-control" placeholder=" Final " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="a2" CssClass="form-control" placeholder=" Assignment 2 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="q2" CssClass="form-control" placeholder=" Quiz 2 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="p2" CssClass="form-control" placeholder=" Project 2 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="l2" CssClass="form-control" placeholder=" Lab 2 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="a3" CssClass="form-control" placeholder=" Assignment 3 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="q3" CssClass="form-control" placeholder=" Quiz 3 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="p3" CssClass="form-control" placeholder=" Project 3 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="l3" CssClass="form-control" placeholder=" Lab 3 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="a4" CssClass="form-control" placeholder=" Assignment 4 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="q4" CssClass="form-control" placeholder=" Quiz 4 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="p4" CssClass="form-control" placeholder=" Project 4 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="l4" CssClass="form-control" placeholder=" Lab 4 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="a5" CssClass="form-control" placeholder=" Assignment 5 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="q5" CssClass="form-control" placeholder=" Quiz 5 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="p5" CssClass="form-control" placeholder=" Project 5 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="l5" CssClass="form-control" placeholder=" Lab 5 " runat="server" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <asp:Button runat="server" ID="submitMark" Text="Save Mark" Width="100%" Height="30px" CssClass="btn btn-success" />
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
	    </div>
    </section>
</asp:Content>