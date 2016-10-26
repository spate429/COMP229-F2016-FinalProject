<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SportSite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentmain" runat="server">


    <div class="login-page">
  <div class="form">
    <div class="login-form">
     
       
      <asp:TextBox ID="txtusername" CssClass ="forminput" runat="server" placeholder="username"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
            Display="Dynamic" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
     
      <asp:TextBox ID="txtpassword"  CssClass ="forminput" TextMode="Password" placeholder="password" runat="server"></asp:TextBox> 
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="txtpassword"
            Display="Dynamic" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
     <%-- <button>login</button>--%>
       <asp:Button runat="server" CssClass ="formbutton" Text ="Login" ID="btnLogin" OnClick="btnLogin_Click" />
      </div>
  </div>
</div>


</asp:Content>
