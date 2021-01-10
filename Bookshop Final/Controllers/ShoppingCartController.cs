using Bookshop.Data;
using Bookshop.Models;
using Bookshop.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bookshop.Controllers
{
    public class ShoppingCartController : Controller
    {
        private readonly BookshopDatabaseContext _context;
        private readonly ShoppingCart _shoppingCart;
        public ShoppingCartController(ShoppingCart shoppingCart, BookshopDatabaseContext context)
        {
            _shoppingCart = shoppingCart;
            _context = context;
        }

        [Authorize]
        public ViewResult Index()
        {
            var items = _shoppingCart.GetShoppingCartItems();
            _shoppingCart.ShoppingCartItems = items;

            var sCVM = new ShoppingCartViewModel
            {
                ShoppingCart = _shoppingCart,
                ShoppingCartTotal = _shoppingCart.GetShoppingCartTotal()
            };
            return View(sCVM);
        }

        [Authorize]
        public RedirectToActionResult AddToShoppingCart(int BookID)
        {
            var selectedBook = _context.Book.FirstOrDefault(p => p.BookID == BookID);
            if (selectedBook != null)
            {
                _shoppingCart.AddToCart(selectedBook, 1);
            }
            return RedirectToAction("Index");
        }

        [Authorize]
        public RedirectToActionResult RemoveFromShoppingCart(int BookID)
        {
            var selectedBook = _context.Book.FirstOrDefault(p => p.BookID == BookID);
            if(selectedBook != null)
            {
                _shoppingCart.RemoveFromCart(selectedBook);

            }
            return RedirectToAction("Index");
        }

    }
}
