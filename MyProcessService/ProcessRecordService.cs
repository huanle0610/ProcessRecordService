using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;

namespace ProcessRecordService
{
    public partial class Service1 : ServiceBase
    {
        private int eventId;
        private Db db = null;

        public Service1()
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
            eventLog1.WriteEntry("Monitoring the System", EventLogEntryType.Information, eventId++);

            if(db == null)
            {
                db = new Db();
            }
            db.bind("id", "1");
            DataTable d = db.query("SELECT * FROM Persons WHERE id = @id");

            Dictionary<string, string> row = new Dictionary<string, string>();

            if (d.Rows.Count > 0)
            {
                for (int i = 0; i < d.Columns.Count; i++)
                {
                    row.Add(d.Columns[i].ColumnName.ToLower(), d.Rows[0][i].ToString());
                }
            }

            String name = "";
            row.TryGetValue("lastname", out name);
            eventLog1.WriteEntry("Hello, " + name, EventLogEntryType.Information, eventId++);
        }

        protected override void OnStop()
        {
            eventLog1.WriteEntry("In OnStop");
            if(db != null)
            {
                db.CloseConn();
            }
        }
    }
}
