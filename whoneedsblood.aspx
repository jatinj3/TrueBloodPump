<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="whoneedsblood.aspx.cs" Inherits="whoneedsblood" %>

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
    <center style="font-style:italic; font-size:xx-large"><b><i><u>Who needs blood?</u></i></b></center><br /><br />
<b>Who needs blood?</b><br /><br />
Every 2 seconds someone needs blood. Your blood helps more than one life at a time. Accident victims, premature babies, patients undergoing major surgeries require whole blood, where your blood after testing is used directly. Patients suffering from trauma, anemia, and other surgeries require only red blood cells, which is separated from your blood. The procedure of splitting blood components is called Cytapheresis. Similarly blood platelets are used for cancer patients undergoing chemotherapy or for those undergoing treatment for dengue fever etc. Fresh frozen plasma is used for patients having massive transfusions, plasma is used for burns and cryoprecipitate is used for hemophilia.<br /><br />
<b>When is blood needed?</b><br /><br />
Blood is needed at regular intervals and at all times as it has only finite time of storage. Red blood cells can be stored for about 42 days, fresh frozen plasma and cryoprecipitate for 365 days and blood platelets for 5 days.<br /><br />
<b>Who can donate blood?</b><br /><br />
Anyone above 18 years weighing more than 50 kgs (110 lbs) can donate blood.<br /><br />
</asp:Content>

