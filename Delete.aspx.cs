using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotebookWebForms
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int deletedId = Int32.Parse(Request["id"]);
                Record deletedRecord = SiteMaster.DbContext.Records.Single(r => r.RecordId == deletedId);         
                SiteMaster.DbContext.Records.Remove(deletedRecord);
                SiteMaster.DbContext.Entry(deletedRecord).State = System.Data.Entity.EntityState.Deleted;
                SiteMaster.DbContext.SaveChanges();
            }
            catch (Exception ex)
            {
                var errors = SiteMaster.DbContext.GetValidationErrors();
                string errorMsg = ex.Message;
                Response.Redirect("Error.aspx?msg=" + Server.UrlEncode(errorMsg));
            }
        }

    }
}