<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="subjectList.aspx.cs" Inherits="MINIPROJECT.Student.subjectList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <section class="content-header">
      <h1>
        Course
        <small>Course Offer</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
        <li class="active">Course Offer</li>
      </ol>
    </section>
    <section class="content" >
        <div class="row">
             <div class="box-body" >
             <asp:Table runat="server" CssClass="table">
                 <asp:TableRow>
                     <asp:TableCell CssClass="col-md-3">
                         <asp:DropDownList Width="100%" Height="30px" ID="DropDownList2" AppendDataBoundItems="true" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                             <asp:ListItem Value="0" Text="Choose year and semester"></asp:ListItem>
                         </asp:DropDownList>                    
                     </asp:TableCell>
                 </asp:TableRow>
             </asp:Table>

            <asp:GridView CssClass="table table-bordered table-hover" EmptyDataText="No course available" ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="false" DataKeyNames="course_offered_ID, sectionID">
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
                    <asp:TemplateField HeaderText="Credit Hour" HeaderStyle-CssClass="header-center">
                        <ItemTemplate>
                            <asp:Label ID="creditHourLbl" runat="server" Text='<%# Eval("creditHours") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Section" HeaderStyle-CssClass="header-center">
                        <ItemTemplate>
                            <asp:Label ID="sectionNoLbl" runat="server" Text='<%# Eval("sectionNo") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="10%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lecturer Name" HeaderStyle-CssClass="header-center">
                        <ItemTemplate>
                            <asp:Label ID="lecturerNameLbl" runat="server" Text='<%# Eval("lecturerName") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle Width="30%"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button runat="server" ID="addCourseBtn" CssClass="btn btn-success" Text="Add" OnClick="addCourseBtn_Click"/>
                        </ItemTemplate>
                    </asp:TemplateField>
              </Columns>
            </asp:GridView>
            </div>
         </div>
       </section>
</asp:Content>
