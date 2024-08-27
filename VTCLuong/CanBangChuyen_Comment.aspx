<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CanBangChuyen_Comment.aspx.cs" Inherits="TNGLuong.CanBangChuyen_Comment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 100%; font-family: Tahoma; font-size: 12px;">
        <table style="width: 100%;">
            <tr>
                <td style="width: 35%;">Chọn ngày:</td>
                <td style="width: 65%;">
                    <asp:TextBox ID="txtDate" runat="server" CssClass="txtNgayThang" format="dd/MM/yyyy" Width="100%" AutoPostBack="True" TextMode="Date" OnTextChanged="txtDate_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 35%; height: 22px;">
                    <asp:Label ID="lblTo" runat="server" Text="Tổ" CssClass="margin-top"></asp:Label></td>
                <td style="width: 65%; height: 22px;">
                    <asp:DropDownList ID="ddlToMay" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlToMay_SelectedIndexChanged" DataTextField="TenPhongban" DataValueField="PhongBanID" CssClass="margin-top"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 35%;">
                    <asp:Label ID="lblTenMH" runat="server" Text="Mã hàng" CssClass="margin-top"></asp:Label></td>
                <td style="width: 65%;">
                    <asp:DropDownList ID="ddlMaHang" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlMaHang_SelectedIndexChanged" DataTextField="TenMaHang" DataValueField="STT" CssClass="margin-top"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 35%;">
                    <asp:Label ID="lblTenCum" runat="server" Text="Cụm" CssClass="margin-top"></asp:Label></td>
                <td style="width: 65%;">
                    <asp:DropDownList ID="ddlCum" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlCum_SelectedIndexChanged" DataTextField="TemCum" DataValueField="ID_Cum" CssClass="margin-top"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 100%;">
    <table style="width: 100%;">
        <tr>
            <td style="width: 0px;"></td>
            <td style="width: 100%;">
                <div class="topnav">
                    <div class="search-container">
                        <button type="submit" id="btnThemThoiGian" runat="server" style="float: right; margin-right: 5px;">Thêm thời gian</button>
                    </div>
                </div>
            </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="gridNhapThoiGian" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ShowFooter="True" Width="100%" OnRowDataBound="gridNhapThoiGian_RowDataBound" OnRowCommand="gridNhapThoiGian_RowCommand" OnRowDeleting="gridNhapThoiGian_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="STT" HeaderText="STT">
                                <HeaderStyle HorizontalAlign="Center" Width="5%" />
                                <ItemStyle HorizontalAlign="Center" Width="5%" />
                            </asp:BoundField>
                            <%--<asp:BoundField DataField="PhongBanID" HeaderText="PhongBanID" Visible="false">
                                <HeaderStyle HorizontalAlign="Center" Width="100px" />
                                <ItemStyle HorizontalAlign="Center" Width="100px" />
                            </asp:BoundField>--%>
                            <asp:TemplateField HeaderText="PhongBanID" Visible="true">
                                <HeaderStyle HorizontalAlign="Center" Width="5%" />
                                <ItemStyle HorizontalAlign="Right" Width="5%" />
                                <ItemTemplate>
                                    <asp:TextBox ID="txtPhongBanID" runat="server" Text='<%#Eval("PhongBanID") %>' Width="100%" Style="text-align: right;"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="TenPhongBan" HeaderText="Tổ may">
                                <HeaderStyle HorizontalAlign="Center" Width="10%" />
                                <ItemStyle HorizontalAlign="Center" Width="10%" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Thời gian">
                                <HeaderStyle HorizontalAlign="Center" Width="10%" />
                                <ItemStyle HorizontalAlign="Right" Width="10%" />
                                <ItemTemplate>
                                    <asp:TextBox ID="txtThoiGian" runat="server" Text='<%#Eval("ThoiGian","{0:HH:mm}") %>' Width="100%" Style="text-align: center;" TextMode="Time"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nội dung">
                                <HeaderStyle HorizontalAlign="Center" Width="60%" />
                                <ItemStyle HorizontalAlign="Right" Width="60%" />
                                <ItemTemplate>
                                    <asp:TextBox ID="txtNoiDung" runat="server" Text='<%#Eval("NoiDung") %>' Width="100%"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:ButtonField ButtonType="Button" CommandName="DeleteRow" ControlStyle-Width="100%" Text="Xóa" />

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
<%--            <tr>
                <td colspan="2" style="width: 45%" align="center">
                    <asp:Button ID="btnSaveNhayKhau" runat="server" Text="Lưu" CssClass="btnSave" OnClick="btnSaveNhayKhau_Click" />
                    <asp:Button ID="btnHuy" runat="server" Text="Hủy" CssClass="btnSave" OnClick="btnHuy_Click" />
                </td>
            </tr>--%>
        </table>
        </td>
            </tr>
        </table>
    </div>
    <div class="modal fade modal-addThis modal-contactform in" id="addthismodalContact" runat="server" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="divthongbao">
                        <p style="color: #039; font-family: Tahoma;">Thông báo</p>
                        <button type="button" class="close" data-dismiss="modal" id="btnclose" runat="server">×</button>
                    </div>
                </div>
                <div class="modal-body content_popupform">
                    <asp:Label ID="lblMessenger" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                    <div style="width: 215px; margin: auto" runat="server" id="divBTN">
                        <asp:Button ID="btnOK" runat="server" Text="Có" CssClass="btnSave" OnClick="btnOK_Click" Width="100px" />
                        <asp:Button ID="btnCancel" runat="server" Text="Không" CssClass="btnSave" OnClick="btnclose_Click" Width="100px" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
