<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="whydonateblood.aspx.cs" Inherits="whydonateblood" %>

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
    <center style="font-style:italic; font-size:xx-large"><b><i><u>Why donate blood?</u></i></b></center><br /><br />
Safe Blood Saves Lives And Improves Health. Blood Transfusion Is Needed For:<br />

1. Women With Complications Of Pregnancy, Such As Ectopic Pregnancies And Haemorrhage Before, During Or After Childbirth;<br />
 
2.Children With Severe Anaemia Often Resulting From Malaria Or Malnutrition;<br />

3.People With Severe Trauma Following Accidents;<br />
 
4.And Many Surgical And Cancer Patients.<br /><br />


 It Is Also Needed For Regular Transfusions For People With Conditions Such As Thalassaemia And Sickle Cell Disease And Is Used To Make Products Such As Clotting Factors For People With Haemophilia.<br /> <br />

There Is A Constant Need For Regular Blood Supply Because Blood Can Be Stored For Only A Limited Time Before Use. Regular Blood Donations By A Sufficient Number Of Healthy People Is Needed To Ensure That Safe Blood Will Be Available Whenever And Wherever It Is Needed.<br /><br />
Blood Is The Most Precious Gift That Anyone Can Give To Another Person — The Gift Of Life. A Decision To Donate Your Blood Can Save A Life, Or Even Several If Your Blood Is Separated Into Its Components — Red Cells, Platelets And Plasma — Which Can Be Used Individually For Patients With Specific Condition
</asp:Content>

