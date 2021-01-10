using Bookshop.Data;
using Bookshop.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace BTE.Controllers
{
    public class HomeController : Controller
    {
        private readonly BookshopDatabaseContext _context;

        public HomeController(BookshopDatabaseContext context)
        {
            _context = context;
        }


        public async Task<IActionResult> Index(int page = 1)
        {


            var booksView = new Book
            {
                BookPerPage = 6,
                Books = _context.Book.OrderBy(d => d.Price),
                CurrentPage = page
            };
            return View(booksView);
        }
        [Authorize(Roles ="Admin")]
        public IActionResult Privacy()
        {
            return View();
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

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
