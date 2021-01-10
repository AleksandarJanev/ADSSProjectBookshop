using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Bookshop.Models
{
    public class Book
    {
        [Key]
        public int BookID { get; set; }
        [Required]
        public string Name { get; set; }
        [ForeignKey("BookTypeID")]
        public virtual BookType Type { get; set; }
        public int BookTypeID { get; set; }
        [Required]
        public DateTime PublishDate { get; set; }
        [Required]
        public float Price { get; set; }
        public string Image { get; set; }

        [ForeignKey("AuthorID")]
        public virtual Author BookAuthor { get; set; }
        public int AuthorID { get; set; }


        public IEnumerable<Book> Books { get; set; }
        public int BookPerPage { get; set; }
        public int CurrentPage { get; set; }

        public int PageCount()
        {
            return Convert.ToInt32(Math.Ceiling(Books.Count() / (double)BookPerPage));
        }
        public IEnumerable<Book> PaginatedBooks()
        {
            int start = (CurrentPage - 1) * BookPerPage;
            return Books.OrderBy(b => b.BookID).Skip(start).Take(BookPerPage);
        }

    }
}
