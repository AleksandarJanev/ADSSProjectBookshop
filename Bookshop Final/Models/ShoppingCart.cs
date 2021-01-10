﻿using Bookshop.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bookshop.Models
{
    public class ShoppingCart
    {
        private readonly BookshopDatabaseContext _context;

        public ShoppingCart(BookshopDatabaseContext context)
        {
            _context = context;
        }

        public string ShoppingCartID { get; set; }
        public List<ShoppingCartItem> ShoppingCartItems { get; set; }

        public static ShoppingCart GetCart(IServiceProvider services)
        {
            ISession session = services.GetRequiredService<IHttpContextAccessor>()?
                .HttpContext.Session;

            var context = services.GetService<BookshopDatabaseContext>();
            string cartID = session.GetString("CartID") ?? Guid.NewGuid().ToString();

            session.SetString("CartID", cartID);

            return new ShoppingCart(context) { ShoppingCartID = cartID };
        }

        public void AddToCart(Book book, int amount)
        {
            var shoppingCartItem =
                _context.ShoppingCartItems.SingleOrDefault(s => s.Book.BookID == book.BookID
                && s.ShoppingCartID == ShoppingCartID);

            if(shoppingCartItem == null)
            {
                shoppingCartItem = new ShoppingCartItem
                {
                    ShoppingCartID = ShoppingCartID,
                    Book = book,
                    Amount = 1
                };
                _context.ShoppingCartItems.Add(shoppingCartItem);
            }
            else
            {
                shoppingCartItem.Amount++;
            }
            _context.SaveChanges();
        }

        public int RemoveFromCart(Book book)
        {
            var shoppingCartItem =
                  _context.ShoppingCartItems.SingleOrDefault(s => s.Book.BookID == book.BookID
                  && s.ShoppingCartID == ShoppingCartID);
            var localAmount = 0;
            if(shoppingCartItem != null)
            {
                if(shoppingCartItem.Amount > 1)
                {
                    shoppingCartItem.Amount--;
                    localAmount = shoppingCartItem.Amount;
                }
                else
                {
                    _context.ShoppingCartItems.Remove(shoppingCartItem);
                }
            }
            _context.SaveChanges();
            return localAmount;
        }

        public List<ShoppingCartItem> GetShoppingCartItems()
        {
            return ShoppingCartItems ??
                (ShoppingCartItems = _context.ShoppingCartItems.Where(c => c.ShoppingCartID == ShoppingCartID)
                .Include(s => s.Book)
                .ToList());
        }

        public void ClearCart()
        {
            var cartItems = _context
                .ShoppingCartItems
                .Where(cart => cart.ShoppingCartID == ShoppingCartID);

            _context.ShoppingCartItems.RemoveRange(cartItems);
            _context.SaveChanges();
        }

        public float GetShoppingCartTotal()
        {
            var total = _context.ShoppingCartItems.Where(c => c.ShoppingCartID == ShoppingCartID)
                .Select(c => c.Book.Price * c.Amount).Sum();

            return total;
        }

    }
}
