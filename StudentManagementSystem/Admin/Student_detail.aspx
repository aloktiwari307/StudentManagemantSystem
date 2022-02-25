<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_detail.aspx.cs" Inherits="Admin_Student_detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Details Form </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <section>
	
	    
         <div class="col-lg-12" style="margin-top:50px">
                <section class="panel">
                  
                    <div class="panel-body">
                        <div class="position-center">
                            <div class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">Full Name</label>
                                <div class="col-lg-4">
                                   
                                    
                                    <asp:Label ID="Label1" runat="server"  Text="Label"></asp:Label>
                                   
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label"> </label>
                                
                                <div class="col-lg-4">
                                    <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Father Name</label>
                                <div class="col-lg-4">

                                  <asp:Label ID="Label3" runat="server"  Text="Label"></asp:Label>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Mother Name</label>
                                <div class="col-lg-4">
                                   <asp:Label ID="Label4" runat="server"  Text="Label"></asp:Label>
                                </div>
                            </div>
                                 <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Date of Birth</label>
                                <div class="col-lg-4">

                                  <asp:Label ID="Label5" runat="server"  Text="Label"></asp:Label>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Gender</label>
                                <div class="col-lg-4">
                                      <asp:Label ID="Label2" runat="server"  Text="Label"></asp:Label>
                                </div>
                            </div>
                                  <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Category</label>
                                <div class="col-lg-4">
                                    <asp:Label ID="Label14" runat="server" CssClass="col-lg-2 col-sm-2 control-label" Text="Label"></asp:Label>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Phone Number</label>
                                <div class="col-lg-4">
                                 <asp:Label ID="Label6" runat="server"  Text="Label"></asp:Label>
                                </div>
                            </div>
                                  <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Alternate Phone Number</label>
                                <div class="col-lg-4">
                                 <asp:Label ID="Label7" runat="server"  Text="Label"></asp:Label>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Email</label>
                                <div class="col-lg-4">
                                 <asp:Label ID="Label8" runat="server"  Text="Label"></asp:Label>
                                </div>
                            </div>
                                 <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Qualification</label>
                                <div class="col-lg-4">
                                     <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Course Name </label>
                                <div class="col-lg-4">
                                   <asp:Label ID="Label9" runat="server"  Text="Label"></asp:Label>
                                </div>
                            </div>
                                  <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Full Address</label>
                                <div class="col-lg-4">
                                 <asp:Label ID="Label10" runat="server"  Text="Label"></asp:Label>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">City</label>
                                <div class="col-lg-4">
                                  <asp:Label ID="Label11" runat="server"  Text="Label"></asp:Label>
                                </div>
                            </div>
                                  <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Country</label>
                                <div class="col-lg-4">
                                  <asp:Label ID="Label12" runat="server"  Text="Label"></asp:Label>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Pincode</label>
                                <div class="col-lg-4">
                                  <asp:Label ID="Label13" runat="server"  Text="Label"></asp:Label>
                                </div>
                            </div>
                                 <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Upload Image </label>
                                <div class="col-lg-4">
                                   
                                  <asp:Label ID="Label17" runat="server"  Text="Label"></asp:Label>
                                   
                                </div>
                               
                            </div><br />

                                 <div class="form-group">
                                
                                <div class="col-lg-4">
                                    <asp:Button ID="Button1" CommandArgument='<%#Eval("id") %>'   runat="server" Text="Update" OnClick="Button1_Click" />
                                </div>

                                <div class="col-lg-4">
                                   <asp:Button ID="Button2"  CommandArgument='<%#Eval("id") %>'  runat="server" Text="Delete" OnClick="Button2_Click" />
                                </div>
                            </div>
                            
                           
                        </div>
                        </div>
                    </div>
                </section>

            </div> 
      
        </section>

        </div>

    
    </form>
</body>
</html>
