using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SportSiteBAL;

namespace SportSite
{
    public partial class AddScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGame();
                LoadTeams();
            }
        }

        protected void LoadGame()
        { 
            GameBAL gmaes = new   GameBAL();
            lstGames.DataSource = gmaes.GetAllGames();
            lstGames.DataTextField = "Name";
            lstGames.DataValueField = "Id";
            lstGames.DataBind();
        
        }

        protected void LoadTeams(int GameID = 1)
        {
            GameBAL gmaes = new GameBAL();

            var datascourse = gmaes.GetTeamsByGameID(GameID);
            
            lstTeam1.DataSource = datascourse;
            lstTeam1.DataTextField = "Name";
            lstTeam1.DataValueField = "Id";
            lstTeam1.DataBind();


            lstTeam2.DataSource = datascourse;
            lstTeam2.DataTextField = "Name";
            lstTeam2.DataValueField = "Id";
            lstTeam2.DataBind();

        }

        protected void lstGames_SelectedIndexChanged(object sender, EventArgs e)
        {

            LoadTeams(Convert.ToInt32(lstGames.SelectedItem.Value));

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

             //Add match and score
            GameBAL gmaes = new GameBAL();

            SportSiteDAL.ScoreDetails sd = new SportSiteDAL.ScoreDetails();
            sd.GameID = lstGames.SelectedItem.Value;
            sd.Team1ID = lstTeam1.SelectedItem.Value;
            sd.Team2ID = lstTeam2.SelectedItem.Value;

            sd.Team1Score = txtTeam1Score.Text;
            sd.Team2Score = txtTeam2Score.Text;

            sd.matchDate = TextBox1.Text.ToString();
            if (gmaes.AddMatchScore(sd))
            {
                lblMsg.Text = "Score added successfully";
                lblMsg.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                lblMsg.Text = "Error while adding score";
                lblMsg.ForeColor = System.Drawing.Color.Red;

            }            

        }



    }
}
