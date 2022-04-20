<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

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
    <center>
        <div>
            <img src="images/images(3).jpg" alt="aboutus" />
        </div>
    </center>
    <p style="font-family:Calibri;font-size:larger;">
TRUE BLOOD PUMP is aims serving for human welfare. We have all the information, you will ever need. Many people are here for you, to help you, willing to donate blood for you anytime. We have done all the job, rest is yours. search the blood group you need.

You can help us by registering on TRUE BLOOD PUMP if you are willing to donate your blood when needed. As a proud member of  TRUE BLOOD PUMP and a responsible human being, you can help someone in need. So  donate blood in online

    </p>
</asp:Content>

