<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bloodfact.aspx.cs" Inherits="Bloodfact" %>

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
    <center style="font-style:italic; font-size:xx-large"><b><i><u>Blood Fact</u></i></b></center><br /><br />
<b>Blood Groups</b><br />
Blood type is determined by which antibodies and antigens the person's blood produces. An individual has two types of blood groups namely ABO-grouping and Rh-grouping. Rh is called as the Rhesus factor that has come to us from Rhesus monkeys.<br />
Most humans are in the ABO blood group. The ABO group has four categories namely<br /> 
1) A group 2) B group 3) O group and 4) AB group<br />
In the Rh- group, either the individual is said to be Rh- Negative or Rh- Positive.<br />
Thus blood group of any human being will mainly fall in any one of the following groups. <br />
A positive or A negative 
B positive or B negative 
O positive or O negative 
AB positive or AB negative.<br />
<b>Universal Donors and Recipients</b><br />
The most common blood type is O, followed by type A.
Type O individuals are often called "universal donors" since their blood can be transfused into persons with any blood type. Those with type AB blood are called "universal recipients" because they can receive blood of any type.
However, since approximately twice as many people in the general population have O and A blood types, a blood bank's need for this type of blood increases exponentially.<br />
<b>A Healthy Donor</b><br />
A healthy diet helps ensure a successful blood donation, and also makes you feel better! Check out the following recommended foods to eat prior to your donation.<br />
1. Low fat foods<br />
2. Iron rich foods<br />

</asp:Content>

