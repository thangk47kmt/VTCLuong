namespace TNGLuong.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class LCB_WEB_LichSuCapNhat
    {
        [Key]
        public int ID_LichSu { get; set; }

        [StringLength(14)]
        public string MaNS { get; set; }

        [Column(TypeName = "smalldatetime")]
        public DateTime NgayTruyCap { get; set; }
    }
}