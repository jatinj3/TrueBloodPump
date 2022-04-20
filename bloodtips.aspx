<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bloodtips.aspx.cs" Inherits="bloodtips" %>

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
    <center style="font-style:italic; font-size:xx-large"><b><i><u>Tips on donating</u></i></b></center><br /><br />
Donating blood is safe and simple. It takes approximately 10-15 minutes to complete the blood donation process. Any healthy adult between 18 years and 60 years of age can donate blood. This is what you can expect when you are ready to donate blood:<br /><br />1. You walk into a reputed and safe blood donation centre or a mobile camp organized by a reputed institution.<br />
2. A few questions will be asked to determine your health status (general questions on health, donation history etc). Usually you will be asked to fill out a short form.<br />
3. Then a quick physical check will be done to check temperature, blood pressure, pulse and hemoglobin content in blood to ensure you are a healthy donor.<br />
4. If found fit to donate, then you will be asked to lie down on a resting chair or a bed. Your arm will be thoroughly cleaned. Then using sterile equipments blood will be collected in a special plastic bag. Approximately 350 ml of blood will be collected in one donation. Those who weigh more than 60 Kg can donate 450 ml of blood.<br />
5. Then you must rest and relax for a few minutes with a light snack and something refreshing to drink. Some snacks and juice will be provided.<br />
6. Blood will be separated into components within eight hours of donation<br />
7. The blood will then be taken to the laboratory for testing.<br />
8. Once found safe, it will be kept in special storage and released when required.<br />
9. The blood is now ready to be taken to the hospital, to save lives.<br />
</asp:Content>

