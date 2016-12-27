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
    public partial class FrmTimKH : Form
    {

        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;

        public FrmTimKH()
        {
            InitializeComponent();
        }

        private void FrmTimKH_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            cbCachTim.Text = "Mã Khách Hàng";
        }

        private void txtNhap_TextChanged(object sender, EventArgs e)
        {

            if (cbCachTim.Text == "Mã Khách Hàng")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT * FROM KHACHHANG WHERE MaKH LIKE'%" + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
            else if (cbCachTim.Text == "Tên Khách Hàng")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT * FROM KHACHHANG WHERE TenKH LIKE N'%" + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
        }
    }
}
