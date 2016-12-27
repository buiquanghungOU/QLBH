using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CuaHangDT
{
    public partial class FrmThanhToan : Form
    {
        public FrmThanhToan()
        {
            InitializeComponent();
        }


        void LoadCTHoaDon()
        {
            using (var db = new QLBH_BTEntities())
            {
                var CT = from CTHD in db.CHITIETHOADONs
                         join HD in db.HOADONs on CTHD.MaHD equals HD.MaHD
                         orderby CTHD.MaHD
                         select new
                         {
                             MaHD = HD.MaHD,
                             MaKH = HD.MaKH,
                             MaNV = HD.MaNV,
                             SoLuong = CTHD.SoLuong,
                             MaSP = CTHD.MaSP,
                             DonGia = CTHD.DonGia,
                             NgapLapHD = HD.NgayLapHD,
                         };
                dgvHoaDon.DataSource = CT.ToList();
            }
        }

        private void FrmThanhToan_Load(object sender, EventArgs e)
        {
            QLBH_BTEntities db = new QLBH_BTEntities();
            this.LoadCTHoaDon();

            LoadComboboxMaHD();
            LoadComboboxMaKH();
            LoadComboboxMaNV();
            LoadComboboxMaSP();
        }

        private void LoadComboboxMaHD()
        {
            var LoadMaHD = new QLBH_BTEntities();
            cbMaHD.ValueMember = "MaHD";
            cbMaHD.DataSource = LoadMaHD.HOADONs.ToList();
        }

        private void LoadComboboxMaKH()
        {
            var LoadMaKH = new QLBH_BTEntities();
            cbMaKH.ValueMember = "MaKH";
            cbMaKH.DataSource = LoadMaKH.KHACHHANGs.ToList();
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

        private void btThem_Click(object sender, EventArgs e)
        {
            var db = new QLBH_BTEntities();
            var MaHD = cbMaHD.Text;
            try
            {
                db.HOADONs.Single(p => p.MaHD == MaHD);
            }
            catch
            {
                using (var db1 = new QLBH_BTEntities())
                {
                    var hd = new HOADON
                    {
                        MaHD = cbMaHD.Text,
                        MaKH = cbMaKH.Text,
                        MaNV = cbMaNV.Text,
                        NgayLapHD = dateNgayLapHD.Value,
                    };
                    db1.HOADONs.Add(hd);
                    db1.SaveChanges();
                }
            }
            finally
            {
                using (var db2 = new QLBH_BTEntities())
                {
                    var cthd = new CHITIETHOADON
                    {
                        MaHD = cbMaHD.Text,
                        MaSP = cbMaSP.Text,
                        SoLuong = int.Parse(txtSoLuong.Text),
                        DonGia = int.Parse(txtDonGia.Text),
                    };
                    db2.CHITIETHOADONs.Add(cthd);
                    db2.SaveChanges();
                }
                LoadCTHoaDon();
            }
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            FrmKhachHang f = new FrmKhachHang();
            f.Show();
        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

      
        private void dgvHoaDon_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = dgvHoaDon.CurrentRow.Index;

            cbMaHD.Text = dgvHoaDon.Rows[index].Cells[0].Value.ToString();
            cbMaKH.Text = dgvHoaDon.Rows[index].Cells[1].Value.ToString();
            cbMaNV.Text = dgvHoaDon.Rows[index].Cells[2].Value.ToString();
            txtSoLuong.Text = dgvHoaDon.Rows[index].Cells[3].Value.ToString();
            cbMaSP.Text = dgvHoaDon.Rows[index].Cells[4].Value.ToString();
            txtDonGia.Text = dgvHoaDon.Rows[index].Cells[5].Value.ToString();
            dateNgayLapHD.Text = dgvHoaDon.Rows[index].Cells[6].Value.ToString();

        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            QLBH_BTEntities db = new QLBH_BTEntities();
            try
            {
                var MaHD = cbMaHD.Text;
                var Xoa = (from CTHD in db.CHITIETHOADONs
                           join HD in db.HOADONs on CTHD.MaHD equals HD.MaHD
                           orderby CTHD.MaHD
                           where CTHD.MaHD == MaHD
                           select CTHD).FirstOrDefault();
                db.CHITIETHOADONs.Remove(Xoa);
                try
                {
                    db.CHITIETHOADONs.Single(p => p.MaHD == MaHD);
                }
                catch
                {
                    var HD = db.HOADONs.Single(p => p.MaHD == MaHD);
                    db.HOADONs.Remove(HD);
                }
                db.SaveChanges();
                LoadCTHoaDon();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                //throw;
            }
        }

        private void btSua_Click(object sender, EventArgs e)
        {
            QLBH_BTEntities db = new QLBH_BTEntities();
            try
            {
                var MaHD = cbMaHD.Text;
                var MaSP = cbMaSP.Text;

                var Sua = (from CTHD in db.CHITIETHOADONs
                           join HD in db.HOADONs on CTHD.MaHD equals HD.MaHD
                           where (CTHD.MaHD == MaHD && CTHD.MaSP == MaSP)
                           select CTHD).FirstOrDefault();

                Sua.SoLuong = int.Parse(txtSoLuong.Text);
                Sua.DonGia = int.Parse(txtDonGia.Text);
                db.Entry(Sua).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                LoadCTHoaDon();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                //throw;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {

            FrmTimThanhToan f = new FrmTimThanhToan();
            f.Show();
        }
    }
}
