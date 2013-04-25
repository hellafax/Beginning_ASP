<%@ Page Language="C#" %>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
  
<script runat="server">  
    protected void Button1_Click(object sender, System.EventArgs e)  
    {  
        ListItem li = new ListItem();  
        li.Text = TextBox1.Text.ToString();  
        BulletedList1.Items.Add(li);  
        Label1.Text = "ListItem added in BulletedList: " + li.Text;  
    }  
</script>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head id="Head1" runat="server">  
    <title>How to add list item in BulletedList programmatically</title>  
</head>  
<body>  
    <form id="form1" runat="server">  
    <div>  
        <h2 style="color:Red">BulletedList example: Add List Item</h2>  
        <asp:Label   
             ID="Label1"   
             runat="server"  
             Font-Bold="true"  
             ForeColor="SeaGreen"  
             Font-Size="Large"  
             >  
        </asp:Label>  
        <br /><br />  
        <asp:Label   
             ID="Label2"   
             runat="server"   
             Text="Color List"  
             Font-Bold="true"  
             ForeColor="DodgerBlue"  
             >  
        </asp:Label>  
        <br />  
        <asp:BulletedList   
             ID="BulletedList1"  
             runat="server"  
             BackColor="DodgerBlue"  
             ForeColor="Snow"  
             Width="250"  
             >  
             <asp:ListItem>Magenta</asp:ListItem>  
             <asp:ListItem>MediumBlue</asp:ListItem>  
             <asp:ListItem>Orchid</asp:ListItem>  
             <asp:ListItem>PaleGoldenRod</asp:ListItem>  
             <asp:ListItem>Maroon</asp:ListItem>  
        </asp:BulletedList>  
        <br />  
        <asp:Label   
             ID="Label3"   
             runat="server"  
             ForeColor="DodgerBlue"  
             Text="Item Text"  
             >  
        </asp:Label>  
        <asp:TextBox   
             ID="TextBox1"  
             runat="server"  
             BackColor="DodgerBlue"  
             ForeColor="Snow"  
             >  
        </asp:TextBox>  
        <br />  
        <asp:Button   
             ID="Button1"   
             runat="server"  
             Text="Add List Item"  
             Font-Bold="true"  
             ForeColor="DodgerBlue"  
             OnClick="Button1_Click"  
             />  
    </div>  
    </form>  
</body>  
</html>  