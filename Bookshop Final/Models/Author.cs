using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Bookshop.Models
{
    public class Author
    {
        [Key]
        public int AuthorID { get; set; }
        [Required]
        public string AuthorName { get; set; }
        public DateTime BirthDate { get; set; }
        public string ShortBio { get; set; }
        public ICollection<Book> BooksFromAuthor { get; set; }
    }
}
