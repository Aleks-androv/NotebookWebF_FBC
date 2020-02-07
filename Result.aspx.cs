using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotebookWebForms
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Record newRecord = new Record
                {
                    RecordId = Int32.Parse(Request.Form["RecordId"]),
                    Name = Request.Form["Name"],
                    Surname = Request.Form["Surname"],
                    Patronymic = Request.Form["Patronymic"],
                    PhoneNumber = Request.Form["PhoneNumber"],
                    Note = Request.Form["Note"],
                    Email = Request.Form["Email"]
                };

                // Если изменяем Существующий контакт
                if (SiteMaster.DbContext.Records.Any(r => r.RecordId == newRecord.RecordId))
                {
                    var editedRecord = SiteMaster.DbContext.Records.Single(r => r.RecordId == newRecord.RecordId);
                    UpdateRecordObj(editedRecord, newRecord);
                    SiteMaster.DbContext.Entry(editedRecord).State = System.Data.Entity.EntityState.Modified;
                }
                else
                {
                    // Или добавляем Новый контакт в БД
                    SiteMaster.DbContext.Records.Add(newRecord);
                }
                SiteMaster.DbContext.SaveChanges();
            }
            catch (Exception ex)
            {
                var errors = SiteMaster.DbContext.GetValidationErrors();
                string errorMsg = ex.Message;
                Response.Redirect("Error.aspx?msg=" + Server.UrlEncode(errorMsg));
            }
        }

        public static void UpdateRecordObj(Record to, Record from)
        {
            to.Name = from.Name;
            to.Surname = from.Surname;
            to.Patronymic = from.Patronymic;
            to.PhoneNumber = from.PhoneNumber;
            to.Note = from.Note;
            to.Email = from.Email;
        }
    }
}