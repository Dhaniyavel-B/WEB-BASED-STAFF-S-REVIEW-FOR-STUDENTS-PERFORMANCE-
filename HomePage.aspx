<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MyProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid text-center" >
        <div class="row">
            <div class="col-md-12">
                <h1 style="color:#8b008b">Welcome to SRM Arts and Science College</h1>
                <p>SRM Arts and Science College, Affiliated to the University of Madras is a division of Sri Ramaswamy Memorial Group (SRM Group) of Educational Institutions for higher education.  It functions under the aegis of Valliammai Educational Society since 1993.  The Society was founded in the year 1975 by Dr. T. R. Paarivendhar, Honorable Member of Parliament, celebrated teacher and educationist, to promote higher education.  Having developed the concept for true education and intellectual integrity, the SRM Group focuses on providing World-Class Education with outstanding infrastructure.</p>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <div class="row">
            <div class="col-md-12">
                <h1 style="color:#8b008b">Internal Assessment System</h1>
            </div>
        </div>
        <div class="row ">
            <div class="col-md-4 ">
                <img src="imgs/Admin%20Image.jpg" width="130"/>
                <asp:LinkButton ID="LinkButton3" runat="server" style="color:#8b008b;text-decoration:none;font-size:larger;font-weight:600" href="AdminLogIn.aspx">Admin Login</asp:LinkButton>
            </div>
            <div class="col-md-4">
                <img src="imgs/Staff%20Image.jpg" width="150" />
                <asp:LinkButton ID="LinkButton1" runat="server" style="color:#8b008b;text-decoration:none;font-size:larger;font-weight:600" href="StaffLogIn.aspx">Staff Login</asp:LinkButton>
            </div>
            <div class="col-md-4">
                <img src="imgs/Student%20Image.jpg" width="150" />
                <asp:LinkButton ID="LinkButton2" runat="server" style="color:#8b008b;text-decoration:none;font-size:larger;font-weight:600" href="StudentLogIn.aspx">Student Login</asp:LinkButton>
            </div>
        </div>
        
            
        
       
        <br />
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        
    </div>
    
    
</asp:Content>
