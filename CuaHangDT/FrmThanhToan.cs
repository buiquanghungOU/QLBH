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
                         };
                dgvHoaDon.DataSource = CT.ToList();
            }
            binding();
        }

        private void FrmThanhToan_Load(object sender, EventArgs e)
        {
            QLBH_BTEntities db = new QLBH_BTEntities();
            this.LoadCTHoaDon();

            //Load MaHoaDon vao combobox MaHD
            var LoadMaHD = new QLBH_BTEntities();
            cbMaHD.ValueMember = "MaHD";
            cbMaHD.DataSource = LoadMaHD.HOADONs.ToList();

            //Load MaKhachHang vao combobox MaKH
            var LoadMaKH = new QLBH_BTEntities();
            cbMaKH.ValueMember = "MaKH";
            cbMaKH.DataSource = LoadMaKH.KHACHHANGs.ToList();

            //Load MaSanPham vao combobox MaSP
            var LoadMaSP = new QLBH_BTEntities();
            cbMaSP.ValueMember = "MaSP";
            cbMaSP.DataSource = LoadMaSP.SANPHAMs.ToList();

            //Load MaNhanVien vao combobox MaNV
            var LoadMaNV = new QLBH_BTEntities();
            cbMaNV.ValueMember = "MaNV";
            cbMaNV.DataSource = LoadMaNV.NHANVIENs.ToList();
        }

        public void binding()
        {
            cbMaHD.DataBindings.Clear();
            cbMaHD.DataBindings.Add("text", dgvHoaDon.DataSource, "MaHD");
            cbMaKH.DataBindings.Clear();
            cbMaKH.DataBindings.Add("text", dgvHoaDon.DataSource, "MaKH");
            cbMaNV.DataBindings.Clear();
            cbMaNV.DataBindings.Add("text", dgvHoaDon.DataSource, "MaNV");
            txtSoLuong.DataBindings.Clear();
            txtSoLuong.DataBindings.Add("text", dgvHoaDon.DataSource, "SoLuong");
            cbMaSP.DataBindings.Clear();
            cbMaSP.DataBindings.Add("text", dgvHoaDon.DataSource, "MaSP");
            txtDonGia.DataBindings.Clear();
            txtDonGia.DataBindings.Add("text", dgvHoaDon.DataSource, "DonGia");
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

        private void button1_Click(object sender, EventArgs e)
        {
            LoadCTHoaDon();
        }

        private void btSua_Click(object sender, EventArgs e)
        {
            var MaHD = cbMaHD.Text;
            try
            {
                QLBH_BTEntities db = new QLBH_BTEntities();
                var CT = db.CHITIETHOADONs.Single(p => p.MaHD == MaHD);
                var HD = db.HOADONs.Single(p => p.MaHD == MaHD);

                CT.MaHD = cbMaHD.Text;
                CT.MaSP = cbMaSP.Text;
                CT.SoLuong = int.Parse(txtSoLuong.Text);
                CT.DonGia = int.Parse(txtDonGia.Text);


                HD.MaHD = cbMaHD.Text;
                HD.MaKH = cbMaKH.Text;
                HD.MaNV = cbMaNV.Text;


                db.SaveChanges();
                LoadCTHoaDon();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                //throw;
            }

            
        }
    }
}
