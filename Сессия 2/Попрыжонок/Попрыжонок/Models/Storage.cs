//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Storage
    {
        public int Id { get; set; }
        public int Id_Material { get; set; }
        public int Count { get; set; }
        public System.DateTime Date { get; set; }
    
        public virtual Material Material { get; set; }
    }
}
