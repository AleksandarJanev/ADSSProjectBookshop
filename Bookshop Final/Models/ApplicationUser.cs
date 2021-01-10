using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Bookshop.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string Address { get; set; }
        public override string Email { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
