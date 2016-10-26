<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/Home.Master" AutoEventWireup="true" CodeBehind="thankyou.aspx.cs" Inherits="PortfolioSite.Home.thankyou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Thank You</h2>
    <br />
    <p>
        Thank you ! I will replay you shortly 

    </p>

    <script type="text/javascript">
        setInterval(function () { location.href="../index.aspx" }, 10000);

    </script>

</asp:Content>


