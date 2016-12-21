using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;

namespace CuaHangDT
{
    public partial class FrmNhapHang : Form
    {
       
        public FrmNhapHang()
        {
            InitializeComponent();
        }

        void LoadCTNhapHang()
        {
            using (var db = new QLBH_BTEntities())
            {
                var CT = from CTPN in db.CHITIETPHIEUNHAPs
                         join PN in db.PHIEUNHAPs on CTPN.MaPN equals PN.MaPN
                         orderby CTPN.MaPN
                         select new
                         {
                             MaPN = PN.MaPN,
                             MaNV = PN.MaNV,
                             MaSP = CTPN.MaSP,
                             MaNCC = PN.MaNCC,
                             SoLuong = CTPN.SoLuong,
                             ThanhTien = CTPN.ThanhTien,
                         };
                dgvChiTietPN.DataSource = CT.ToList();
            }
            binding();
        }

        void binding()
        {
            cbMaNCC.DataBindings.Clear();
            cbMaNCC.DataBindings.Add("text", dgvChiTietPN.DataSource, "MaNCC");
            cbMaNV.DataBindings.Clear();
            cbMaNV.DataBindings.Add("text", dgvChiTietPN.DataSource, "MaNV");
            cbMaPN.DataBindings.Clear();
            cbMaPN.DataBindings.Add("text", dgvChiTietPN.DataSource, "MaPN");
            cbMaSP.DataBindings.Clear();
            cbMaSP.DataBindings.Add("text", dgvChiTietPN.DataSource, "MaSP");

        }

        private void FrmNhapHang_Load(object sender, EventArgs e)
        {
            QLBH_BTEntities db = new QLBH_BTEntities();
            this.LoadCTNhapHang();

            //Load MaPhieuNhap len combobox MaPN
            var LoadMaPN = new QLBH_BTEntities();
            cbMaPN.ValueMember = "MaPN";
            cbMaPN.DataSource = LoadMaPN.PHIEUNHAPs.ToList();

            //Load MaNhanVien len combobox MaNV
            var LoadMaNV = new QLBH_BTEntities();
            cbMaNV.ValueMember = "MaNV";
            cbMaNV.DataSource = LoadMaNV.NHANVIENs.ToList();

            //Load MaNhaCungCap len combobox MaNCC
            var LoadMaNCC = new QLBH_BTEntities();
            cbMaNCC.ValueMember = "MaNCC";
            cbMaNCC.DataSource = LoadMaNCC.NHACUNGCAPs.ToList();

            //Load MaSanPham len combobox MaSP
            var LoadMaSP = new QLBH_BTEntities();
            cbMaSP.ValueMember = "MaSP";
            cbMaSP.DataSource = LoadMaSP.SANPHAMs.ToList();
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void cbMaPN_SelectionChangeCommitted(object sender, EventArgs e)
        {
            using (var db = new QLBH_BTEntities())
            {
                var CT = from CTPN in db.CHITIETPHIEUNHAPs
                         join PN in db.PHIEUNHAPs on CTPN.MaPN equals PN.MaPN
                         where (CTPN.MaPN == cbMaPN.Text)
                         orderby CTPN.MaPN
                         select new
                         {
                             MaPN = PN.MaPN,
                             MaNV = PN.MaNV,
                             MaSP = CTPN.MaSP,
                             MaNCC = PN.MaNCC,
                             SoLuong = CTPN.SoLuong,
                             ThanhTien = CTPN.ThanhTien,
                         };
                dgvChiTietPN.DataSource = CT.ToList();
            }
        }

        private void btnTaiDuLieu_Click(object sender, EventArgs e)
        {
            LoadCTNhapHang();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            var db = new QLBH_BTEntities();
            var MaPN = cbMaPN.Text;
            try
            {
                db.PHIEUNHAPs.Single(p => p.MaPN == MaPN);
            }
            catch
            {
                //Them moi ma chua co
                using (var db1 = new QLBH_BTEntities())
                {
                    var pn = new PHIEUNHAP
                    {
                        MaPN = cbMaPN.Text,
                        MaNV = cbMaNV.Text,
                        MaNCC = cbMaNCC.Text,
                    };
                    db1.PHIEUNHAPs.Add(pn);
                    db1.SaveChanges();
                }
            }
            finally
            {
                using (var db2 = new QLBH_BTEntities())
                {
                    var ctpn = new CHITIETPHIEUNHAP
                    {
                        MaPN = cbMaPN.Text,
                        MaSP = cbMaSP.Text,
                        SoLuong = int.Parse(txtSoLuong.Text),
                        ThanhTien = int.Parse(txtThanhTien.Text),

                    };
                    db2.CHITIETPHIEUNHAPs.Add(ctpn);
                    db2.SaveChanges();

                }

                LoadCTNhapHang();
            }

        }

       
    }
}

