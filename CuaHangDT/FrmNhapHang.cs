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
                             NgayNhap = PN.NgayNhap,
                         };
                dgvChiTietPN.DataSource = CT.ToList();
            }
        }

        private void FrmNhapHang_Load(object sender, EventArgs e)
        {
            QLBH_BTEntities db = new QLBH_BTEntities();
            this.LoadCTNhapHang();

            LoadComboboxMaNCC();
            LoadComboboxMaNV();
            LoadComboboxMaPN();
            LoadComboboxMaSP();
        }
        private void LoadComboboxMaPN()
        {
            var LoadMaPN = new QLBH_BTEntities();
            cbMaPN.ValueMember = "MaPN";
            cbMaPN.DataSource = LoadMaPN.PHIEUNHAPs.ToList();

        }

        private void LoadComboboxMaNCC()
        {
            var LoadMaNCC = new QLBH_BTEntities();
            cbMaNCC.ValueMember = "MaNCC";
            cbMaNCC.DataSource = LoadMaNCC.NHACUNGCAPs.ToList();
        }

        private void LoadComboboxMaSP()
        {
            var LoadMaSP = new QLBH_BTEntities();
            cbMaSP.ValueMember = "MaSP";
            cbMaSP.DataSource = LoadMaSP.SANPHAMs.ToList();
        }

        private void LoadComboboxMaNV()
        {
            var LoadMaNV = new QLBH_BTEntities();
            cbMaNV.ValueMember = "MaNV";
            cbMaNV.DataSource = LoadMaNV.NHANVIENs.ToList();

        }

        private void dgvChiTietPN_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = dgvChiTietPN.CurrentRow.Index;

            cbMaPN.Text = dgvChiTietPN.Rows[index].Cells[0].Value.ToString();
            cbMaNV.Text = dgvChiTietPN.Rows[index].Cells[1].Value.ToString();
            cbMaSP.Text = dgvChiTietPN.Rows[index].Cells[2].Value.ToString();
            cbMaNCC.Text = dgvChiTietPN.Rows[index].Cells[3].Value.ToString();
            txtSoLuong.Text = dgvChiTietPN.Rows[index].Cells[4].Value.ToString();
            txtThanhTien.Text = dgvChiTietPN.Rows[index].Cells[5].Value.ToString();
            dateNgayNhap.Text = dgvChiTietPN.Rows[index].Cells[6].Value.ToString();

        }

        private void btnThem_Click_1(object sender, EventArgs e)
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
                        NgayNhap = dateNgayNhap.Value,

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

        private void btnXoa_Click(object sender, EventArgs e)
        {
            var MaPN = cbMaPN.Text;
            try
            {
                QLBH_BTEntities db = new QLBH_BTEntities();
                var Xoa = (from CT in db.CHITIETPHIEUNHAPs
                           join PN in db.PHIEUNHAPs on CT.MaPN equals PN.MaPN
                           where CT.MaPN == MaPN
                           select CT).FirstOrDefault();
                db.CHITIETPHIEUNHAPs.Remove(Xoa);
                try
                {
                    db.CHITIETPHIEUNHAPs.Single(p => p.MaPN == MaPN);
                }
                catch
                {
                    var PN = db.PHIEUNHAPs.Single(p => p.MaPN == MaPN);
                    db.PHIEUNHAPs.Remove(PN);
                }
                db.SaveChanges();
                LoadCTNhapHang();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            QLBH_BTEntities db = new QLBH_BTEntities();
            try
            {

                var MaPN = cbMaPN.Text;
                var MaSP = cbMaSP.Text;
                var Sua = (from CTPN in db.CHITIETPHIEUNHAPs
                           join PN in db.PHIEUNHAPs on CTPN.MaPN equals PN.MaPN
                           where (CTPN.MaPN == MaPN && CTPN.MaSP == MaSP)
                           select CTPN).FirstOrDefault();

                Sua.SoLuong = int.Parse(txtSoLuong.Text);
                Sua.ThanhTien = int.Parse(txtThanhTien.Text);
                db.Entry(Sua).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                LoadCTNhapHang();



            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                //throw;
            }
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void btnTaiDuLieu_Click(object sender, EventArgs e)
        {
            LoadCTNhapHang();
        }
    }
}


