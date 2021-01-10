using Bookshop.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bookshop.Controllers
{
    public class AllBooksController : Controller
    {
        private readonly BookshopDatabaseContext _context;

        public AllBooksController(BookshopDatabaseContext context)
        {
            _context = context;
        }


        // GET: Books
        public async Task<IActionResult> Index(string searchString)
        {
            var books = from b in _context.Book
                        select b;

            if (!String.IsNullOrEmpty(searchString))
            {
                books = books.Where(s => s.Name.Contains(searchString));
            }

            return View(await books.ToListAsync());
        }


         //GET: Books
        public async Task<IActionResult> Fantasies()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type).Where(b => b.BookTypeID == 1);
            return View(await bTEDatabaseContext.ToListAsync());
        }

        public async Task<IActionResult> Thrillers()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type).Where(b => b.BookTypeID == 2);
            return View(await bTEDatabaseContext.ToListAsync());
        }

        //GET: Books
        public async Task<IActionResult> MysteriesAndHistoricalFiction()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type).Where(b => b.BookTypeID == 3);
            return View(await bTEDatabaseContext.ToListAsync());
        }

        //GET: Books
        public async Task<IActionResult> SocialStudies()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type).Where(b => b.BookTypeID == 4);
            return View(await bTEDatabaseContext.ToListAsync());
        }

        public async Task<IActionResult> Poetry()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type).Where(b => b.BookTypeID == 6);
            return View(await bTEDatabaseContext.ToListAsync());
        }

        public async Task<IActionResult> History()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type).Where(b => b.BookTypeID == 7);
            return View(await bTEDatabaseContext.ToListAsync());
        }

        public async Task<IActionResult> Romance()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type).Where(b => b.BookTypeID == 8);
            return View(await bTEDatabaseContext.ToListAsync());
        }

        public async Task<IActionResult> FoodAndCookbooks()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type).Where(b => b.BookTypeID == 9);
            return View(await bTEDatabaseContext.ToListAsync());
        }

        public async Task<IActionResult> Humor()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type).Where(b => b.BookTypeID == 10);
            return View(await bTEDatabaseContext.ToListAsync());
        }

        public async Task<IActionResult> Horror()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type).Where(b => b.BookTypeID == 11);
            return View(await bTEDatabaseContext.ToListAsync());
        }

        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var book = await _context.Book
                .Include(b => b.BookAuthor)
                .Include(b => b.Type)
                .FirstOrDefaultAsync(m => m.BookID == id);
            if (book == null)
            {
                return NotFound();
            }

            return View(book);
        }

        public async Task<IActionResult> AuthorDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var author = await _context.Author
                .FirstOrDefaultAsync(m => m.AuthorID == id);
            if (author == null)
            {
                return NotFound();
            }

            return View(author);
        }
    }
}
