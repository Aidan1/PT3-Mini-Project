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
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="col-md-3">
                                    <asp:DropDownList AppendDataBoundItems="true" Width="100%" Height="30px" ID="DropDownList1" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server" DataSourceID="SqlDataSource1" DataTextField="courseCode" DataValueField="courseCode">
                                        <asp:ListItem Text="Choose Course Code"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="col-md-3">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [courseCode] FROM [course]"></asp:SqlDataSource>
                                    <asp:DropDownList Width="100%" Height="30px" ID="DropDownList2" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" runat="server"></asp:DropDownList>
                                </td>
                                <td class="col-md-3">
                                    <asp:DropDownList Width="100%" Height="30px" ID="DropDownList3" runat="server"></asp:DropDownList>
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
                                    <asp:TextBox runat="server" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox runat="server" placeholder="Percentage" Width="100%" Height="30px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="assignDD" AppendDataBoundItems="true" Width="100%" Height="30px" runat="server" AutoPostBack="true">
                                        <asp:ListItem Text="Pick Number of Assignment"></asp:ListItem>
                                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="quizDD" AppendDataBoundItems="true" Width="100%" Height="30px" runat="server" AutoPostBack="true">
                                        <asp:ListItem Text="Pick Number of Quiz"></asp:ListItem>
                                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="projectDD" AppendDataBoundItems="true" Width="100%" Height="30px" runat="server" AutoPostBack="true">
                                        <asp:ListItem Text="Pick Number of Project"></asp:ListItem>
                                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="labDD" AppendDataBoundItems="true" Width="100%" Height="30px" runat="server" AutoPostBack="true">
                                        <asp:ListItem Text="Pick Number of Lab"></asp:ListItem>
                                        <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td></td>
                                <td>
                                    <asp:Button ID="sumbitBtn" runat="server" CssClass="btn btn-success" Text="Done" Width="100%" Height="30px" OnClick="sumbitBtn_Click"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="matricNo">
                        <Columns>
                            <asp:TemplateField HeaderText="Matric No">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("matricNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Student Name">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("studentName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Assignment">
                                <ItemTemplate>
                                    <asp:Table runat="server" ID="TableA">
                                    </asp:Table>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quiz">
                                <ItemTemplate>
                                    <asp:Table runat="server" ID="TableQ">
                                    </asp:Table>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Project">
                                <ItemTemplate>
                                    <asp:Table runat="server" ID="TableP">
                                    </asp:Table>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Lab">
                                <ItemTemplate>
                                    <asp:Table runat="server" ID="TableL">
                                    </asp:Table>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mid-Term">
                                <ItemTemplate>
                                    <asp:Table runat="server" ID="TableMT">
                                    </asp:Table>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Final">
                                <ItemTemplate>
                                    <asp:Table runat="server" ID="TableF">
                                    </asp:Table>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:Table runat="server" ID="test">

                    </asp:Table>
                </div>
            </div>
	    </div>
    </section>
</asp:Content>