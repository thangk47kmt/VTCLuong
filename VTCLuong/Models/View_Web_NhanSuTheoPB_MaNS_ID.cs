﻿namespace TNGLuong.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public class View_Web_NhanSuTheoPB_MaNS_ID
    {
        [Key]
        [StringLength(14)]
        public string MaNS { get; set; }

        [StringLength(71)]
        public string HoTen { get; set; }

        [StringLength(50)]
        public string TenDonVi { get; set; }

        [StringLength(500)]
        public string TenPhongban { get; set; }

        
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int DonViID { get; set; }

        public int? PhongBanID { get; set; }
        public int? MaNS_ID { get; set; }
    }
}