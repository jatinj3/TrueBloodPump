<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Acceptorreg.aspx.cs" Inherits="Acceptor" %>

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
<center style="font-style:italic; font-size:xx-large"><b><i><u>Acceptor Registration</u></i></b></center><br />
    <center><table bgcolor="#CCCCFF" border="5">
    <tr>
    <td><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
    <%--<td></td>--%>
    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td><asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label></td>
    <%--<td></td>--%>
    <td>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
            </td>
            
    </tr>
        <tr>
            <td>D.O.B</td>
            
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="18px" 
                    ImageUrl="~/images/calender_alt_month.ico" Width="20px" 
                    onclick="ImageButton1_Click" CausesValidation="false" />
                <asp:Calendar ID="Calendar1" runat="server" onselectionchanged="Calendar1_SelectionChanged" 
                    style="margin-top: 0px; margin-right: 0px;" onload="Page_Load" 
                    Height="16px" Width="121px">
                </asp:Calendar>
            </td>
            </tr>
        <tr>
        <td>Phone-No.</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" 
                MaxLength="10" ></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red" 
                
                ClientValidationFunction="Validate1" SetFocusOnError="True" 
                ValidateEmptyText="True" ></asp:CustomValidator>
            </td>  
        </tr>
        <tr>
        <td>Address</td>
        <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="*" ControlToValidate="TextBox4" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <%--<tr>
        <td>Blood Group</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" 
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
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="*" ControlToValidate="DropDownList1" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        
        </tr>--%>
        
<tr>
        <td>
        Email-id:
        </td>
        <td><asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Plz Enter a Valid Address" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        </tr>
        <tr>
            
        <td >Password</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>   
        <tr>
        <td>Confirm Password</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
                ErrorMessage="Password doesn't match "></asp:CompareValidator>
            </td>
        </tr>  
        
        <tr>
        <td>Upload Photo</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            </td></tr>
            <tr>
        <td>
            
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit"  style="margin-bottom: 0px" onclick="Button1_Click" />
                <asp:Button ID="Button2" 
                    runat="server" Text="Cancel" onclick="Button2_Click" 
                     />
            </td>
                
            <td><asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
          
        </table></center>
</asp:Content>

