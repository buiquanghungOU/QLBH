//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CuaHangDT
{
    using System;
    using System.Collections.Generic;
    
    public partial class NHACUNGCAP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NHACUNGCAP()
        {
            this.PHIEUNHAPs = new HashSet<PHIEUNHAP>();
        }
    
        public string MaNCC { get; set; }
        public string TenNCC { get; set; }
        public string TenNDD { get; set; }
        public string DiaChi { get; set; }
        public Nullable<float> Tax { get; set; }
        public string Fax { get; set; }
        public Nullable<float> SDT { get; set; }
        public string E_Mail { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHIEUNHAP> PHIEUNHAPs { get; set; }
    }
}