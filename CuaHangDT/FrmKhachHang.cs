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
    public partial class FrmKhachHang : Form
    {
        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;

        public FrmKhachHang()
        {
            InitializeComponent();
        }

        private void FrmKhachHang_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            LoadComboBoxMaKH();
        }
        private void DefaultLoad()
        {
            cbMaKH.Text = "";
            txtHoKH.Text = "";
            txtTenKH.Text = "";
            txtDiachi.Text = "";
            txtDienThoai.Text = "";
            txtEmail.Text = "";
        }
        private void LoadComboBoxMaKH() // Hiển thị dữ liệu lên ComboBox
        {
            da = new SqlDataAdapter("SELECT DISTINCT * FROM KHACHHANG", cn);
            DataTable table = new DataTable();
            da.Fill(table);
            da.Dispose();
            cbMaKH.DataSource = table;//gán dữ liệu nguồn
            cbMaKH.ValueMember = "MaKH";
        }

        private void btnLoadData_Click(object sender, EventArgs e)
        {
            try
            {
                cnStr = "SELECT * FROM KHACHHANG";
                da = new SqlDataAdapter(cnStr, cn);
                DataTable table = new DataTable();// tạo bảng ảo
                da.Fill(table);
                dgvKhachHang.DataSource = table;
                cn.Close();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {

            try
            {
                if (cbMaKH.Text != "")
                {
                    cn.Open();
                    string Ins = "";
                    Ins = "INSERT INTO KHACHHANG (MaKH,HoKH,TenKH,DiaChi,DienThoai,[E-Mail]) VALUES('" + cbMaKH.Text + "','" + txtHoKH.Text + "','" + txtTenKH.Text + "','" + txtDiachi.Text + "','" + txtDienThoai.Text + "','" + txtEmail.Text + "')";
                    da = new SqlDataAdapter(Ins, cn);
                    da.SelectCommand.ExecuteNonQuery();

                    MessageBox.Show("Đã Thêm Thành Công!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.btnLoadData_Click(sender, e);
                    cn.Close();
                }
                else
                {
                    MessageBox.Show("Bạn chưa nhập Mã Khách Hàng", "THÔNG BÁO!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);              
            }
        }
    }
}
