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
    public partial class FrmTim_NhapHang : Form
    {
        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;

        public FrmTim_NhapHang()
        {
            InitializeComponent();
        }

        private void FrmTim_NhapHang_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);

            cbCachTim.Items.Add("Mã Phiếu Nhập");
            cbCachTim.Items.Add("Mã Nhà Cung Cấp");
            
        }

        private void txtNhap_TextChanged(object sender, EventArgs e)
        {
            if (cbCachTim.Text == "Mã Phiếu Nhập")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT CTPN.MaPN, CTPN.MaSP, PN.MaNV, PN.MaNCC, CTPN.SoLuong, CTPN.ThanhTien, PN.NgayNhap FROM CHITIETPHIEUNHAP CTPN JOIN PHIEUNHAP PN ON CTPN.MaPN = PN.MaPN WHERE CTPN.MaPN LIKE '%" 
                    + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
            else if ( cbCachTim.Text == "Mã Nhà Cung Cấp")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT CTPN.MaPN, CTPN.MaSP, PN.MaNV, PN.MaNCC, CTPN.SoLuong, CTPN.ThanhTien, PN.NgayNhap FROM CHITIETPHIEUNHAP CTPN JOIN PHIEUNHAP PN ON CTPN.MaPN = PN.MaPN WHERE PN.MaNCC LIKE '%"
                    + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
        }
    }
}
