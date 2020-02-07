using System.Data.Entity;

namespace NotebookWebForms
{
    public class RecordContext : DbContext
    {
        public DbSet<Record> Records { get; set; }
    }
}