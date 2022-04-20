<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="donordetails.aspx.cs" Inherits="donordetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td><h4 style="margin-left:850px; margin-top:12px;">Logged-In|<a href="Home.aspx">Log-Out</a></h4></td>
</tr>
</table>

<center style="font-style:italic; font-size:xx-large"><b><i><u>Donor Details</u></i></b></center>
<center><table>
<tr>
<td><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="style2" DataKeyNames="Registeration_ID" 
            onrowdeleting="GridView1_RowDeleting"  
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowediting="GridView1_RowEditing" 
            onselectedindexchanged="GridView1_SelectedIndexChanged2" onrowupdating="GridView1_RowUpdating">
            <Columns>
            <asp:TemplateField HeaderText="Registration_ID">
            <ItemTemplate>
                <asp:Label runat="server" ID="lblid" Text='<%# Eval("Registeration_ID") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
            <asp:Label runat="server" ID="name" Text='<%# Eval("Name") %>'></asp:Label>
            </ItemTemplate>
            
            
            <EditItemTemplate>
            <asp:TextBox ID="txtname" Text='<%# Eval("Name") %>' runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
            <asp:Label runat="server" ID="gender" Text='<%# Eval("Gender") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtgender" Text='<%# Eval("Gender") %>' runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="D.O.B">
            <ItemTemplate>
            <asp:Label runat="server" ID="dob" Text='<%# Eval("dob") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtdob" Text='<%# Eval("dob") %>' runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Blood_group">
            <ItemTemplate>
            <asp:Label runat="server" ID="bgp" Text='<%# Eval("Blood_group") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtbgp" Text='<%# Eval("Blood_group") %>' runat="server"></asp:TextBox>
            </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Photo">
            <ItemTemplate>
            <asp:Image runat="server" ID="img" ImageUrl='<%# Eval("Photo") %>' Width="90px" Height="90px"></asp:Image>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="btnedit" runat="server" CommandName="edit" Text="Edit" />
                <asp:Button runat="server" ID="btndelete" CommandName="delete" Text="Delete" />
            </ItemTemplate>
            <EditItemTemplate>
            <asp:Button runat="server" ID="btnupdate" CommandName="update" Text="Update" />
            <asp:Button runat="server" ID="btncancel" CommandName="cancel" Text="Cancel" />
            </EditItemTemplate>
            </asp:TemplateField>
            </Columns>
            </asp:GridView>
            </td>
</tr>
</table></center>
<asp:Label ID="Label1" runat="server"></asp:Label>


</asp:Content>

