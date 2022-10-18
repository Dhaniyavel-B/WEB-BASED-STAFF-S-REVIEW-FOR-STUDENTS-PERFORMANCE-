<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="MyProject.AdminWelcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="flipcard2.css" rel="stylesheet" />
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <div  id="sidebar-wrapper" style="background-color:#A0A0A0;border-top-left-radius:10px;border-bottom-left-radius:10px">
            <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
                    class="fas fa-user-secret me-2"></i>Welcome Admin</div>
            <div class="list-group list-group-flush my-3" >
                <asp:LinkButton ID="LinkButton5" runat="server" href="AdminDashboard.aspx" class="list-group-item list-group-item-action bg-transparent second-text active " >Dashboard</asp:LinkButton>
                
                <asp:LinkButton ID="LinkButton4" runat="server" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" style="color:white;font-family:sans-serif" OnClick="LinkButton4_Click">Add Students</asp:LinkButton>
                
                <asp:LinkButton ID="LinkButton3" runat="server" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" style="color:white;font-family:sans-serif" OnClick="LinkButton3_Click">Add Staffs</asp:LinkButton>
                
                <asp:LinkButton ID="LinkButton2" runat="server" href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold" style="color:white;font-family:sans-serif">Internal Marks</asp:LinkButton>
                
                
                
            </div>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper" style="background-color:#E6E6E6; border-top-right-radius:10px;border-bottom-right-radius:10px ">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle-dashboard" style="color:#8b008b"></i>
                    <h2 class="fs-2 m-0" style="color:#8b008b">Dashboard</h2>
                </div>    
            </nav>

            <div class="container-fluid px-4">
                <div class="row g-3 my-2">
                    <div class="col-md-6">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>                               
                                
                                
                                <div class="wrapper">
                    <div id="piechart"></div>
                                    <p class="fs-5"><b>Total Staffs</b></p>
                                    <h1 runat="server" class="fs-2" id="staffcountdashboard"></h1>
                                    <div id="donutchart" ></div>
                </div>
                                
                            </div>
                            
                            
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <p class="fs-5"><b>Total Students</b></p>
                                <h1 runat="server" class="fs-2" id="studentcountdashboard"></h1>
                                
                                
                            </div>
                            
                        </div>
                    </div>

                    

                   
                </div>
                
               
                                    
                 
                
                <div class="row my-5">
                    <h3 class="fs-4 mb-3" style="color:#8b008b">Recently Updated Details</h3>
                    
                    
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">RRN</th>
                                    <th scope="col">Department</th>
                                    <th scope="col">TimeOut</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>1234</td>
                                    <td>MCA</td>
                                    <td>10.00 AM</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>12345</td>
                                    <td>MBA</td>
                                    <td>11.00 AM</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td> 123456</td>
                                    <td>MSc.CST</td>
                                    <td>12.00 PM</td>
                                </tr>
                               
                               
                               
                               
                            </tbody>
                        </table>
                        
                    </div>
                    <asp:Label ID="mca_count" runat="server" Text="Label" style="display:none"></asp:Label>
                    <asp:Label ID="mba_count" runat="server" Text="Label" style="display:none"></asp:Label>
                    <asp:Label ID="bca_count" runat="server" Text="Label" style="display:none"></asp:Label>
                    <asp:Label ID="bba_count" runat="server" Text="Label" style="display:none"></asp:Label>
                    <asp:Label ID="msccst_count" runat="server" Text="Label" style="display:none"></asp:Label>
                    
                </div>

                
            </div>
            
        </div>
    </div>

    <br />
    <br />

    <script type="text/javascript">
        var mcacount = parseInt(document.getElementById('<%= mca_count.ClientID %>').innerHTML);
        var mbacount = parseInt(document.getElementById('<%= mba_count.ClientID %>').innerHTML);
        var bcacount = parseInt(document.getElementById('<%= bca_count.ClientID %>').innerHTML);
        var bbacount = parseInt(document.getElementById('<%= bba_count.ClientID %>').innerHTML);
        var msccstcount = parseInt(document.getElementById('<%= msccst_count.ClientID %>').innerHTML);




        google.charts.load("current", { packages: ["corechart"] });
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
                ['BCA', bcacount],
                ['MBA', mbacount],
                ['MCA', mcacount],
                ['BBA', bbacount],
                ['M.Sc CST', msccstcount]
            ]);

            var options = {
                title: 'Staff Count',
                pieHole: 0.6,
                'width': 550,
                'height':400
            };

            var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
            chart.draw(data, options);
        }
    </script>


       
</asp:Content>
