<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogIn.aspx.cs" Inherits="MyProject.AdminLogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <br />    
     <div class="container-fluid register-container">
      <div class="row">
         <div class="col-md-5 mx-auto ">
            <div class="card ">
               <div class="card-body ">
                  <div class="row">
                     <div class="col">
                        <center>
                            <img src="imgs/Admin%20Image.jpg" width="100"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Admin LogIn</h4>
                           
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>                                    
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label style="font-weight:600">Admin ID</label>
                        <div class="form-group">
                           <asp:TextBox type="text" class="form-control" ID="TextBox8" runat="server" placeholder="Enter ID" name="TextBox8" required></asp:TextBox>
                            <div class="invalid-feedback">Please fill out this field.</div>
                        </div>
                         
                     </div>
                     <div class="col-md-6">
                        <label style="font-weight:600">Admin Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Enter Password" TextMode="Password" required></asp:TextBox>
                            <div class="invalid-feedback">Please fill out this field.</div>
                        </div>
                     </div>                    
                  </div>
                   <br />
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn  btn-block btn-lg" ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" style="background-color:#E6E6E6" />
                           </div>
                        </center>
                     </div>
                  </div>
                   <br />
                  
                  
               </div>
            </div>
            <a style="color:#8b008b;text-decoration:none;font-weight:500" href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
