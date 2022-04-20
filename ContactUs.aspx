<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

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
            <img src="images/contactus.jpg" alt="aboutus" />
        </div>
    </center>
    <p style="font-family:Calibri;font-size:larger;">
    <center>!!FEEL FREE TO CONTACT!!</center>
       </p>
       <p style="font-family:Calibri;font-size:larger;">
       <b><u>For Queries:-</u></b>
       </p>
       <p>
        <ul  style="font-family:Calibri;font-size:larger;">
        <li><b>Email Us:</b>jatin19nov@gmail.com,yogeshdixit03@gmail.com</li>
        <li><b>Telephone:</b>+91-171-2631595,9468055014</li>
       <%-- <li></li>--%>
        </ul>
        </p>
</asp:Content>

