<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="PortfolioSite.Home.Contactus"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">


      <title>Contact Us</title>
    <%--style and java script required for all pages --%>
    <link href="../Content/Site.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../scripts/jquery-1.9.1.js"></script>

    <script src="../scripts/bootstrap.js"></script>

    <script type="text/javascript">
      
        function SendMail()
        {
            //alert("Thank you! We will contact you shortly.")
            location.href = "../index.aspx";
                  
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentmain" runat="server">


    <div class="logo pull-left col-md-12" style="margin-left:10%">
                    <img src="assets/pic06.jpg" width="100%" alt="">
                    
     
     
                </div>


    <div class="logo pull-left col-md-12 text-center" style="margin-top:10px">
                 
        </div>

    <div class="pull-left col-md-5">
        <h4>
            Contact
        </h4>
        <img src="assets/mobile.png" style="width:10%;margin-right:7px;" />
        +1647-719-4237
        <br />
        <img src="assets/mailicon.jpg" style="width:16%;margin-left:-7px" />
       p.shyam@outlook.com
        <hr />

       <h4> Address:</h4> 
        <br />
       960 Markham Road,<br /> Scarborough, M1H 2Y4 <br />

<br />


    </div>

    <div class="col-md-5 pull-right">

   <h4> Details: </h4>
    <hr />

  <div class="form-horizontal">
	<div class="form-group">
		<label for="name" class="col-sm-3 control-label">Name</label>
		<div class="col-sm-8">
			<%--<input type="text" class="form-control" id="name" name="name" placeholder="First & Last Name" value="">--%>
            <asp:TextBox ID="txtName" runat="server" ValidationGroup="contactme" CssClass="form-control" placeholder="First & Last Name" Text=""></asp:TextBox>
            <asp:RequiredFieldValidator ID="namereq" ValidationGroup="contactme" ControlToValidate="txtName" Display="Dynamic" runat="server" ForeColor="Red" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
		</div>
	</div>
      <div class="clearfix"></div>
	<div class="form-group">
		<label for="email" class="col-sm-3 control-label">Email</label>
		<div class="col-sm-8">
			<%--<input type="email" class="form-control" id="email" name="email" placeholder="example@domain.com" value="">--%>

             <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" ValidationGroup="contactme" placeholder="domain@email.com" Text=""></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="contactme" ControlToValidate="txtemail" Display="Dynamic" runat="server" ForeColor="Red" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="chkemail" ValidationGroup="contactme" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid email"></asp:RegularExpressionValidator> 
		
		</div>
	</div>
      <div class="clearfix"></div>
	<div class="form-group">
		<label for="message" class="col-sm-3 control-label">Message</label>
		<div class="col-sm-8">
			<%--<textarea class="form-control" rows="4" name="message"></textarea>--%>
            <asp:TextBox ID="txtmessage" TextMode="MultiLine" Rows="4" ValidationGroup="contactme" runat="server" CssClass="form-control" placeholder="message" Text=""></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="contactme" ControlToValidate="txtmessage" Display="Dynamic" runat="server" ForeColor="Red" ErrorMessage="Message is required"></asp:RequiredFieldValidator>
           
		</div>
	</div>
      <div class="clearfix"></div>
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
			<%--<input id="submit" name="submit" type="submit" onclick="SendMail();" value="Send" class="btn btn-success">--%>
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" ValidationGroup="contactme" OnClick="btnsubmit_OnClick" CssClass="btn btn-success" />
		</div>
	</div>
	
</div>
</div>

    

    <div class="text-center col-md-5 row"  >
          <%--<a href ="#"> <img src="assets/Twitter_icon.png" style="width:20%" /></a>--%>
         <a href ="https://wwww.facebook.com/OrSamhowulikeit"><img src="assets/facebook_icon.png" style="width:20%" /></a>
       <a href ="https://ca.linkedin.com/in/shyam-patel-59b9426b"><img src="assets/Linkedin_icon.png" style="width:20%" /></a>
       <a href ="https://www.plus.google.com/115905033818912125128"> <img src="assets/google_plus_icon.png" style="width:20%" /></a>
    </div>

    
</asp:Content>
