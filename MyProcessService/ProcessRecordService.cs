using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;

using System.Management;
using Cassia;
using System.Security.Principal;

namespace ProcessRecordService
{
    public partial class ProcessRecordService : ServiceBase
    {
        private int eventId;
        private Db db = null;
        private string hostname = System.Environment.MachineName;
        private int canUpdate = 1;

        public ProcessRecordService()
        {
            InitializeComponent();
            if (!EventLog.SourceExists("ProcessRecord"))
            {
                System.Diagnostics.EventLog.CreateEventSource(
                    "ProcessRecord", "ProcessRecordLog");
            }
            eventLog1.Source = "ProcessRecord";
            eventLog1.Log = "ProcessRecordLog";
        }

        protected override void OnStart(string[] args)
        {
            eventLog1.WriteEntry("In OnStart");

            // Set up a timer to trigger every minute.
            System.Timers.Timer timer = new System.Timers.Timer();
            timer.Interval = 60000; // 60 seconds
            timer.Elapsed += new System.Timers.ElapsedEventHandler(this.OnTimer);
            timer.Start();
        }

        public void OnTimer(object sender, System.Timers.ElapsedEventArgs args)
        {
            // TODO: Insert monitoring activities here.
            if(canUpdate == 0)
            {
                eventLog1.WriteEntry("Update " + hostname + " delayed", EventLogEntryType.Warning, eventId++);
                return;
            }

            canUpdate = 0;
            try
            {
                if (db == null)
                {
                    db = new Db();
                }

                int sessionRet = updateSessionList(eventId);

                if(sessionRet == 0)
                {
                    eventLog1.WriteEntry(hostname + " session count is 0", EventLogEntryType.Information, eventId++);
                }

                int ret = UpdateProcessList(eventId);
                if (ret == 0)
                {
                    eventLog1.WriteEntry("Update " + hostname + " successful", EventLogEntryType.Information, eventId++);
                }
                else
                {
                    eventLog1.WriteEntry("Update " + hostname + " failed", EventLogEntryType.Error, eventId++);
                }
                canUpdate = 1;
            }
            catch (Exception ex)
            {
                canUpdate = 1;
                string exception = "Exception : " + ex.Message.ToString();
                // Console.WriteLine(exception + "/n/r");
                eventLog1.WriteEntry(exception, EventLogEntryType.Error, eventId++);
                closeDb();
            }

            closeDb();
        }

        protected void closeDb()
        {
            if (db != null)
            {
                db.CloseConn();
            }
        }

        protected override void OnStop()
        {
            eventLog1.WriteEntry("In OnStop");
            if(db != null)
            {
                db.CloseConn();
            }
        }

        //!! unused but wonderful
        static string GetProcessOwner(int processId)
        {
            string query = "Select * From Win32_Process Where ProcessID = " + processId;
            ManagementObjectSearcher searcher = new ManagementObjectSearcher(query);
            ManagementObjectCollection processList = searcher.Get();

            foreach (ManagementObject obj in processList)
            {
                string[] argList = new string[] { string.Empty, string.Empty };
                int returnVal = Convert.ToInt32(obj.InvokeMethod("GetOwner", argList));
                if (returnVal == 0)
                {
                    // return DOMAIN\user
                    return argList[1] + "\\" + argList[0];
                }
            }

            return "";
        }

        protected int updateSessionList(int eventId)
        {
            ITerminalServicesManager manager = new TerminalServicesManager();
            int userSessionNum = 0;
            using (ITerminalServer server = manager.GetRemoteServer(hostname))
            {
                server.Open();
                db.nQuery("DELETE FROM `sessions` WHERE hostname = @hostname", new string[] { "hostname", hostname });
                foreach (ITerminalServicesSession session in server.GetSessions())
                {
                    NTAccount account = session.UserAccount;
                    string userName = session.UserName;

                    if (account != null)
                    {
                        db.bind(new string[] { "hostname", hostname, "sessionId", session.SessionId.ToString(), "account", account.ToString(), "eventId", eventId.ToString() });
                        //Console.WriteLine(String.Format("{0} {1} {2} {3}", session.SessionId, account, hostname, eventId));
                        int created = db.nQuery("INSERT INTO `sessions` (`event_id`, `hostname`, `session_id`, `account`) VALUES  "
                 + " (@eventId, @hostname, @sessionId, @account)");
                        userSessionNum++;
                    }
                }
            }

            if(userSessionNum == 0)
            {
                return 0;
            }

            return 1;
        }

        protected int UpdateProcessList(int eventId)
        {
            string query = "Select ProcessId,Caption,SessionId,executablepath,CreationDate From Win32_Process Where SessionId  != 0";
            ManagementObjectSearcher searcher = new ManagementObjectSearcher(query);
            ManagementObjectCollection processList = searcher.Get();

            db.nQuery("DELETE FROM `processes` WHERE hostname = @hostname", new string[] { "hostname", hostname });
            foreach (ManagementObject obj in processList)
            {
                try
                {
                    DateTime create_dt = ManagementDateTimeConverter.ToDateTime(obj.GetPropertyValue("CreationDate").ToString());
                    string caption = obj.GetPropertyValue("Caption").ToString();
                    string executablepath = "";
                    Object executablePath = obj.GetPropertyValue("executablepath");
                    if (executablePath != null)
                    {
                        executablepath = executablePath.ToString();
                    }

                    int SessionId = Convert.ToInt32(obj.GetPropertyValue("SessionId"));
                    int processId = Convert.ToInt32(obj.GetPropertyValue("ProcessId"));
                    //string owner = GetProcessOwner(processId);
                    string owner = "unknown";


                    // Create/Insert
                    db.bind(new string[] { "hostname", hostname, "sessionId", SessionId.ToString(), "caption", caption, "executablepath", executablepath,
                         "create_dt", create_dt.ToString(), "owner", owner, "processId", processId.ToString(),
                         "eventId", eventId.ToString()
                    });

                    int created = db.nQuery("INSERT INTO `processes` (`event_id`, `hostname`, `session_id`, `process_id`,`caption`, `owner`, `executable_path`, `creation_date`) VALUES "
                       + " (@eventId, @hostname, @sessionId, @processId, @caption, @owner, @executablepath, @create_dt)");

                    //Console.WriteLine(String.Format("{7} {5} {0} {1} {2} {4} {3} {6}", SessionId, processId, caption, executablepath, owner, hostname, create_dt, created));
                }
                catch (Exception ex)
                {
                    string exception = "Exception : " + ex.Message.ToString();
                   // Console.WriteLine(exception + "/n/r");
                    eventLog1.WriteEntry(exception, EventLogEntryType.Error, eventId++);
                    return 1;
                }
            }

            return 0;
        }
    }
}
