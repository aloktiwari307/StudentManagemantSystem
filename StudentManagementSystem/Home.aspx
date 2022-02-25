<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
		*{
			text-decoration: none;
			margin: 0px;
			padding: 0px;
		}
	</style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
		
            <asp:Image ID="Image1" runat="server"  style="height: 60px;width: 60px; margin-left: 100px;"  ImageUrl="~/image/cap.jpg" />
		<label style="font-size: 40px ; color: orange; margin-left: 40px;">Student Management System</label>
	</div>

        
       
            <div style="background-color: orange">
			<span style="margin: 70px; font-size: 20px; "><a href="#">Home</a></span>
			<span style="margin: 70px;font-size: 20px;"><a href="#">About Us</a></span>
			<span style="margin: 70px;font-size: 20px;"> <a href="#">Registration</a></span>
			<span style="margin: 70px;font-size: 20px;"><a href="#">Contact us</a></span>
			<span style="margin: 70px;font-size: 20px;"><a href="#">Feedback</a></span>
			<span style="margin: 70px;font-size: 20px;"><a href="Login.aspx">Login</a></span>
		</div>

        




      
		
		<div>
			
            <asp:Image ID="Image2" runat="server"  style="width: 100%;height: 630px;" ImageUrl="~/image/class3.jpg" />
		</div>
		<div>
		
		
		</div>

    
    </div>
    </form>
</body>
</html>
