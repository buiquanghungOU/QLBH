using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.Entity;

namespace CuaHangDT
{
    public partial class FrmXuatHang : Form
    {
        public FrmXuatHang()
        {
            InitializeComponent();
        }

        void LoadCTPhieuXuat()
        {
            using (var db = new QLBH_BTEntities())
            {
                var CT = from CTPX in db.CHITIETPHIEUXUATs
                         join PX in db.PHIEUXUATs on CTPX.MaPX equals PX.MaPX
                         orderby CTPX.MaPX
                         select new
                         {
                             MaPX = CTPX.MaPX,
                             MaSP = CTPX.MaSP,
                             MaNV = PX.MaNV,
                             SoLuong = CTPX.SoLuong,
                             NgayXuat = CTPX.Ngayxuat,
                             GioXuat = CTPX.Gioxuat,
                         };
                dgvChiTietPhieuXuat.DataSource = CT.ToList();
            }
            
        }

        private void FrmXuatHang_Load(object sender, EventArgs e)
        {
            QLBH_BTEntities db = new QLBH_BTEntities();
            this.LoadCTPhieuXuat();

            //Load MaNV vao ComboBox MaNV
            var LoadmaNV = new QLBH_BTEntities();
            cbMaNV.ValueMember = "MaNV";
            cbMaNV.DataSource = LoadmaNV.NHANVIENs.ToList();

            //Load Ma san pham vao Combobox MaSP
            var LoadMaSP = new QLBH_BTEntities();
            cbMaSP.ValueMember = "MaSP";
            cbMaSP.DataSource = LoadMaSP.SANPHAMs.ToList();

            //Load Ma Phieu xuat va Combobox MaPX
            var loadMaPX = new QLBH_BTEntities();
            cbMaPX.ValueMember = "MaPX";
            cbMaPX.DataSource = loadMaPX.PHIEUXUATs.ToList();

            //Load Gio
            lbGioXuat.Text = DateTime.Now.ToLongTimeString();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            lbGioXuat.Text = DateTime.Now.ToLongTimeString();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            var db = new QLBH_BTEntities();
            var MaPX = cbMaPX.Text;

            try
            {
                db.PHIEUXUATs.Single(p => p.MaPX == MaPX);
            }
            catch
            {
                using (var db1 = new QLBH_BTEntities())
                {
                    var px = new PHIEUXUAT
                    {
                        MaPX = cbMaPX.Text,
                        MaNV = cbMaNV.Text,
                        NgayXuat = dateNgayXuat.Value,
                    };
                    db1.PHIEUXUATs.Add(px);
                    db1.SaveChanges();
                }
              
            }
            finally
            {
                using (var db2 = new QLBH_BTEntities())
                {
                    var ctpx = new CHITIETPHIEUXUAT
                    {
                        MaPX = cbMaPX.Text,
                        MaSP = cbMaSP.Text,
                        SoLuong = int.Parse(txtSoLuong.Text),
                        Ngayxuat = dateNgayXuat.Value,
                        Gioxuat = DateTime.Parse(lbGioXuat.Text),
                    };
                    db2.CHITIETPHIEUXUATs.Add(ctpx);
                    db2.SaveChanges();
                }
                LoadCTPhieuXuat();
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            var MaPX = cbMaPX.Text;
            try
            {
                QLBH_BTEntities db = new QLBH_BTEntities();
                //var CT = db.CHITIETPHIEUXUATs.Single(p => p.MaPX == MaPX);
                //db.CHITIETPHIEUXUATs.Remove(CT);

                var Xoa = (from PX in db.PHIEUXUATs
                          join CT in db.CHITIETPHIEUXUATs on PX.MaPX equals CT.MaPX
                          where CT.MaPX == MaPX 
                          select CT).FirstOrDefault();
                db.CHITIETPHIEUXUATs.Remove(Xoa);
                try
                {
                    db.CHITIETPHIEUXUATs.Single(p => p.MaPX == MaPX);
                }
                catch
                {
                    var PX = db.PHIEUXUATs.Single(p => p.MaPX == MaPX);
                    db.PHIEUXUATs.Remove(PX);
                    
                }
                db.SaveChanges();
                LoadCTPhieuXuat();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                //throw;
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            using (var db = new QLBH_BTEntities())
            {
                var MaPX = cbMaPX.Text;
                try
                {
                    var CT = db.CHITIETPHIEUXUATs.Single(p => p.MaPX == MaPX);
                    CT.SoLuong = int.Parse(txtSoLuong.Text);
                    CT.Ngayxuat = dateNgayXuat.Value;
                    db.SaveChanges();
                    LoadCTPhieuXuat();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    //throw;
                }
            }
        }

        

        private void dgvChiTietPhieuXuat_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            using (var db = new QLBH_BTEntities())
            {
                try
                {
                    var id = dgvChiTietPhieuXuat.Rows[e.RowIndex].Cells["MaPX"].Value.ToString();
                    cbMaPX.Text = dgvChiTietPhieuXuat.Rows[e.RowIndex].Cells["MaPX"].Value.ToString();
                    cbMaNV.Text = dgvChiTietPhieuXuat.Rows[e.RowIndex].Cells["MaNV"].Value.ToString();
                    cbMaSP.Text = dgvChiTietPhieuXuat.Rows[e.RowIndex].Cells["MaSP"].Value.ToString();
                    txtSoLuong.Text = dgvChiTietPhieuXuat.Rows[e.RowIndex].Cells["SoLuong"].Value.ToString();
                    dateNgayXuat.Text = dgvChiTietPhieuXuat.Rows[e.RowIndex].Cells["Ngayxuat"].Value.ToString();
                    lbGioXuat.Text = dgvChiTietPhieuXuat.Rows[e.RowIndex].Cells["Gioxuat"].Value.ToString();

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    //throw;
                }
            }
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            LoadCTPhieuXuat();
        }

        private void cbMaPX_SelectionChangeCommitted(object sender, EventArgs e)
        {
            
        }

        private void cbMaPX_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            //var MaPX = cbMaPX.Text;
            //using (var db = new QLBH_BTEntities())
            //{
            //    var CT = from CTPX in db.CHITIETPHIEUXUATs
            //             join PX in db.PHIEUXUATs on CTPX.MaPX equals PX.MaPX
            //             where CTPX.MaPX == MaPX
            //             orderby CTPX.MaPX
            //             select new
            //             {
            //                 MaPX = CTPX.MaPX,
            //                 MaSP = CTPX.MaSP,
            //                 MaNV = PX.MaNV,
            //                 SoLuong = CTPX.SoLuong,
            //                 NgayXuat = CTPX.Ngayxuat,
            //                 GioXuat = CTPX.Gioxuat,
            //             };
            //    dgvChiTietPhieuXuat.DataSource = CT.ToList();
            }
        }
    
}
