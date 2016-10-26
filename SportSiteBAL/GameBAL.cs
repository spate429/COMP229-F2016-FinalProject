using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using SportSiteDAL;


namespace SportSiteBAL
{
    public  class GameBAL
    {


        Games games = new Games();

        public DataTable GetAllGames()
        {
             return games.GetAllGames();
        }


        public DataTable GetTeamsByGameID( int id)
        {
            return games.GetTeamsByGameID(id);
        }


        public bool AddMatchScore(ScoreDetails sd)
        {
            return games.AddMatchScore(sd);
        }
    }


}
