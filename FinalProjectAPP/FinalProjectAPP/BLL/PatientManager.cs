using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FinalProjectAPP.DAL;
using FinalProjectAPP.MODEL;

namespace FinalProjectAPP.BLL
{
    public class PatientManager
    {
        PatientGateway aPatientGateway = new PatientGateway();

        public void Insert(Patient aPatient)
        {
            aPatientGateway.Insert(aPatient);
        }

        public string GetPatientId(string VoterID)
        {
            return aPatientGateway.GetPatientId(VoterID);
        }
    }
}