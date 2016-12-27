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
    public partial class FrmTimSP : Form
    {
        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;
        public FrmTimSP()
        {
            InitializeComponent();
        }

        private void dgvTim_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void FrmTimSP_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            cbTim.Text = "Mã Sản Phẩm";
        }

        private void txtNhap_TextChanged(object sender, EventArgs e)
        {
            if (cbTim.Text == "Mã Sản Phẩm")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT * FROM SANPHAM WHERE MaSP LIKE'%" + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
            else if (cbTim.Text == "Tên Sản Phẩm")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT * FROM SANPHAM WHERE TenSP LIKE N'%" + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
            else if (cbTim.Text == "Mã Hãng Sản Xuất")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT * FROM SANPHAM WHERE MaHSX LIKE N'%" + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
            else
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT * FROM SANPHAM WHERE MaNCC LIKE '%" + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
        }
    }
}
