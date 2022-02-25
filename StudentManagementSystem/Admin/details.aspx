<%@ Page Language="C#" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="Admin_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <style>
      .gid{
          margin-left:180px;
          margin-top:70px;
     }
  </style>
</head>
<body style="background-color:lightcyan">
    <form id="form1" runat="server">
    <div> 
        <center><h1 style="margin-top:30px;"><em>Student Details</em></h1></center>



        <asp:GridView ID="GridView1" runat="server" class="gid" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="242px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1222px" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" PageSize="8">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Roll Numer" InsertVisible="False" ReadOnly="True" SortExpression="Id" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="std_name" HeaderText="Student Name" SortExpression="std_name" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="f_name" HeaderText="Father Name" SortExpression="f_name" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="M_name" HeaderText="M_name" SortExpression="M_name" Visible="False" >
                </asp:BoundField>
                <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" Visible="False" >
                </asp:BoundField>
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Alterphone" HeaderText="Alterphone" SortExpression="Alterphone" Visible="False" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" Visible="False" />
                <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" Visible="False" />
                <asp:BoundField DataField="Course_name" HeaderText="Course_name" SortExpression="Course_name" Visible="False" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" Visible="False" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" Visible="False" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" Visible="False" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" Visible="False" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" Visible="False" />
                <asp:CommandField HeaderText="Action" SelectText="view Details" ShowSelectButton="True" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student_details]"></asp:SqlDataSource>
    




    </div>
    </form>
</body>
</html>
