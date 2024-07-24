namespace TNGLuong.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    public class LCB_WEB_ChucNang
    {
        [Key]
        public int ID_ChucNang { get; set; }

        [Required]
        [StringLength(100)]
        public string TenChucNang { get; set; }
    }
}