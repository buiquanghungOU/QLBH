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
    public partial class FrmTimNV : Form
    {

        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;

        public FrmTimNV()
        {
            InitializeComponent();
        }

        private void FrmTimNV_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            cbCachTim.Text = "Mã Nhân Viên";
        }

        private void txtNhap_TextChanged(object sender, EventArgs e)
        {
          
               if (cbCachTim.Text == "Mã Nhân Viên")
                {
                     cn.Open();
                     da = new SqlDataAdapter("SELECT * FROM NHANVIEN WHERE MaNV LIKE'%" + txtNhap.Text.Trim() + "%'", cn);
                    DataTable table = new DataTable();
                    da.Fill(table);
                    dgvTim.DataSource = table;
                    cn.Close();
                }
               else if (cbCachTim.Text == "Tên Nhân Viên")
                {
                    cn.Open();
                    da = new SqlDataAdapter("SELECT * FROM NHANVIEN WHERE TenNV LIKE N'%" + txtNhap.Text.Trim() + "%'", cn);
                    DataTable table = new DataTable();
                    da.Fill(table);
                    dgvTim.DataSource = table;
                    cn.Close();
                }               
          
        }

        private void cbCachTim_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
