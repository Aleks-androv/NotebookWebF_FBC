using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace NotebookWebForms
{
    /// <summary>
    /// Представляет записную книжку.
    /// </summary>
    public class Record
    {
        /// <summary>
        /// Идентификатор записи в записной книжки.
        /// </summary>
        [ScaffoldColumn(false)]
        public int RecordId { get; set; }

        /// <summary>
        /// Имя.
        /// </summary>
        [StringLength(25, ErrorMessage = "Длина должна быть не больше 25 символов."), Display(Name = "Имя"), Required]
        public string Name { get; set; }

        /// <summary>
        /// Фамилия.
        /// </summary>
        [StringLength(25, ErrorMessage = "Длина должна быть не больше 25 символов."), Display(Name = "Фамилия")]
        public string Surname { get; set; }

        /// <summary>
        /// Отчество.
        /// </summary>
        [StringLength(25, ErrorMessage = "Длина должна быть не больше 25 символов."), Display(Name = "Отчество")]
        public string Patronymic { get; set; }

        /// <summary>
        /// Номер телефона.
        /// </summary>
        [StringLength(15, ErrorMessage = "Длина должна быть не больше 15 символов."), DataType(DataType.PhoneNumber), Display(Name = "Номер телефона"), Required]
        public string PhoneNumber { get; set; }

        /// <summary>
        /// Email адрес.
        /// </summary>
        [StringLength(25, ErrorMessage = "Длина должна быть не больше 25 символов."), DataType(DataType.EmailAddress), Display(Name = "Email")]
        public string Email { get; set; }

        /// <summary>
        /// Заметки.
        /// </summary>
        [StringLength(100, ErrorMessage = "Длина строки должна быть не больше 100 символов."), Display(Name = "Заметки")]
        public string Note { get; set; }
    }
}