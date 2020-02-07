using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotebookWebForms
{
    public partial class SiteMaster : MasterPage
    {
        public static readonly RecordContext DbContext = new RecordContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}