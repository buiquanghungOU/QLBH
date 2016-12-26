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
        private void DefaultLoad()
        {
            cbMaNV.Text = "";
            txtHoNV.Text = "";
            txtTenNV.Text = "";
            cbGioiTinh.Text = "";
            cbVitri.Text = "";
            txtDiachi.Text = "";
            txtDienThoai.Text = "";
            txtEmail.Text = "";
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
            cbGioiTinh.DataSource = table;

            cbGioiTinh.ValueMember = "GioiTinh";
        }
        private void LoadComboBoxViTri() // Hiển thị dữ liệu lên ComboBox
        {
            da = new SqlDataAdapter("SELECT DISTINCT ViTri FROM NHANVIEN", cn);
            DataTable table = new DataTable();
            da.Fill(table);
            da.Dispose();
            cbVitri.DataSource = table;

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

        private void btnThem_Click(object sender, EventArgs e)
        {           
            try
            {               
                if (cbMaNV.Text != "")
                {
                    cn.Open();
                    string Ins = "";
                    Ins = "INSERT INTO NHANVIEN (MaNV,HoNV,TenNV,GioiTinh,NgaySinh,ViTri,NgayBD,DiaChi,DienThoai,[E-Mail]) VALUES (N'" + cbMaNV.Text + "',N'" + txtHoNV.Text + "',N'" + txtTenNV.Text + "',N'" + cbGioiTinh.Text + "',N'" + timeNgaysinh.Value + "',N'" + cbVitri.Text + "',N'" + timeNgaylamviec.Value + "',N'" + txtDiachi.Text + "',N'" + txtDienThoai.Text + "',N'" + txtEmail.Text + "')";
                    da = new SqlDataAdapter(Ins, cn);
                    da.SelectCommand.ExecuteNonQuery();

                    MessageBox.Show("Thêm Thành Công!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.btnLoad_Click(sender, e);
                    cn.Close();
                }
                else
                {
                    MessageBox.Show("Bạn chưa nhập Mã Nhân Viên", "THÔNG BÁO!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
                //throw;
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
           
            try
            {
                if (cbMaNV.Text != "")
                {
                    cn.Open();
                    cnStr = "UPDATE NHANVIEN SET HoNV = '" + txtHoNV.Text + "',TenNV ='" + txtTenNV.Text + "',GioiTinh = '" + cbGioiTinh.Text + "',NgaySinh = '" + timeNgaysinh.Value + "',ViTri = '" + cbVitri.Text + "',NgayBD = '" + timeNgaylamviec.Value + "',DiaChi = '" + txtDiachi.Text + "',DienThoai = '" + txtDienThoai.Text + "',[E-Mail] = '" + txtEmail.Text + "' WHERE MaNV ='" + cbMaNV.Text + "'";
                    da = new SqlDataAdapter(cnStr, cn);
                    da.SelectCommand.ExecuteNonQuery();
                    da = new SqlDataAdapter(cnStr, cn);
                    cn.Close();
                    MessageBox.Show("Sửa Thành Công!", "THÔNG BÁO!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.btnLoad_Click(sender, e);
                }
                else
                {
                    MessageBox.Show("Bạn chưa nhập Mã Nhân Viên", "THÔNG BÁO!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult Xoa;
            Xoa = MessageBox.Show("Bạn có chắc chắn muốn XÓA Nhân Viên này không?", "THÔNG BÁO!", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
            if (Xoa == DialogResult.Yes)
            {
                try
                {
                    cn.Open();
                    cnStr = "DELETE FROM NHANVIEN WHERE MaNV = '" + cbMaNV.Text + "'";
                    da = new SqlDataAdapter(cnStr, cn);
                    da.SelectCommand.ExecuteNonQuery();
                    cn.Close();
                    DefaultLoad();
                    dgvNhanVien.ClearSelection();
                    MessageBox.Show("ĐÃ XÓA THÀNH CÔNG!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.btnLoad_Click(sender, e);
                   
                }
                catch (SqlException ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult Thoat;
            Thoat = MessageBox.Show("Bạn có muốn thoát không?", "THÔNG BÁO!", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (Thoat == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void cbMaNV_SelectionChangeCommitted(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM NHANVIEN WHERE MaNV = '" + cbMaNV.SelectedValue + "'", cn);
            DataTable table = new DataTable();
            da.Fill(table); // đổ vào bảng ảo
            da.Dispose(); //giai phong tai nguyên
            dgvNhanVien.DataSource = table;//gán dữ liệu nguồn
        }

        private void cbGioiTinh_SelectionChangeCommitted(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM NHANVIEN WHERE GioiTinh = N'" + cbGioiTinh.SelectedValue + "'", cn);
            DataTable table = new DataTable();
            da.Fill(table);
            da.Dispose();
            dgvNhanVien.DataSource = table;
        }

        private void cbVitri_SelectionChangeCommitted(object sender, EventArgs e)
        {

            da = new SqlDataAdapter("SELECT * FROM NHANVIEN WHERE ViTri = N'" + cbVitri.SelectedValue + "'", cn);

            da = new SqlDataAdapter("SELECT * FROM NHANVIEN WHERE ViTri= N'" + cbVitri.SelectedValue + "'", cn);

            DataTable table = new DataTable();
            da.Fill(table);
            da.Dispose();
            dgvNhanVien.DataSource = table;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FrmTimNV f = new FrmTimNV();            
            f.Show();
        }

        private void FrmNhanVien_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult Huy;
            Huy = MessageBox.Show("Bạn Có Muốn Thoát không", "THÔNG BÁO!", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (Huy == DialogResult.No)
            {
                e.Cancel = true;
            }
        }

       
    }
}
