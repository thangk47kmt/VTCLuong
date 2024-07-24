namespace TNGLuong.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class LCB_WEB_DemTruyCap
    {
        [Key]
        public int ID_TruyCap { get; set; }

        [StringLength(14)]
        public string MaNS { get; set; }
        
        [StringLength(200)]
        public string MucTruyCap { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime? ThoiGianTruyCap { get; set; }
    }
}