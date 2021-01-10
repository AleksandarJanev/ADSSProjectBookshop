using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Bookshop.Models
{
    public class BookType
    {
        [Key]
        public int BookTypeID { get; set; }
        [Required]
        public string Type { get; set; }
        public ICollection<Book> Books { get; set; }
    }
}
