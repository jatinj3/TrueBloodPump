<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="acceptor.aspx.cs" Inherits="acceptor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="text-align:center; margin-top:0px;">
        
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <asp:AdRotator ID="AdRotator1" runat="server" height="300px" width="1000px" AdvertisementFile="advertise.xml"/>
</ContentTemplate>
<Triggers>
<asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
</Triggers>
</asp:UpdatePanel>
<asp:Timer ID="Timer1" runat="server" Interval="2000">
</asp:Timer>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td style="margin-left:0px;"><asp:Label ID="Label1" runat="server" Text="Welcome:"></asp:Label><b> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></b></td>
<td><h4 style="margin-left:270px; margin-top:12px;">Logged-In|<a href="Home.aspx">Log-Out</a></h4></td>
</tr>

</table> 
<center><table><tr>
<td><a href="whoneedsblood.aspx">>>Who needs Blood?<<</a></td>
    </tr></table></center>   
   
    <table>
    <tr>
    <td><b>Find a blood group:-</b></td>
    </tr>  
   </table>
   <br />
  <center><table>
    <tr>
    <td>
            <center><asp:DropDownList ID="DropDownList1" runat="server" Height="22px" 
                Width="172px" >
                <asp:ListItem>---------------Select-----------------</asp:ListItem>
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>O</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
                <asp:ListItem>AB</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
            </asp:DropDownList></center>
            </td>
    </tr>
    <tr>
        
    <td><asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click"/></td>
    </tr>
    </table></center> <br />
   <center> <table>
    <tr>
        
    <td>
    <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </td>
        
    </tr>
    </table></center>
    <table>
    <tr>
    <td>
    <b>Make a blood request:-</b>
    </td>
    </tr>
    </table>
   <center><br /> <table><tr>
    <td>Name</td>
    <td>
        
    
   
    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox></td>
    </tr>
    
    <tr><td>Phone</td>
    <td><asp:TextBox ID="TextBox2" runat="server" 
            ontextchanged="TextBox2_TextChanged"></asp:TextBox></td>
    </tr>
    <tr><td>Comment</td>
    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
    </tr>
       
    <tr>
    <td><asp:Button ID="Button2" runat="server" Text="Send" onclick="Button2_Click" /></td><td><asp:Label
            ID="Label3" runat="server" Text=""></asp:Label></td>
    </tr>
    </table></center>
    
    </asp:Content>

