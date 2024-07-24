using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TNGLuong.ModelsView
{
    public class LCB_ThoiGian_NhayKhau
    {
        //public LCB_ThoiGian_NhayKhau()
        //{

        //}
        public int STT {  get; set; }
        public DateTime Ngay { get; set; }
        public int MaNS_ID { get; set; }
        public int PhongBanID { get; set; }
        public string TenPhongBan {  get; set; }
        public DateTime TuGio {  get; set; }
        public DateTime DenGio { get; set; }
        public int ThoiGian { get; set; }
        public string GhiChu { get; set; }

        //public LCB_ThoiGian_NhayKhau(int STT, DateTime ngay, int mansid, int phongbanid, string TenPhongBan, DateTime TuGio, DateTime DenGio, long ThoiGian, string ghiChu)
        //{
        //    this.STT = STT;
        //    this.Ngay = ngay;
        //    this.MaNS_ID = mansid;
        //    this.PhongBanID = phongbanid;
        //    this.TenPhongBan = TenPhongBan;
        //    this.TuGio = TuGio;
        //    this.DenGio = DenGio;
        //    this.ThoiGian = ThoiGian;
        //    this.GhiChu = ghiChu;
        //}
    }
}