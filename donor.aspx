<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="donor.aspx.cs" Inherits="donor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="text-align:center; margin-top:0px;">
        
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <asp:AdRotator ID="AdRotator1" runat="server" height="300px" width="1000px" 
        AdvertisementFile="advertise.xml" onadcreated="AdRotator1_AdCreated"/>
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
<td><h4 style="margin-left:230px; margin-top:12px;">Logged-In|<a href="Home.aspx">Logged-Out</a></h4></td>
</tr>
</table><br />
<center><table><tr>
<td><a href="whydonateblood.aspx">>>Why donate Blood?<<</a></td>
    </tr></table></center><br />
<table>
<tr>
<td><b><u>BLOOD REQUESTS:-</u></b></td>
</tr>
<tr>
<td><asp:Button ID="Button1" runat="server" 
        Text="Click here to see blood request" onclick="Button1_Click" /></td>
</tr></table><br />
<center><table>
<tr>
<td><asp:GridView ID="GridView1" runat="server">
    </asp:GridView></td>
    <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
</tr>

</table></center>
    
</asp:Content>

