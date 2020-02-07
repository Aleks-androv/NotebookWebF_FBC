using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotebookWebForms
{
    public partial class View : System.Web.UI.Page
    {
        protected IEnumerable<Record> records = SiteMaster.DbContext.Records;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}