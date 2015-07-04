using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using FinalProjectAPP.MODEL;

namespace FinalProjectAPP.DAL
{
    public class PatientGateway
    {
        private string conncetionStr = ConfigurationManager.ConnectionStrings["ConnDBStr"].ConnectionString;

        public int Insert(Patient aPatient)
        {
            string query = "insert into patient_tbl values ('" + aPatient.VoterId + "','" + aPatient.Name + "','" + aPatient.Adress + "','" + aPatient.Age + "')";
            SqlConnection aConnection = new SqlConnection(conncetionStr);
            SqlCommand aCommand = new SqlCommand(query, aConnection);

            aConnection.Open();
            int rowAffect = aCommand.ExecuteNonQuery();
            aConnection.Close();

            return rowAffect;
        }
        public string GetPatientId(string VoterID)
        {
            string id = "";
            string query = "select Patient_id from Patient_tbl where patient_voter_id='" + VoterID + "'";
           

            SqlConnection aConnection = new SqlConnection(conncetionStr);
            SqlCommand aCommand = new SqlCommand(query, aConnection);
            aConnection.Open();
            SqlDataReader aReader = aCommand.ExecuteReader();

            while (aReader.Read())
            {
                id = aReader["Patient_id"].ToString();
            }
            aReader.Close();
            aConnection.Close();

            return id;
        }
       
      


    }
}