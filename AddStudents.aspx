<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddStudents.aspx.cs" Inherits="MyProject.AddStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
        }
    .auto-style2 {
        width: 626px;
    }
    .auto-style3 {
        width: 242px;
    }
    .auto-style4 {
        width: 242px;
        height: 27px;
    }
    .auto-style5 {
        width: 626px;
        height: 27px;
    }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <div  id="sidebar-wrapper" style="background-color:#A0A0A0;border-top-left-radius:10px;border-bottom-left-radius:10px">
            <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
                    class="fas fa-user-secret me-2"></i>Welcome Admin</div>
            <div class="list-group list-group-flush my-3" >
                <asp:LinkButton ID="LinkButton5" runat="server" href="AdminDashboard.aspx" class="list-group-item list-group-item-action bg-transparent second-text active " style="color:white" >Dashboard</asp:LinkButton>
                
                <asp:LinkButton ID="LinkButton4" runat="server" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" style="color:#8b008b;font-family:sans-serif" >Add Students</asp:LinkButton>
                
                <asp:LinkButton ID="LinkButton3" runat="server" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" style="color:white;font-family:sans-serif" OnClick="LinkButton3_Click">Add Staffs</asp:LinkButton>
                
                <asp:LinkButton ID="LinkButton2" runat="server" href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" style="color:white;font-family:sans-serif">Edit Internal Marks</asp:LinkButton>
                
                
                
            </div>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper" style="background-color:#E6E6E6; border-top-right-radius:10px;border-bottom-right-radius:10px ">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle-dashboard" style="color:#8b008b"></i>
                    <h2 class="fs-2 m-0" style="color:#8b008b">Student Details</h2>
                </div>    
            </nav>    
             <div class="container" >
                 
                       <div class="mb-3 mt-3">
                            <label for="Fullname" class="form-label">FullName:</label>
                           <asp:TextBox ID="Fullname" type="text" class="form-control w-25" placeholder="Enter FullName" name="Fullname" runat="server" required></asp:TextBox>                         
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Fullname" Display="Dynamic" ErrorMessage="Should not contain Numbers" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
                      </div>
                      
                      <div class="mb-3 mt-3">
                            <label for="Emailid" class="form-label">EmailID:</label>
                          <asp:TextBox ID="Emailid" type="email" class="form-control w-25" runat="server" placeholder="Enter EmailID" name="Emailid" required></asp:TextBox>            
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Emailid"    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"   Display = "Dynamic" ErrorMessage = "Invalid email address"/>
                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
                      </div>

                      <div class="mb-3 mt-3">
                        <label for="Password" class="form-label">Password:</label>
                          <asp:TextBox ID="Password" type="password" class="form-control w-25" runat="server" placeholder="Enter password" name="Password" value="srmasc@123" required></asp:TextBox>                       
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="Password should contain special characters as well numbers" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;amp;])[A-Za-z\d$@$!%*#?&amp;amp;]{8,}$"></asp:RegularExpressionValidator>
                        <div class="valid-feedback">Valid.</div>
                        <div class="invalid-feedback">Please fill out this field.</div>
                      </div>
                      
                      <div class="mb-3 mt-3">
                            <label for="Department" class="form-label">Department:</label>
                          <asp:DropDownList ID="StudentDepartmentSelection" runat="server">
                              <asp:ListItem>B.Sc Computer Science</asp:ListItem>
                              <asp:ListItem>BBA</asp:ListItem>
                              <asp:ListItem>BCA</asp:ListItem> 
                              <asp:ListItem>B.Sc Microbiology</asp:ListItem> 
                              <asp:ListItem>B.Sc Biotechnology</asp:ListItem> 
                              <asp:ListItem>B.Sc Biochemistry</asp:ListItem> 
                              <asp:ListItem>B.Sc Visual Communication</asp:ListItem>
                              <asp:ListItem>MCA</asp:ListItem>
                              <asp:ListItem>MBA</asp:ListItem> 
                              <asp:ListItem>M.Sc Biochemistry</asp:ListItem> 
                              <asp:ListItem>M.Sc Biotechnology</asp:ListItem> 
                              <asp:ListItem>M.Sc Microbiology</asp:ListItem> 
                              <asp:ListItem>M.Sc Visual Communication</asp:ListItem>
                              <asp:ListItem>M.Sc Computer Science & Technology</asp:ListItem>                             
                              <asp:ListItem>M.Sc Computer Science</asp:ListItem>
                          </asp:DropDownList>
                            
                            <div class="invalid-feedback">Please fill out this field.</div>
                      </div>

                      <div class="mb-3 mt-3">
                            <label for="Department" class="form-label">Year:</label>
                          <asp:DropDownList ID="StudentYearSelection" runat="server">
                              <asp:ListItem>1st</asp:ListItem>
                              <asp:ListItem>2nd</asp:ListItem>
                              <asp:ListItem>3rd</asp:ListItem> 
                              <asp:ListItem>4th</asp:ListItem> 
                              <asp:ListItem>5th</asp:ListItem>                             
                          </asp:DropDownList>
                            
                            <div class="invalid-feedback">Please fill out this field.</div>
                      </div>

                 <asp:Button ID="Button1" runat="server" Text="Click to Add" class="btn" style="background-color:#8b008b;color:white" OnClick="Button1_Click"/>
  
                     
             </div>
            
        </div>
      
    </div>
    
  
</asp:Content>
