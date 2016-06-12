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
                                    <asp:DropDownList runat="server" AppendDataBoundItems="true" Width="100%" Height="30px" ID="DropDownList1" >
                                        <asp:ListItem Text="Choose Course Code"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="col-md-3">
                                   
                                    <asp:DropDownList Width="100%" Height="30px" ID="DropDownList2" runat="server"></asp:DropDownList>
                                </td>
                                <td class="col-md-3">
                                    <asp:DropDownList Width="100%" Height="30px" ID="DropDownList3" runat="server"></asp:DropDownList>
                                </td>
                         
                            </tr>
                        </tbody>  
                         </table>
                   <br />
                    <asp:GridView ID="GridView1" runat="server" >
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
                    </div>
              </div>
            </div>
  </section>
</asp:Content>
