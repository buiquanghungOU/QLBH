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
    public partial class FrmTimNCC : Form
    {
        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;

        public FrmTimNCC()
        {
            InitializeComponent();
        }

        private void FrmTimNCC_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            cbTim.Text = "Mã Nhà Cung Cấp";
        }

        private void txtNhap_TextChanged(object sender, EventArgs e)
        {
            if (cbTim.Text == "Mã Nhà Cung Cấp")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT * FROM NHACUNGCAP WHERE MaNCC LIKE'%" + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
            else if (cbTim.Text == "Tên Nhà Cung Cấp")
            {
                cn.Open();
                da = new SqlDataAdapter("SELECT * FROM NHACUNGCAP WHERE TenNCC LIKE N'%" + txtNhap.Text.Trim() + "%'", cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvTim.DataSource = table;
                cn.Close();
            }
        }
    }
}
