<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="subjectList.aspx.cs" Inherits="MINIPROJECT.Student.subjectList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
     <style>
        /*Calendar Control CSS*/
        .cal_Theme1 .ajax__calendar_container {
            background-color: #DEF1F4;
            border:solid 1px #77D5F7;
        }

        .cal_Theme1 .ajax__calendar_header  {
            background-color: #ffffff;
            margin-bottom: 4px;
        }

        .cal_Theme1 .ajax__calendar_title,
        .cal_Theme1 .ajax__calendar_next,
        .cal_Theme1 .ajax__calendar_prev    {
            color: #004080;
            padding-top: 4px;
        }

        .cal_Theme1 .ajax__calendar_body    {
            background-color: #ffffff;
            border: solid 1px #77D5F7;
        }

        .cal_Theme1 .ajax__calendar_dayname {
            text-align:center;
            font-weight:bold;
            margin-bottom: 4px;
            margin-top: 2px;
            color: #004080;
        }

        .cal_Theme1 .ajax__calendar_day {
            color: #004080;
            text-align:center;
        }

        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_day,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_month,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_year,
        .cal_Theme1 .ajax__calendar_active  {
            color: #004080;
            font-weight: bold;
            background-color: #DEF1F4;
        }

        .cal_Theme1 .ajax__calendar_today   {
            font-weight:bold;
        }

        .cal_Theme1 .ajax__calendar_other,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_today,
        .cal_Theme1 .ajax__calendar_hover .ajax__calendar_title {
            color: #bbbbbb;
        }
        .auto-style1 {
            height: 22px;
            width: 169px;
        }
        .auto-style2 {
            width: 169px;
        }
        .header-center{
            text-align:center;
        }
        .padding{
            padding:10px;
        }
    </style>

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
                             <asp:ListItem Text="Choose year and semester"></asp:ListItem>
                         </asp:DropDownList>                    
                     </asp:TableCell>
                 </asp:TableRow>
             </asp:Table>

            <asp:GridView CssClass="table table-bordered table-hover"  ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="false" DataKeyNames="course_offered_ID" >
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
                <ItemStyle Width="40%"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Credit Hour" HeaderStyle-CssClass="header-center">
                <ItemTemplate>
                    <asp:Label ID="creditHourLbl" runat="server" Text='<%# Eval("creditHours") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="20%"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Section" HeaderStyle-CssClass="header-center">
                <ItemTemplate>
                    <asp:Label ID="creditHourLbl" runat="server" Text='<%# Eval("sectionNo") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="20%"></ItemStyle>
            </asp:TemplateField>
              </Columns>
                <RowStyle HorizontalAlign="Center" Height="30px" />
            </asp:GridView>
            </div>
         </div>
       </section>
</asp:Content>
