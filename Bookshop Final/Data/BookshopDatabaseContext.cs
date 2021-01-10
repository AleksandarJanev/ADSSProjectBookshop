using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Bookshop.Models;

namespace Bookshop.Data
{
    public class BookshopDatabaseContext : DbContext
    {
        public BookshopDatabaseContext (DbContextOptions<BookshopDatabaseContext> options)
            : base(options)
        {
        }

        public DbSet<Bookshop.Models.Author> Author { get; set; }

        public DbSet<Bookshop.Models.Book> Book { get; set; }

        public DbSet<Bookshop.Models.BookType> BookType { get; set; }

        public DbSet<Bookshop.Models.ShoppingCartItem> ShoppingCartItems { get; set; }
        public DbSet<Bookshop.Models.Order> Orders { get; set; }
        public DbSet<Bookshop.Models.OrderDetail> OrderDetails { get; set; }

    }
}
