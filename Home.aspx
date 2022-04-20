<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 271px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <center style="font-style:italic; font-size:xx-large"><b><i>!!Welcome to True Blood Pump!!</i></b></center><br /><br />
    <%--<b>Are you READY to SAVE LIFE?</b>--%>
    <fieldset style="border-width:thick;">
    <legend style="font-size:x-large; font-weight:bolder;">Login Here</legend>
    <%--<div class="loginpaneldiv1">
    <div class="usernametext">Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </div>
<div class="usernametextbox"><input type="text" name="uname" placeholder="enter username*" required="required"  /></div>
        </div>
<div class="loginpaneldiv1">
<div class="usernametext">Password</div>
<div class="usernametextbox"><input type="text" name="uname1" placeholder="enter password*" required="required" size="20"  /></div></div><br />--%>
        <table style="width: 430px; height: 177px" >
        <tr>
        <td class="style4">
        <asp:Label ID="Label2" runat="server" Text="Username" placeholder="enter username*" required="required" ></asp:Label></td>
        <td class="style4"></td>
        <td class="style1"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
        <tr>
        <td class="style8"><asp:Label ID="Label3" runat="server" Text="Password" placeholder="enter password*" required="required"></asp:Label></td>
        <td class="style8"></td>
        <td class="style1"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
            <td class="style8"><asp:ImageButton ID="ImageButton1" runat="server" Height="55px" 
                    ImageUrl="~/images/16225625-login-icon-Stock-Photo-button.jpg" 
                    onclick="ImageButton1_Click" style="margin-left: 2px" Width="99px" />&nbsp;</td></tr>
            
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="Login as:"></asp:Label></td>
        <td></td>
        
        <td class="style1">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                Height="22px" Width="140px">
            <asp:ListItem Value="-------Select Role-------">-------Select Role-------</asp:ListItem>
            <asp:ListItem>Donor</asp:ListItem>
            <asp:ListItem>Acceptor</asp:ListItem>
            <asp:ListItem>Administrator</asp:ListItem>
        </asp:DropDownList>
            
            </td>
            <td><asp:Label ID="Label4" runat="server"></asp:Label></td>
        
        
        </tr>
       
       </table>
       
    </fieldset>
    
    <br />
        <center style=" color:Green; font-size:larger; font-style:oblique; font-weight:bolder;">??Are you ready to save life??</center>
        
         <fieldset style="border-width:thick; height: 127px; width: 560px;">
         <legend style="font-size: x-large; font-weight: bolder;">Register as</legend>
         <table style="width: 560px; height: 93px">
         <tr>
         <td class="style10">
             <asp:ImageButton ID="ImageButton2" runat="server" Height="95px" 
                 ImageUrl="~/images/41AfZ8Ox2jL.jpg" Width="190px" 
                 onclick="ImageButton2_Click1" />
             </td>
         <td class="style11">
             
             </td>
             
         <td>
             <asp:ImageButton ID="ImageButton3" runat="server" Height="95px" 
                 ImageUrl="~/images/Capture.JPG" style="margin-left: 100px; margin-bottom: 0px" 
                 Width="190px" onclick="ImageButton3_Click" />
             </td>

         </tr>
         </table>
         </fieldset>
        <br /><br />
        
    
        
        
</asp:Content>



