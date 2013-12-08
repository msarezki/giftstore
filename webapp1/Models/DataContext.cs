using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Security.Claims;
using System.Web;

namespace webapp1.Models
{
    public class DataContext : DbContext
    {

        public DataContext()
            : base()
        {
          
        }

        public DataContext(string nameOrConnectionString)
            : base(nameOrConnectionString)
        {
           
        }


        public DbSet<Product> Products { get; set; }
    }
}