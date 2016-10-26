using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SportSiteDAL
{
  
    public  class Games
    {


        SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["ConnectionString"]);
        DataTable _table = new DataTable();



        public DataTable GetAllGames ()
        {  
            string sqlQuery = "select * from Games";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            DataSet dtResult = new DataSet();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = cmd;
            dap.Fill(_table);            
            return _table;
        }


        public DataTable GetTeamsByGameID( int id)
        {
            string sqlQuery = "select * from Teams where gameid="+ id;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            DataSet dtResult = new DataSet();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = cmd;
            dap.Fill(_table);
            return _table;
        }




        public bool AddMatchScore(ScoreDetails sd)
        {
            try
            {

                int matchID = AddMatch(sd);

                if (matchID > 0)
                {
                    AddScore(sd, matchID);
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {

                return false;
            }
         }


        public int AddMatch(ScoreDetails sd)
        {
            string sqlQuery = "Insert into Matches(GameID,Team1,Team2,MatchDate,MatchStatus) values(@Parm1,@Parm2,@Parm3,@Parm4,@Parm5); SELECT SCOPE_IDENTITY();";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Parm1", sd.GameID);
            cmd.Parameters.AddWithValue("@Parm2", sd.Team1ID);
            cmd.Parameters.AddWithValue("@Parm3", sd.Team2ID);
            cmd.Parameters.AddWithValue("@Parm4", sd.matchDate);
            cmd.Parameters.AddWithValue("@Parm5", 1);

            DataSet dtResult = new DataSet();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            int matchID = 0;
            try
            {
                con.Open();
                matchID = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                return matchID;
            }
            catch(Exception ex)
            {
                return 0;
            }

        }
    
      public int AddScore(ScoreDetails sd , int MatchID)
        {
            string sqlQuery = "Insert into Scores(MatchID,Team1Score,Team2Score) values(@Parm1,@Parm2,@Parm3); SELECT SCOPE_IDENTITY();";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Parm1", MatchID );
            cmd.Parameters.AddWithValue("@Parm2", sd.Team1Score);
            cmd.Parameters.AddWithValue("@Parm3", sd.Team2Score);
            
            DataSet dtResult = new DataSet();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            int matchID = 0;
            try
            {
                con.Open();
                matchID = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
                return matchID;
            }
            catch(Exception ex)
            {
                return 0;
            }

        }
    }


    public class ScoreDetails
    {
        public string GameID { get; set; }
        public string Team1ID { get; set; }
        public string Team2ID { get; set; }
        public string Team1Score { get; set; }
        public string Team2Score { get; set; }
        public string matchDate { get; set; }
    }
}
