<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Registration.aspx.cs" Inherits="Admin_Student_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Registration form </title>
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
                                <label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">First Name</label>
                                <div class="col-lg-4">
                                   
                                    <asp:TextBox ID="txtfname" CssClass="form-control" required="" runat="server"></asp:TextBox>
                                   
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Last Name </label>
                                
                                <div class="col-lg-4">
                                    <asp:TextBox ID="txtlname" CssClass="form-control" required="" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Father Name</label>
                                <div class="col-lg-4">
                                  <asp:TextBox ID="txtfathername" CssClass="form-control" required="" runat="server"></asp:TextBox>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Mother Name</label>
                                <div class="col-lg-4">
                                   <asp:TextBox ID="txtMname" CssClass="form-control" required="" runat="server"></asp:TextBox>
                                </div>
                            </div>
                                 <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Date of Birth</label>
                                <div class="col-lg-4">
                                  <asp:TextBox ID="txtdob" CssClass="form-control" required="" TextMode="Date" runat="server"></asp:TextBox>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Gender</label>
                                <div class="col-lg-4">
                                    <asp:RadioButtonList ID="rdbgender"  runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Other</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                                  <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Category</label>
                                <div class="col-lg-4">
                                    <asp:RadioButtonList ID="rdbcategory" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem>General</asp:ListItem>
                                        <asp:ListItem>OBC</asp:ListItem>
                                        <asp:ListItem>SC</asp:ListItem>
                                        <asp:ListItem>ST</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Phone Number</label>
                                <div class="col-lg-4">
                                   <asp:TextBox ID="txtphone" CssClass="form-control"  MaxLength="10" required="" runat="server"></asp:TextBox>
                                </div>
                            </div>
                                  <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Alternate Phone Number</label>
                                <div class="col-lg-4">
                                  <asp:TextBox ID="txtaltphone" CssClass="form-control" required="" MaxLength="10" runat="server"></asp:TextBox>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Email</label>
                                <div class="col-lg-4">
                                   <asp:TextBox ID="txtemail" CssClass="form-control" required="" runat="server"></asp:TextBox>
                                </div>
                            </div>
                                 <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Qualification</label>
                                <div class="col-lg-4">
                                    <asp:DropDownList ID="drpqualification" CssClass="form-control" runat="server">
                                        <asp:ListItem>--Select--</asp:ListItem>
                                        <asp:ListItem>High School</asp:ListItem>
                                        <asp:ListItem>Intermediate</asp:ListItem>
                                        <asp:ListItem>Graduation</asp:ListItem>
                                        <asp:ListItem>Post Graduation</asp:ListItem>
                                        <asp:ListItem>Other</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Course Name </label>
                                <div class="col-lg-4">
                                   <asp:TextBox ID="txtcourse" CssClass="form-control" required="" runat="server"></asp:TextBox>
                                </div>
                            </div>
                                  <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Full Address</label>
                                <div class="col-lg-4">
                                  <asp:TextBox ID="txtaddress" CssClass="form-control" required="" runat="server"></asp:TextBox>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">City</label>
                                <div class="col-lg-4">
                                   <asp:TextBox ID="txtcity" CssClass="form-control" required="" runat="server"></asp:TextBox>
                                </div>
                            </div>
                                  <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Country</label>
                                <div class="col-lg-4">
                                  <asp:TextBox ID="txtcountry" CssClass="form-control" required="" runat="server"></asp:TextBox>
                                </div>
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Pincode</label>
                                <div class="col-lg-4">
                                   <asp:TextBox ID="txtpin" CssClass="form-control" required="" MaxLength="6" runat="server"></asp:TextBox>
                                </div>
                            </div>
                                 <div class="form-group">
                                <label for="inputPassword1" class="col-lg-2 col-sm-2 control-label">Upload Image </label>
                                <div class="col-lg-4">
                                    <asp:FileUpload ID="FileUpload1" required="" runat="server" />
                                </div>
                               
                            </div>


                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> Remember me
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Submit" OnClick="Button1_Click" Width="125px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                   
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </section>

            </div> 
      
        </section>
        </div>

 



<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>

    
    </div>
    </form>
</body>
</html>
