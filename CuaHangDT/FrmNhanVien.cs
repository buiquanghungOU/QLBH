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
    public partial class FrmNhanVien : Form
    {

        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;
        // SqlCommand cmd;

        public FrmNhanVien()
        {
            InitializeComponent();
        }

        private void FrmNhanVien_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            LoadComboBoxMaNV();
            LoadComboBoxGioiTinh();
            LoadComboBoxViTri();
        }
        private void LoadComboBoxMaNV() // Hiển thị dữ liệu lên ComboBox
        {
            da = new SqlDataAdapter("SELECT DISTINCT * FROM NHANVIEN", cn);
            DataTable table = new DataTable();
            da.Fill(table);
            da.Dispose();
            cbMaNV.DataSource = table;//gán dữ liệu nguồn

            cbMaNV.ValueMember = "MaNV";
        }
        private void LoadComboBoxGioiTinh() // Hiển thị dữ liệu lên ComboBox
        {
            da = new SqlDataAdapter("SELECT DISTINCT GioiTinh FROM NHANVIEN", cn);
            DataTable table = new DataTable();
            da.Fill(table);
            da.Dispose();
            cbGioiTinh.DataSource = table;//gán dữ liệu nguồn

            cbGioiTinh.ValueMember = "GioiTinh";
        }
        private void LoadComboBoxViTri() // Hiển thị dữ liệu lên ComboBox
        {
            da = new SqlDataAdapter("SELECT DISTINCT ViTri FROM NHANVIEN", cn);
            DataTable table = new DataTable();
            da.Fill(table);
            da.Dispose();
            cbVitri.DataSource = table;//gán dữ liệu nguồn

            cbVitri.ValueMember = "ViTri";
        }
      
        private void btnLoad_Click(object sender, EventArgs e)
        {
            try
            {
                cnStr = "SELECT * FROM NHANVIEN";
                da = new SqlDataAdapter(cnStr, cn);
                DataTable table = new DataTable();// tạo bảng ảo
                da.Fill(table);
                dgvNhanVien.DataSource = table;
                cn.Close();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void dgvNhanVien_Click_1(object sender, EventArgs e)
        {
            int index = dgvNhanVien.CurrentRow.Index;//click vào đối tượng trên datagridview sẽ hiện lên cái textbox

            cbMaNV.Text = dgvNhanVien.Rows[index].Cells[0].Value.ToString();
            txtHoNV.Text = dgvNhanVien.Rows[index].Cells[1].Value.ToString();
            txtTenNV.Text = dgvNhanVien.Rows[index].Cells[2].Value.ToString();
            cbGioiTinh.Text = dgvNhanVien.Rows[index].Cells[3].Value.ToString();
            timeNgaysinh.Text = dgvNhanVien.Rows[index].Cells[4].Value.ToString();
            cbVitri.Text = dgvNhanVien.Rows[index].Cells[5].Value.ToString();
            timeNgaylamviec.Text = dgvNhanVien.Rows[index].Cells[6].Value.ToString();
            txtDiachi.Text = dgvNhanVien.Rows[index].Cells[7].Value.ToString();
            txtDienThoai.Text = dgvNhanVien.Rows[index].Cells[8].Value.ToString();
            txtEmail.Text = dgvNhanVien.Rows[index].Cells[9].Value.ToString();
        }
    }
}
