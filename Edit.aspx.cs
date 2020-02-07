using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotebookWebForms
{
    public partial class Edit : System.Web.UI.Page
    {
        public Record EditRecord { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // Если передали id контакта для редактирования
                if (Int32.TryParse(Request["id"], out int recordId))
                {
                    EditRecord = SiteMaster.DbContext.Records.Single(r => r.RecordId == recordId);
                }
                else { Response.Redirect("/Error"); }
            }
            catch(Exception ex)
            {
                string errorMsg = ex.Message;
                Response.Redirect("Error.aspx?msg=" + Server.UrlEncode(errorMsg));
            }
        }
    }
}