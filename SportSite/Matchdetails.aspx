<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Matchdetails.aspx.cs" Inherits="SportSite.Matchdetails" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="contentmain">
    
    
     <div class="col-md-5" id="banner"><a href="#">
     
     
     <asp:Image ID="gameImage" runat="server" ImageUrl="~/Assets/pic02.jpg" />
     
     </a>
     
     </div>

               <%-- banner image--%>

    <div class ="col-md-5 pull-left">
  <div class="title">
				<h2> <asp:Label ID="lblMatch" runat="server"> </asp:Label> Match Details <span class="byline"></span></h2>

      <br />


			    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None"
                  CssClass="books"
        HeaderStyle-CssClass="header"
        FieldHeaderStyle-CssClass="fieldHeader"
        AlternatingRowStyle-CssClass="alternating"
        CommandRowStyle-CssClass="command"
        PagerStyle-CssClass="pager" Width="100%"
        
                 >
                    
                    <Columns>
                        <asp:BoundField DataField="GameName" HeaderText="Game" />
                        <asp:BoundField DataField="Team1Name" HeaderText="Team1 Name" />
                        <asp:BoundField DataField="Team2Name" HeaderText="Team2 Name" />
                        <asp:BoundField DataField="Team1Score" HeaderText="Team1 Score" />
                        <asp:BoundField DataField="Team2Score" HeaderText="Team2 Score" />
                        <asp:BoundField DataField="Winner" HeaderText="Winner Team Name" />
                    </Columns>
                   
                </asp:GridView>


			</div>
			</div>


</asp:Content>

