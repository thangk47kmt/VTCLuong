﻿<%@ Page Title="NS công nhân" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NangSuatCongNhan.aspx.cs" Inherits="TNGLuong.NangSuatCongNhan" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 100%; font-family: Tahoma;" class="fontsize">
        <table style="width: 100%;">
            <tr>
                <td style="width: 100%; text-align: center; font-weight: bold; font-size: 14px; padding-bottom: 15px;" colspan="2">PHIẾU NHẬP NĂNG SUẤT HÀNG NGÀY</td>
            </tr>
            <tr>
                <td style="width: 35%;">Chọn ngày:</td>
                <td style="width: 65%;">
                    <asp:TextBox ID="txtDate" runat="server" CssClass="txtNgayThang" Width="100%" AutoPostBack="True" format="dd/MM/yyyy" TextMode="Date" OnTextChanged="txtDate_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 35%;">
                    <asp:Label ID="lblTenMH" runat="server" Text="Mã hàng" CssClass="margin-top"></asp:Label></td>
                <td style="width: 65%;">
                    <asp:DropDownList ID="ddlMaHang" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlMaHang_SelectedIndexChanged" DataTextField="MaHang" DataValueField="MaHang_ID" CssClass="margin-top"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 35%; height: 18px;">
                    <asp:Label ID="Label1" runat="server" Text="Hiệu suất" CssClass="margin-top margin-bottom"></asp:Label></td>
                <td style="width: 65%; height: 18px;">
                    <asp:Label ID="lblHieuSuat" runat="server" Text="0" CssClass="margin-top margin-bottom"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 35%;">
                    <asp:Label ID="Label2" runat="server" Text="Trạng thái" CssClass="margin-top"></asp:Label></td>
                <td style="width: 65%;">
                    <asp:Label ID="lblTrangThai" runat="server" Text="0" CssClass="margin-top"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 35%;">
                    <asp:Label ID="lblTieuDe_CapBPT" runat="server" Text="Số lượng cấp BTP" CssClass="margin-top"></asp:Label></td>
                <td style="width: 65%;">
                    <asp:Label ID="lblSoLuong_CapBTP" runat="server" Text="0" CssClass="margin-top"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="left" style="padding-left: 10px;"></td>
            </tr>
            <tr>
                <td colspan="2" style="margin-top: 10px; font-size: 9pt; font-weight: bold; color: red; width: 100%;">
                    <asp:Label ID="lblCD" runat="server" Text="I. Công đoạn giao kế hoạch" CssClass="margin-top" Width="100%"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="gridNangSuatToMay" runat="server" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="False"
                        Width="100%" BackColor="White" OnRowDataBound="gridNangSuatToMay_RowDataBound" Style="margin-top: -0.2em;" OnRowCommand="gridNangSuatToMay_RowCommand">
                        <AlternatingRowStyle CssClass="GridStyle_AltRowStyle" />
                        <HeaderStyle CssClass="GridStyle_HeaderStyle" BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <RowStyle CssClass="GridStyle_RowStyle" ForeColor="#000066" />
                        <FooterStyle CssClass="GridStyle_FooterStyle" BackColor="White" ForeColor="#000066" />
                        <PagerStyle CssClass="GridStyle_pagination" BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <Columns>
                            <asp:TemplateField HeaderText="thông tin mã hàng" Visible="false">
                                <HeaderStyle Width="0%" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Width="0%"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblMaHangID" runat="server" Text='<%#Eval("MaHangID") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblNhomSizeToMay" runat="server" Text='<%#Eval("NhomSize") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblID_CachMayToMay" runat="server" Text='<%#Eval("ID_CachMay") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblID_CongDoanToMay" runat="server" Text='<%#Eval("ID_CongDoan") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblDaPDToMay" runat="server" Text='<%#Eval("DaPD") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblPhongBanIDToMay" runat="server" Text='<%#Eval("PhongBanID") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:CheckBox ID="chkIsKhoaMaHang" runat="server" Checked='<%#Eval("IsKhoaMaHang") %>' />
                                    <asp:CheckBox ID="chkIsBTP" runat="server" Checked='<%#Eval("IsBTP") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="TT">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="40px" />
                                <ItemStyle HorizontalAlign="Center" Width="20%"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblSTT_String" runat="server" Text='<%#Eval("STT_String") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Tổ" SortExpression="TenPhongban">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblTenPhongbanToMay" runat="server" Text='<%#Eval("TenPhongban") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Mã hàng" SortExpression="MaHang" Visible="false">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemTemplate>
                                    <asp:Label ID="lblMaHang" runat="server" Text='<%#Eval("MaHang") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Số cấp BTP" SortExpression="SoLuong_CapBTP" Visible="false">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemTemplate>
                                    <asp:Label ID="g_lblSoLuong_CapBTP" runat="server" Text='<%#Eval("SoLuong_CapBTP","{0:#,0.##}") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Công đoạn" SortExpression="TenCongDoan">
                                <HeaderStyle HorizontalAlign="Center" />
                                <HeaderTemplate>
                                    <div style="width: 50%; text-align: center; display: inline; margin-top: 3px;">
                                        <asp:Label ID="lblConDoan" runat="server" Text="Công đoạn" Width="50%" Font-Bold="True" ForeColor="White" Style="margin-top: 3px;"></asp:Label>
                                    </div>
                                    <div style="float: right; width: 20%; display: inline;">
                                        <asp:LinkButton ID="lbtnChiTiet" runat="server" Width="20%" Font-Bold="True" ForeColor="White" Style="float: right; margin-right: 15px;" ToolTip="Chi tiết" OnClick="lbtnChiTiet_Click"><i class="fa fa-forward"></i></asp:LinkButton>
                                        <asp:LinkButton ID="lbtnAnChiTiet" runat="server" Width="20%" Font-Bold="True" ForeColor="White" Style="float: right; margin-right: 15px;" ToolTip="Ẩn chi tiết" OnClick="lbtnAnChiTiet_Click" Visible="false"><i class="fa fa-backward"></i></asp:LinkButton>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTenCongDoanToMay" runat="server" Text='<%#Eval("TenCongDoan") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <%--                            <asp:TemplateField HeaderText="TGCN" Visible="false" SortExpression="TGCN">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle ></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblTGCNToMay" runat="server" Text='<%#Eval("TGCN","{0:#,0.##}") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>--%>

                            <asp:TemplateField HeaderText="Hiệu suất TKC" Visible="false" SortExpression="HieuSuat">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemTemplate>
                                    <asp:Label ID="lblHieuSuatToMay" runat="server" Text='<%#Eval("HieuSuat","{0:#,0.##}") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Lũy kế MH" Visible="true" SortExpression="LuyKe_CongDoan">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemTemplate>
                                    <asp:Label ID="lblLuyKeCD" runat="server" Text='<%#Eval("LuyKe_CongDoan","{0:#,0.##}") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Lũy kế CN" Visible="true" SortExpression="LuyKe">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemTemplate>
                                    <asp:Label ID="lblLuyKeToMay" runat="server" Text='<%#Eval("LuyKe","{0:#,0.##}") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <%--                            <asp:TemplateField HeaderText="Giá" Visible="false" SortExpression="DonGia">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle ></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblDonGiaToMay" runat="server" Text='<%#Eval("DonGia","{0:#,0.##}") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>--%>

                            <asp:TemplateField HeaderText="KH" SortExpression="KeHoach_NhanVien">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemTemplate>
                                    <asp:Label ID="lblKeHoach_NhanVien" runat="server" Text='<%#Eval("KeHoach_NhanVien") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="NS" SortExpression="ThucHien_NhanVien">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                                <ItemTemplate>
                                    <asp:Label ID="lblThucHienGoc" runat="server" Text='<%#Eval("ThucHien_NhanVien") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtThucHien_NhanVienToMay" runat="server" Text='<%#Eval("ThucHien_NhanVien") %>' Width="100%"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="HD">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="Hướng dẫn thao tác" CommandArgument='<%#Eval("ID_CongDoan") %>' CommandName="huongdan" ImageUrl="~/images/hd.png" Width="20px" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                <ItemStyle HorizontalAlign="Center" Width="20px" />
                            </asp:TemplateField>
                        </Columns>
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnSaveToMay" runat="server" Text="Lưu" CssClass="btnSave" OnClick="btnSaveToMay_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div style="width: 100%; font-family: Tahoma; margin-top: 15px;" class="fontsize">
        <table style="width: 100%;">
            <tr>
                <td colspan="2" style="width: 100%;">
                    <div style="margin-top: 10px; float: left; font-size: 9pt; font-weight: bold; color: red;">
                        <asp:Label ID="Label3" runat="server" Text="III. Công đoạn nhảy khâu" CssClass="margin-top"></asp:Label>
                    </div>
                    <div class="topnav">
                        <div class="search-container">
                            <input type="text" class="textbox" placeholder="Tìm công đoạn.." name="search" id="txtsearch" runat="server">
                            <asp:Label ID="Label4" runat="server" Style="margin-right: 5px;" Text="Số giờ :"></asp:Label>
                            <asp:Label ID="lblSoGio" runat="server" Style="margin-right: 5px;" Text=""></asp:Label>
                            <asp:Label ID="Label5" runat="server" Style="margin-right: 5px;" Text="   phút :"></asp:Label>
                            <asp:Label ID="lblSoPhut" runat="server" Style="margin-right: 5px;" Text=""></asp:Label>
                            <button type="submit" id="btnSreach" runat="server"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                    <%--<asp:TextBox ID="txtTimKiem" CssClass="textbox" runat="server" Width="100%" AutoPostBack="True"></asp:TextBox>--%>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 100%;">
                    <asp:GridView ID="gridNhapThoiGian" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ShowFooter="True" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="STT" HeaderText="STT">
                                <HeaderStyle HorizontalAlign="Center" Width="10%" />
                                <ItemStyle HorizontalAlign="Center" Width="10%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PhongBanID" HeaderText="PhongBanID" Visible="false">
                                <HeaderStyle HorizontalAlign="Center" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TenPhongBan" HeaderText="Tổ may">
                                <HeaderStyle HorizontalAlign="Center" Width="20%" />
                                <ItemStyle HorizontalAlign="Center" Width="20%" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Bắt đầu">
                                <HeaderStyle HorizontalAlign="Center" Width="15%" />
                                <ItemStyle HorizontalAlign="Right" Width="15%" />
                                <ItemTemplate>
                                    <asp:TextBox ID="txtStartDate" runat="server" Text='<%#Eval("TuGio","{0:HH:mm}") %>' Width="100%" Style="text-align: center;" TextMode="Time" ReadOnly="true"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Kết thúc">
                                <HeaderStyle HorizontalAlign="Center" Width="15%" />
                                <ItemStyle HorizontalAlign="Right" Width="15%" />
                                <ItemTemplate>
                                    <asp:TextBox ID="txtEndDate" runat="server" Text='<%#Eval("DenGio","{0:HH:mm}") %>' Width="100%" Style="text-align: center;" TextMode="Time" ReadOnly="true"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Số giây">
                                <HeaderStyle HorizontalAlign="Center" Width="10%" />
                                <ItemStyle HorizontalAlign="Right" Width="10%" />
                                <ItemTemplate>
                                    <asp:TextBox ID="txtThoiGian" runat="server" Text='<%#Eval("ThoiGian") %>' Width="100%" Style="text-align: right;" ReadOnly="true"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Ghi chú">
                                <HeaderStyle HorizontalAlign="Center" Width="25%" />
                                <ItemStyle HorizontalAlign="Right" Width="25%" />
                                <ItemTemplate>
                                    <asp:TextBox ID="txtGhiChu" runat="server" Text='<%#Eval("GhiChu") %>' Width="100%" ReadOnly="true"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="2">

                    <asp:GridView ID="gridNangSuatNhayKhau" runat="server" BorderColor="#CCCCCC" BorderStyle="None"
                        BorderWidth="1px" AutoGenerateColumns="False" Width="100%" BackColor="White" OnRowDataBound="gridNangSuatNhayKhau_RowDataBound" OnRowCommand="gridNangSuatNhayKhau_RowCommand">
                        <AlternatingRowStyle CssClass="GridStyle_AltRowStyle" />
                        <HeaderStyle CssClass="GridStyle_HeaderStyle" BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <RowStyle CssClass="GridStyle_RowStyle" ForeColor="#000066" />
                        <FooterStyle CssClass="GridStyle_FooterStyle" BackColor="White" ForeColor="#000066" />
                        <PagerStyle CssClass="GridStyle_pagination" BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <Columns>
                            <asp:TemplateField HeaderText="TT">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                                <ItemStyle HorizontalAlign="Center" Width="7%"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblSTT_String" runat="server" Text='<%#Eval("STT_String") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Mã hàng">
                                <HeaderStyle Width="25%" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Width="25%"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblIsKhoaMaHang_NK" runat="server" Text='<%#Eval("IsKhoaMaHang") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblID_CongDoanNhayKhau" runat="server" Text='<%#Eval("ID_CongDoan") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblPhongBanIDNhayKhau" runat="server" Text='<%#Eval("PhongBanID") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblNhomSizeNhayKhau" runat="server" Text='<%#Eval("NhomSize") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblID_CachMayNhayKhau" runat="server" Text='<%#Eval("ID_CachMay") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblIsBTP" runat="server" Text='<%#Eval("IsBTP") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblMaHangNhayKhau" runat="server" Text='<%#Eval("Mahang") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Công đoạn">
                                <HeaderStyle Width="50%" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Width="50%"></ItemStyle>
                                <HeaderTemplate>
                                    <div style="width: 80%; text-align: center; display: inline; margin-top: 3px;">
                                        <asp:Label ID="lblConDoan" runat="server" Text="Công đoạn" Width="79%" Font-Bold="True" ForeColor="White" Style="margin-top: 3px;"></asp:Label>
                                    </div>
                                    <div style="float: right; width: 20%; display: inline;">
                                        <asp:LinkButton ID="lbtnNK_CT" runat="server" Width="20%" Font-Bold="True" ForeColor="White" Style="float: right; margin-right: 15px;" ToolTip="Chi tiết" OnClick="lbtnNK_CT_Click"><i class="fa fa-forward"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkNK_AnCT" runat="server" Width="20%" Font-Bold="True" ForeColor="White" Style="float: right; margin-right: 15px;" ToolTip="Ẩn chi tiết" OnClick="LinkNK_AnCT_Click" Visible="false"><i class="fa fa-backward"></i></asp:LinkButton>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTenCongDoanNhayKhau" runat="server" Text='<%#Eval("TenCongDoan") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <%--<asp:TemplateField HeaderText="TGCN" Visible="false">
                                <HeaderStyle Width="12%" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Width="12%" HorizontalAlign="Center"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblTGCNhayKhau" runat="server" Text='<%#Eval("TGCN","{0:#,0.##}") %>' Width="100%"></asp:Label>
                                    <asp:Label ID="lblDonGiaNhayKhau" runat="server" Text='<%#Eval("DonGia","{0:#,0.##}") %>' Width="100%" Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>--%>

                            <asp:TemplateField HeaderText="Lũy kế" Visible="true">
                                <HeaderStyle Width="8%" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Width="8%"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblHSNhayKhau" runat="server" Text="" Width="100%" Visible="false"></asp:Label>
                                    <asp:Label ID="lblLuyKeNK" runat="server" Text='<%#Eval("LuyKe","{0:#,0.##}") %>' Width="100%"></asp:Label>
                                    <asp:Label ID="lblSoLuong_CapBTP" runat="server" Text='<%#Eval("SoLuong_CapBTP") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="NS">
                                <HeaderStyle Width="10%" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Width="10%"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblThucHienGoc" runat="server" Text='<%#Eval("CongNhan") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtCongNhanNhayKhau" runat="server" Text='<%#Eval("CongNhan") %>' Width="100%"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="HD">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton2NhayKhau" runat="server" AlternateText="Hướng dẫn thao tác" CommandArgument='<%#Eval("ID_CongDoan") %>' CommandName="huongdanNhayKhau" ImageUrl="~/images/hd.png" Width="20px" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" Width="3%" />
                                <ItemStyle HorizontalAlign="Center" Width="3%" />
                            </asp:TemplateField>
                        </Columns>
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
            </tr>
            <%--<tr>
                <td colspan="2">

                    <asp:GridView ID="gridThoiGianNhayKhau" runat="server" BorderColor="#CCCCCC" BorderStyle="None" 
                        BorderWidth="1px" AutoGenerateColumns="False" Width="100%" BackColor="White" OnRowDataBound="gridThoiGianNhayKhau_RowDataBound" OnRowCommand="gridThoiGianNhayKhau_RowCommand">
                        <AlternatingRowStyle CssClass="GridStyle_AltRowStyle" />
                        <HeaderStyle CssClass="GridStyle_HeaderStyle" BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <RowStyle CssClass="GridStyle_RowStyle" ForeColor="#000066" />
                        <FooterStyle CssClass="GridStyle_FooterStyle" BackColor="White" ForeColor="#000066" />
                        <PagerStyle CssClass="GridStyle_pagination" BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <Columns>
                            <asp:TemplateField HeaderText="TT">
                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="30px" />
                                <ItemStyle HorizontalAlign="Center" Width="30px" ></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblSTT" runat="server" Text='<%#Eval("STT") %>' Width="100%"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Tổ nhảy khâu">
                                <HeaderStyle Width="70%" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Width="70%"></ItemStyle>
                                <ItemTemplate>
                                    <asp:DropDownList ID="ddlToNhayKhau" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlMaHang_SelectedIndexChanged" DataTextField="MaHang" DataValueField="MaHang_ID" CssClass="margin-top"></asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>                         



                            <asp:TemplateField HeaderText="Giờ nhảy khâu">
                                <HeaderStyle Width="100" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle Width="100"></ItemStyle>
                                <ItemTemplate>
                                    <asp:Label ID="lblGioNhayKhau" runat="server" Text='<%#Eval("CongNhan") %>' Width="100%" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtGioNhayKhau" runat="server" Text='<%#Eval("CongNhan") %>' Width="100%"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </td>
            </tr>--%>
            <tr>
                <td style="width: 45%" align="right">
                    <asp:Button ID="btnSaveNhayKhau" runat="server" Text="Lưu" CssClass="btnSave" OnClick="btnSaveNhayKhau_Click" />
                </td>
                <td style="width: 55%" align="left">
                    <asp:Button ID="btnNhapNhayKhau" runat="server" Text="Nhập nhảy khâu" CssClass="btnSave" OnClick="btnNhapNhayKhau_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div style="width: 100%; font-family: Tahoma; font-size: 12px; margin-top: 15px;">
        <%--<div style="margin-top: 10px;width:100%;font-size: 10pt;font-weight: bold;color: red;">
            <asp:Label ID="Label4" runat="server" Text="Lý do chưa duyệt:" CssClass="margin-top"></asp:Label>
        </div>
        <div style="width:100%;font-size: 9pt;color: red;padding:1px 15px">
            <asp:Label ID="lblLyDo" runat="server" Text="Tổ trưởng chưa phê duyệt." Width="100%"></asp:Label>
        </div>--%>
    </div>
    <div class="modal fade modal-addThis modal-contactform in" id="addthismodalContact" runat="server" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div id="divThongBao" runat="server" class="modal-dialog modal-dialog-centered" style="display: none;">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="divthongbao">
                        <p style="color: #039; font-family: Tahoma;">Thông báo</p>
                        <button type="button" class="close" data-dismiss="modal" id="btnclose" runat="server">×</button>
                    </div>
                </div>
                <div class="modal-body content_popupform">
                    <asp:Label ID="lblMessenger" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade modal-addThis modal-succesform in" id="divHDThaoTac" runat="server" style="display: none;">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="divthongbao" style="width: 96%;">
                        <p style="color: #039; font-family: Tahoma;">Hướng dẫn thao tác cho công đoạn</p>
                        <button type="button" class="close" data-dismiss="modal" id="btncloseHD" runat="server" style="margin-top: -1em;">×</button>
                    </div>
                </div>
                <div class="modal-body content_popupform">
                    <asp:GridView ID="gridHuongDanThaoTac" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="100%" OnRowCreated="gridHuongDanThaoTac_RowCreated" OnRowDataBound="gridHuongDanThaoTac_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="STT">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" Width="50px" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Ten_ThaoTac" HeaderText="Tên thao tác" SortExpression="Ten_ThaoTac">
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TanSuat" DataFormatString="{0:#,0.##}" HeaderText="Tuần suất" SortExpression="TanSuat">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <%--                            <asp:BoundField DataField="TMU" DataFormatString="{0:#,0.##}" HeaderText="TMU" SortExpression="TMU">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TG_ThaoTac" DataFormatString="{0:#,0.##}" HeaderText="Thời gian(s)" SortExpression="TG_ThaoTac">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>--%>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
