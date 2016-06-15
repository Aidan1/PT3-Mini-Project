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
                            </tr>
                        </tbody>
                     </table>
                    <asp:GridView ID="GridView1" DataKeyNames="student_scoreID" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="false">
                        <Columns>
                            <asp:TemplateField HeaderText="Matric No">
                                <ItemTemplate>
                                    <asp:Label ID="matricNoLbl" runat="server" Text='<%# Eval("matricNo") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="30%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Student Name">
                                <ItemTemplate>
                                    <asp:Label ID="studentNameLbl" runat="server" Text='<%# Eval("studentName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="30%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Assignment">
                                <ItemTemplate>
                                    <asp:Label ID="assignmentLbl" runat="server" Text='<%# Eval("assignment") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="5%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quiz">
                                <ItemTemplate>
                                    <asp:Label ID="quizLbl" runat="server" Text='<%# Eval("quiz") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="5%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Project">
                                <ItemTemplate>
                                    <asp:Label ID="project" runat="server" Text='<%# Eval("project") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="5%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Lab">
                                <ItemTemplate>
                                    <asp:Label ID="labLbl" runat="server" Text='<%# Eval("lab") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="5%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mid Term">
                                <ItemTemplate>
                                    <asp:Label ID="midtermLbl" runat="server" Text='<%# Eval("midterm") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="5%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Final Exam">
                                <ItemTemplate>
                                    <asp:Label ID="finalLbl" runat="server" Text='<%# Eval("final") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="5%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Total Mark">
                                <ItemTemplate>
                                    <asp:Label ID="totalMarkLbl" runat="server" Text='<%# Eval("totalMark") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="5%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Grades">
                                <ItemTemplate>
                                    <asp:Label ID="gradesLbl" runat="server" Text='<%# Eval("grades") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="5%"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
	    </div>
    </section>
</asp:Content>