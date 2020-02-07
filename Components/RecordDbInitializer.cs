using System;
using System.Data.Entity;
using System.Linq;

namespace NotebookWebForms
{
    public class RecordDbInitializer : CreateDatabaseIfNotExists<RecordContext>
    {
        /// <summary>
        ///  Создаём тестовые записи для Записной книжки.
        /// </summary>
        /// <param name="_dbContext">Контекст базы данных</param>
        protected override void Seed(RecordContext _dbContext)
        {
            InitRecords(_dbContext, 50);
            base.Seed(_dbContext);
        }

        private static void InitRecords(RecordContext _dbContext, int countOfRecords = 1)
        {
            for (int i = 1; i <= countOfRecords; i++)
            {
                var applicationId =
                _dbContext.Records.Add(
                    new Record
                    {
                        Name = "Иванов" + i,
                        Surname = "Иванов" + i,
                        Patronymic = "Иванович" + i,
                        PhoneNumber = "81234567890",
                        Note = "Примечание #" + i,
                        Email = "myemail" + i + "@test.ru"
                    });
            }
        }
    }
}