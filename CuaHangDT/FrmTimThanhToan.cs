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
    public partial class FrmTimThanhToan : Form
    {
        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;
        public FrmTimThanhToan()
        {
            InitializeComponent();
        }

        private void FrmTimThanhToan_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);

            cbCachTim.Items.Add("Mã Hóa Đơn");
            cbCachTim.Items.Add("Mã Khách Hàng");
        }

        private void txtNhap_TextChanged(object sender, EventArgs e)
        {
            if (cbCachTim.Text == "Mã Hóa Đơn")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT CTHD.MaHD, HD.MaKH, CTHD.MaSP, HD.MaNV, CTHD.SoLuong, CTHD.DonGia FROM CHITIETHOADON CTHD JOIN HOADON HD ON CTHD.MaHD = HD.MaHD WHERE CTHD.MaHD LIKE N'%" + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
            else if (cbCachTim.Text == "Mã Khách Hàng")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT CTHD.MaHD, HD.MaKH, CTHD.MaSP, HD.MaNV, CTHD.SoLuong, CTHD.DonGia FROM CHITIETHOADON CTHD JOIN HOADON HD ON CTHD.MaHD = HD.MaHD WHERE HD.MaKH LIKE N'%" + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
        }
    }
}
