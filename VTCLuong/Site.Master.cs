using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TNGLuong.Models;

namespace TNGLuong
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null && Session["fullname"] != null)
            {
                lblFullName.Text = Session["fullname"].ToString();
                lblMaNhanSu.Text = Session["username"].ToString();
                if (Session["ChucVu"] != null)
                {
                    duyetNS.Visible = true;
                    duyetNS_mobile.Visible = true;

                    TimeSpan time1 = new TimeSpan();
                    TimeSpan time2 = new TimeSpan();
                    TimeSpan time = TimeSpan.Parse(DateTime.Now.ToString("HH:mm"));
                    if (Session["time1"] != null)
                        time1 = TimeSpan.Parse(Session["time1"].ToString());
                    if (Session["time2"] != null)
                        time2 = TimeSpan.Parse(Session["time2"].ToString());
                    TimeSpan timeHT = TimeSpan.Parse(DateTime.Now.ToString("HH:mm"));
                    if (TimeSpan.Compare(timeHT, time1) >= 0 && TimeSpan.Compare(timeHT, time2) <= 0 && DateTime.Now.DayOfWeek != DayOfWeek.Sunday)
                    {
                        nhapNS.Visible = false;
                        nhapNS_mobile.Visible = false;
                    }
                    else
                    {
                        nhapNS.Visible = true;
                        nhapNS_mobile.Visible = true;
                    }

                    thoigiancho.Visible = false;                    
                    thoigiancho_mobile.Visible = false;
                    tonghop.Visible = false;
                    tonghop_mobile.Visible = false;
                    //liphantoNK.Visible = true;
                    liphantoNK_mobile.Visible = true;
                    phancongviec.Visible = true;
                    phancumtrg_mobile.Visible = true;
                    phancongdoan_mobile.Visible = true;
                    chamCongCN.Visible = false;
                    luongns.Visible = false;
                    luongns_mobile.Visible = false;
                    if (Session["KhoaBL"] != null && Session["KhoaBL"].ToString().Equals(("true").ToUpper()))
                    {
                        tonghoplg_mobile.Visible = false;
                        liTongHopLuong.Visible = false;
                        thuongnam.Visible = false;
                        thuongnam_mobile.Visible = false;
                        liKiemTraCongDiLam.Visible = false;
                        kiemtracongdilam_mobile.Visible = false;
                        congdilamcongnhan_mobile.Visible = false;
                        luongns.Visible = false;
                        luongns_mobile.Visible = false;
                    }
                    else
                    {
                        liTongHopLuong.Visible = true;
                        tonghoplg_mobile.Visible = true;
                        thuongnam.Visible = true;
                        thuongnam_mobile.Visible = true;
                        liKiemTraCongDiLam.Visible = true;
                        kiemtracongdilam_mobile.Visible = true;
                        congdilamcongnhan_mobile.Visible = true;
                        luongns.Visible = true;
                        luongns_mobile.Visible = true;
                    }
                }                
                else /*if (Session["ToMay"] != null)*/
                {
                    TimeSpan time1 = new TimeSpan();
                    TimeSpan time2 = new TimeSpan();
                    TimeSpan time = TimeSpan.Parse(DateTime.Now.ToString("HH:mm"));
                    if (Session["time1"] != null)
                        time1 = TimeSpan.Parse(Session["time1"].ToString());
                    if (Session["time2"] != null)
                        time2 = TimeSpan.Parse(Session["time2"].ToString());
                    TimeSpan timeHT = TimeSpan.Parse(DateTime.Now.ToString("HH:mm"));
                    if (TimeSpan.Compare(timeHT, time1) >= 0 && TimeSpan.Compare(timeHT, time2) <= 0 && DateTime.Now.DayOfWeek != DayOfWeek.Sunday)
                    {
                        nhapNS.Visible = false;
                        nhapNS_mobile.Visible = false;
                    }
                    else
                    {
                        nhapNS.Visible = true;
                        nhapNS_mobile.Visible = true;
                    }

                    if (Session["Admin"] != null && Session["Admin"].ToString().Equals("cntt@123345"))
                    {
                        luongns.Visible = true;
                        luongns_mobile.Visible = true;
                        bluong.Visible = true;
                        bluong_mobile.Visible = true;
                    }
                    else
                    {
                        if (Session["KhoaBL"] != null && Session["KhoaBL"].ToString().Equals(("true").ToUpper()))
                        {
                            thuongnam.Visible = false;
                            thuongnam_mobile.Visible = false;
                            chamCongCN.Visible = false;
                            congdilamcongnhan_mobile.Visible = false;
                            luongns.Visible = false;
                            luongns_mobile.Visible = false;
                        }
                        else
                        {
                            thuongnam.Visible = true;
                            thuongnam_mobile.Visible = true;
                            chamCongCN.Visible = true;
                            congdilamcongnhan_mobile.Visible = true;
                            luongns.Visible = true;
                            luongns_mobile.Visible = true;
                        }
                    }
                    bluong.Visible = true;
                    bluong_mobile.Visible = true;
                    luongns.Visible = true;
                    luongns_mobile.Visible = true;
                    thoigiancho.Visible = true;
                    thoigiancho_mobile.Visible = true;
                    duyetNS.Visible = false;
                    duyetNS_mobile.Visible = false;
                    tonghop.Visible = true;
                    tonghop_mobile.Visible = true;
                    //liphantoNK.Visible = false;
                    liphantoNK_mobile.Visible = false;
                    //tonghoplg.Visible = false;
                    tonghoplg_mobile.Visible = false;
                    liTongHopLuong.Visible = true;
                    phancongviec.Visible = false;
                    phancumtrg_mobile.Visible = false;
                    phancongdoan_mobile.Visible = false;
                    liKiemTraCongDiLam.Visible = false;
                    kiemtracongdilam_mobile.Visible = false;                    
                }
                //else
                //{
                //    nhapNS.Visible = false;
                //    duyetNS.Visible = false;
                //    luongns.Visible = false;
                //    thoigiancho.Visible = false;
                //    nhapNS_mobile.Visible = false;
                //    duyetNS_mobile.Visible = false;
                //    luongns_mobile.Visible = false;
                //    thoigiancho_mobile.Visible = false;
                //    tonghop.Visible = false;
                //    tonghop_mobile.Visible = false;
                //    liphantoNK.Visible = false;
                //    liphantoNK_mobile.Visible = false;
                //}
                if(Session["IsResetPass"] != null)
                {
                    if(Session["IsResetPass"].ToString() == "1")
                        liResetPass.Visible = true;
                    else if(Session["IsResetPass"].ToString() == "0")
                        liResetPass.Visible = false;
                    else
                        liResetPass.Visible = false;
                }
                else
                    liResetPass.Visible = false;

                //if (Session["NhomCongViec_ID"].ToString() != "1" && Session["NhomCongViec_ID"].ToString() != "3" && Session["NhomCongViec_ID"].ToString() != "5")
                //{
                //    if (Session["NhomCat_HoanThien"] != null && Session["NhomCat_HoanThien"].ToString().ToLower().Contains("kiểm gấp"))
                //    {
                //        liKyLuc.Visible = false;
                //        liKyLuc_mobile.Visible = false;
                //        liKyLuc2_mobile.Visible = false;
                //    }
                //    else
                //    {
                //        liKyLuc.Visible = true;
                //        liKyLuc_mobile.Visible = true;
                //        liKyLuc2_mobile.Visible = true;
                //    }
                //}
                //else
                //{
                    liKyLuc.Visible = false;
                    liKyLuc_mobile.Visible = false;
                    liKyLuc2_mobile.Visible = false;
                //}
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void lbtnLogout_Click(object sender, EventArgs e)
        {
            Session["fullname"] = null;
            Session["username"] = null;
            Session["userid"] = null;
            Session["PhongBanID"] = null;
            Session["ToMay"] = null;
            Session["ChucVu"] = null;
            Session["TNGF"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void lbtnTonghopLg_Click(object sender, EventArgs e)
        {
            //LCB_WEB_DemTruyCap webtruycap = new LCB_WEB_DemTruyCap();
            //webtruycap.MaNS = Session["username"].ToString();
            //webtruycap.MucTruyCap = "Tổng hợp lương";
            //webtruycap.ThoiGianTruyCap = DateTime.Now;
            //TNG_CTLDbContact db = new TNG_CTLDbContact();
            //db.LCB_WEB_DemTruyCap.Add(webtruycap);
            //db.SaveChanges();
            //Response.Redirect("TongHopLuong");
        }

        protected void lbtnResetPass_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin");
        }
    }
}