<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="subjectReg.aspx.cs" Inherits="MINIPROJECT.Student.subjectReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <section class="content-header">
     <h1>
            Registration Course
            <small>This semester</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
            <li class="active">Course Registration</li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
          <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Please Register Courses That Been Offered Only</h3>
                </div>
                <div class="box-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <td>Course Code</td>
                                <td>Course ID</td>
                                <td>Section Course</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody>
                           <tr>
                                <td class="col-md-3">
                                    <asp:DropDownList runat="server" AppendDataBoundItems="True" Width="100%" Height="30px" ID="DropDownList1" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"  DataTextField="courseCode" DataValueField="courseCode" >
                                        <asp:ListItem Text="Choose Course Code"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [courseCode] FROM [course]"></asp:SqlDataSource>
                                </td>
                                <td class="col-md-3">                                   
                                    <asp:DropDownList Width="100%" Height="30px" ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                                <td class="col-md-3">
                                    <asp:DropDownList Width="100%" Height="30px" ID="DropDownList3" runat="server"></asp:DropDownList>
                                </td>
                                <td class="col-md-2">
                                    <asp:Button runat="server" Text="Add Course" ID="addCourse" OnClick="addCourse_Click" Width="100%" Height="30px" CssClass="btn btn-success"/>  
                                    </td>
                            </tr>
                        </tbody>  
                         </table>
                   <br />
                    <asp:GridView ID="GridView1" Width="100%" CssClass="table table-bordered table-hover" AutoGenerateColumns="false" runat="server" DataKeyNames="ssID" EmptyDataText="You haven't registered course yet">
                        <Columns>
                            <asp:TemplateField HeaderText="Course Code">
                                <ItemTemplate>
                                    <asp:Label ID="courseCodeLbl" runat="server" Text='<%# Eval("courseCode") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="20%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Course ID">
                                <ItemTemplate>
                                    <asp:Label ID="courseIDLbl" runat="server" Text='<%# Eval("courseID") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="10%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Course Name">
                                <ItemTemplate>
                                    <asp:Label ID="courseNameLbl" runat="server" Text='<%# Eval("courseName") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="30%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Section">
                                <ItemTemplate>
                                    <asp:Label ID="sectionNoLbl" runat="server" Text='<%# Eval("sectionNo") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="10%"></ItemStyle>
                            </asp:TemplateField>
                  </Columns>
                    </asp:GridView>
                 
                    </div>
              </div>
            </div>
  </section>
</asp:Content>
