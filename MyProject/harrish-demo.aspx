<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="harrish-demo.aspx.cs" Inherits="MyProject.harrish_demo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="harrish-demo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="form-group " id="1st-div">
        
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowCancelingEdit="GridView1_RowCancelingEdit"   
  
OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">  
            <Columns>  
                 
                <asp:TemplateField HeaderText="ID">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("ID") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("Name") %>'></asp:Label>  
                    </ItemTemplate>  
                      
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Register">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Register" runat="server" Text='<%#Eval("Register") %>'></asp:Label>  
                    </ItemTemplate>  
                      
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="1">  
                    <ItemTemplate>  
                          
                        <asp:TextBox ID="txt_1" runat="server" Text='<%#Eval("A1") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A1" runat="server" Text='<%#Eval("A1") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Value either be 0 or 1" ForeColor="Red" MaximumValue="1" MinimumValue="0" ControlToValidate="txt_A1"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="2">  
                    <ItemTemplate>  
                         
                        <asp:TextBox ID="txt_2" runat="server" Text='<%#Eval("A2") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A2" runat="server" Text='<%#Eval("A2") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Value either be 0 or 1" ForeColor="Red" MaximumValue="1" MinimumValue="0" ControlToValidate="txt_A2"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="3">  
                    <ItemTemplate>  
                         
                        <asp:TextBox ID="txt_3" runat="server" Text='<%#Eval("A3") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A3" runat="server" Text='<%#Eval("A3") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Value either be 0 or 1" ForeColor="Red" MaximumValue="1" MinimumValue="0" ControlToValidate="txt_A3"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="4">  
                    <ItemTemplate>  
                        
                        <asp:TextBox ID="txt_4" runat="server" Text='<%#Eval("A4") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A4" runat="server" Text='<%#Eval("A4") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator4" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Value either be 0 or 1" ForeColor="Red" MaximumValue="1" MinimumValue="0" ControlToValidate="txt_A4"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="5">  
                    <ItemTemplate>  
                        
                        <asp:TextBox ID="txt_5" runat="server" Text='<%#Eval("A5") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A5" runat="server" Text='<%#Eval("A5") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator5" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Value either be 0 or 1" ForeColor="Red" MaximumValue="1" MinimumValue="0" ControlToValidate="txt_A5"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="6">  
                    <ItemTemplate>  
                         
                        <asp:TextBox ID="txt_6" runat="server" Text='<%#Eval("A6") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A6" runat="server" Text='<%#Eval("A6") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator6" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Value either be 0 or 1" ForeColor="Red" MaximumValue="1" MinimumValue="0" ControlToValidate="txt_A6"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="7">  
                    <ItemTemplate>  
                        
                        <asp:TextBox ID="txt_7" runat="server" Text='<%#Eval("A7") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A7" runat="server" Text='<%#Eval("A7") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator7" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Value either be 0 or 1" ForeColor="Red" MaximumValue="1" MinimumValue="0" ControlToValidate="txt_A7"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="8">  
                    <ItemTemplate>  
                        
                        <asp:TextBox ID="txt_8" runat="server" Text='<%#Eval("A8") %>' Width="30" value=""></asp:TextBox> 
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A8" runat="server" Text='<%#Eval("A8") %>' Width="30" value="0"></asp:TextBox> 
                        <asp:RangeValidator ID="RangeValidator8" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Enter value upto 5 only" ForeColor="Red" MaximumValue="5" MinimumValue="0" ControlToValidate="txt_A8"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="9">  
                    <ItemTemplate>  
                         
                        <asp:TextBox ID="txt_9" runat="server" Text='<%#Eval("A9") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A9" runat="server" Text='<%#Eval("A9") %>' Width="30" value="0"></asp:TextBox> 
                        <asp:RangeValidator ID="RangeValidator9" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Enter value upto 5 only" ForeColor="Red" MaximumValue="5" MinimumValue="0" ControlToValidate="txt_A9"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="10">  
                    <ItemTemplate>  
                         
                        <asp:TextBox ID="txt_10" runat="server" Text='<%#Eval("A10") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A10" runat="server" Text='<%#Eval("A10") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator10" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Enter value upto 5 only" ForeColor="Red" MaximumValue="5" MinimumValue="0" ControlToValidate="txt_A10"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="11">  
                    <ItemTemplate>  
                         
                        <asp:TextBox ID="txt_11" runat="server" Text='<%#Eval("A11") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A11" runat="server" Text='<%#Eval("A11") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator11" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Enter value upto 5 only" ForeColor="Red" MaximumValue="5" MinimumValue="0" ControlToValidate="txt_A11"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="12">  
                    <ItemTemplate>  
                        
                        <asp:TextBox ID="txt_12" runat="server" Text='<%#Eval("A12") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A12" runat="server" Text='<%#Eval("A12") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator12" runat="server" Type="Integer"  Display="Dynamic" ErrorMessage="Enter value upto 10 only" ForeColor="Red" MaximumValue="10" MinimumValue="0" ControlToValidate="txt_A12"></asp:RangeValidator>
                        
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="13">  
                    <ItemTemplate>  
                        
                        <asp:TextBox ID="txt_13" runat="server" Text='<%#Eval("A13") %>' Width="30" value=""></asp:TextBox>
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_A13" runat="server" Text='<%#Eval("A13") %>' Width="30" value="0"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator13" runat="server" Type="Integer" Display="Dynamic" ErrorMessage="Enter value upto 10 only" ForeColor="Red" MaximumValue="10" MinimumValue="0" ControlToValidate="txt_A13"></asp:RangeValidator>
                    </EditItemTemplate>  
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total">  
                    <ItemTemplate>  
                         
                        <asp:TextBox ID="txt_Total1" runat="server" Text='<%#Eval("Total") %>' Width="50" value=""></asp:TextBox> 
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Total" runat="server" Text='<%#Eval("Total") %>' Width="50" value="0"></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>
                 <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>
            </Columns>  
            <HeaderStyle BackColor="#663300" ForeColor="#ffffff"/>  
            <RowStyle BackColor="#e7ceb6"/>  
        </asp:GridView> 
        
    </div>
    <script src="harrish-demo.js"></script>
</asp:Content>
