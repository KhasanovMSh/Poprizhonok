﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Попрыжонок.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PoprizhonokEntities : DbContext
    {
        public PoprizhonokEntities()
            : base("name=PoprizhonokEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Agent> Agent { get; set; }
        public virtual DbSet<Agent_SellPoint> Agent_SellPoint { get; set; }
        public virtual DbSet<AgentType> AgentType { get; set; }
        public virtual DbSet<Director> Director { get; set; }
        public virtual DbSet<Emploee> Emploee { get; set; }
        public virtual DbSet<Employee_HealthProblem> Employee_HealthProblem { get; set; }
        public virtual DbSet<HealthProblem> HealthProblem { get; set; }
        public virtual DbSet<Material> Material { get; set; }
        public virtual DbSet<MaterialType> MaterialType { get; set; }
        public virtual DbSet<MinimumPrice> MinimumPrice { get; set; }
        public virtual DbSet<Package> Package { get; set; }
        public virtual DbSet<Pasport> Pasport { get; set; }
        public virtual DbSet<PriorityHistory> PriorityHistory { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<Product_Standard> Product_Standard { get; set; }
        public virtual DbSet<Production> Production { get; set; }
        public virtual DbSet<Production_material> Production_material { get; set; }
        public virtual DbSet<ProductSale> ProductSale { get; set; }
        public virtual DbSet<ProductType> ProductType { get; set; }
        public virtual DbSet<SellPoint> SellPoint { get; set; }
        public virtual DbSet<Standard> Standard { get; set; }
        public virtual DbSet<Storage> Storage { get; set; }
        public virtual DbSet<Supplier> Supplier { get; set; }
        public virtual DbSet<SupplierType> SupplierType { get; set; }
        public virtual DbSet<SupplyHistory> SupplyHistory { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    }
}
