using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Bookshop.Models
{
    public class OrderDetail
    {
        public int OrderDetailID { get; set; }
        [ForeignKey("OrderID")]
        public int OrderID { get; set; }
        public int BookID { get; set; }
        public int Amount { get; set; }
        public float Price { get; set; }
        public virtual Book Book { get; set; }
        public virtual Order Order { get; set; }
    }
}
