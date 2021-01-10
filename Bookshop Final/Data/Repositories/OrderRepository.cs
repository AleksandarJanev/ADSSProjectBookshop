using Bookshop.Data.Interfaces;
using Bookshop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Http;

namespace Bookshop.Data.Repositories
{
    public class OrderRepository : IOrderRepository
    {
        private readonly BookshopDatabaseContext _context;
        private readonly ShoppingCart _shoppingCart;

        public OrderRepository(BookshopDatabaseContext context, ShoppingCart shoppingCart)
        {
            _context = context;
            _shoppingCart = shoppingCart;
        }


        public void CreateOrder(Order order)
        {
            order.OrderPlaced = DateTime.Now;
            //order.ApplicationUser = CurrentUser;
            _context.Orders.Add(order);
            _context.SaveChanges();

            var shoppingCartItems = _shoppingCart.ShoppingCartItems;

            foreach (var item in shoppingCartItems)
            {
                var orderDetail = new OrderDetail()
                {
                    Amount = item.Amount,
                    BookID = item.Book.BookID,
                    OrderID = order.OrderID,
                    Price = item.Book.Price

                };
                _context.OrderDetails.Add(orderDetail);
            }
            _context.SaveChanges();
        }
    }
}
