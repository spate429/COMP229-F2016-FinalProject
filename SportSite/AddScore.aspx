<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddScore.aspx.cs" Inherits="SportSite.AddScore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <link href="Content/calendar-blue.css" rel="stylesheet" type="text/css" />
   
    <script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
     <script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentmain" runat="server">


<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		
			<h2>Add Scores</h2>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <%--<input type="text" name="first_name" id="first_name" class="form-control input-lg" placeholder="First Name" tabindex="1">--%>
                        <asp:DropDownList ID="lstGames" runat="server" 
                            CssClass ="form-control input-lg" AutoPostBack="True" 
                            onselectedindexchanged="lstGames_SelectedIndexChanged"></asp:DropDownList> 

					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
				
				</div>
			</div>

            <div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
						<div class="form-group">
						<%--<input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2">--%>
                        <asp:DropDownList ID="lstTeam1" runat="server" CssClass ="form-control input-lg"></asp:DropDownList> 
                            
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<%--<input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2">--%>
                        <asp:TextBox ID="txtTeam1Score" runat ="server"  placeholder="Enter Team1 Score" CssClass = "form-control input-lg" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Pease enter team1 score " ControlToValidate="txtTeam1Score" 
                            Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
					</div>
				</div>
			</div>
			
			
           <div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
						<div class="form-group">
						<%--<input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2">--%>
                        <asp:DropDownList ID="lstTeam2" runat="server" CssClass ="form-control input-lg"></asp:DropDownList> 

                        <asp:CompareValidator ID="CompareValidator1" ErrorMessage ="Team1 nd Team2 are not same" runat="server" Type ="String" ControlToValidate="lstTeam2" ControlToCompare="lstTeam1" Operator ="NotEqual" Display="Dynamic" ForeColor="Red" ></asp:CompareValidator>

					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<%--<input type="text" name="last_name" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2">--%>
                        <asp:TextBox ID="txtTeam2Score" runat ="server"  
                            placeholder="Enter Team2 Score" CssClass = "form-control input-lg" 
                            TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Pease enter team2 score " ControlToValidate="txtTeam2Score" 
                            Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
					</div>
				</div>
			</div>

             <div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					
                    <%--   <div class="col-md-5 pull-left">--%>
			        <asp:TextBox ID="TextBox1" runat ="server"  
                            placeholder="Enter Select Date Time" CssClass = "form-control input-lg" 
                            ></asp:TextBox>
                           <%--</div>--%>
                   <%-- <div class="col-md-5 pull-left">
                    <img src="Assets/calender.png" />
                        </div>--%>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
                 
                       
            		</div>
				
			</div>


			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6">
                <%--<input type="submit" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7">--%>
                <asp:Button ID="btnSubmit" runat ="server" Text ="Save" 
                        CssClass ="btn btn-primary btn-block btn-lg" onclick="btnSubmit_Click" />
                
                    <br />
                
                </div>
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
				
			</div>
		
	</div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $("#<%=TextBox1.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>
</asp:Content>
