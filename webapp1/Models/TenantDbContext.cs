﻿using System;
using System.Data.Entity;

namespace webapp1.Models
{
    public class TenantDbContext : DbContext
    {
        public TenantDbContext()
            : base("DefaultConnection")
        {
        }

        public DbSet<Tenant> Tenants { get; set; }

        public DbSet<IssuingAuthorityKey> IssuingAuthorityKeys { get; set; }

        public DbSet<SignupToken> SignupTokens { get; set; }
    }
}