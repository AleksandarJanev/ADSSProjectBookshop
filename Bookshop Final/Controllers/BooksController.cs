using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Bookshop.Data;
using Bookshop.Models;
using Microsoft.AspNetCore.Authorization;

namespace BTE.Controllers
{
    public class BooksController : Controller
    {
        private readonly BookshopDatabaseContext _context;

        public BooksController(BookshopDatabaseContext context)
        {
            _context = context;
        }

        // GET: Books
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Index()
        {
            var bTEDatabaseContext = _context.Book.Include(b => b.BookAuthor).Include(b => b.Type);
            return View(await bTEDatabaseContext.ToListAsync());
        }



        // GET: Books/Details/5
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

        // GET: Books/Create
        public IActionResult Create()
        {
            ViewData["AuthorID"] = new SelectList(_context.Author, "AuthorID", "AuthorName");
            ViewData["BookTypeID"] = new SelectList(_context.BookType, "BookTypeID", "Type");
            return View();
        }

        // POST: Books/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("BookID,Name,BookTypeID,PublishDate,Price,Image,AuthorID")] Book book)
        {
            if (ModelState.IsValid)
            {
                _context.Add(book);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["AuthorID"] = new SelectList(_context.Author, "AuthorID", "AuthorName", book.AuthorID);
            ViewData["BookTypeID"] = new SelectList(_context.BookType, "BookTypeID", "Type", book.BookTypeID);
            return View(book);
        }
        [Authorize(Roles = "Admin, Editor")]
        // GET: Books/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var book = await _context.Book.FindAsync(id);
            if (book == null)
            {
                return NotFound();
            }
            ViewData["AuthorID"] = new SelectList(_context.Author, "AuthorID", "AuthorName", book.AuthorID);
            ViewData["BookTypeID"] = new SelectList(_context.BookType, "BookTypeID", "Type", book.BookTypeID);
            return View(book);
        }

        // POST: Books/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [Authorize(Roles = "Admin, Editor")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("BookID,Name,BookTypeID,PublishDate,Price,Image,AuthorID")] Book book)
        {
            if (id != book.BookID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(book);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BookExists(book.BookID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["AuthorID"] = new SelectList(_context.Author, "AuthorID", "AuthorName", book.AuthorID);
            ViewData["BookTypeID"] = new SelectList(_context.BookType, "BookTypeID", "Type", book.BookTypeID);
            return View(book);
        }

        // GET: Books/Delete/5
        [Authorize( Roles = "Admin")]
        public async Task<IActionResult> Delete(int? id)
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

        // POST: Books/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var book = await _context.Book.FindAsync(id);
            _context.Book.Remove(book);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BookExists(int id)
        {
            return _context.Book.Any(e => e.BookID == id);
        }
    }
}
