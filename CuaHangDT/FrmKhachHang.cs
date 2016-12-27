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
                    Ins = "INSERT INTO KHACHHANG (MaKH,HoKH,TenKH,DiaChi,DienThoai,[E-Mail]) VALUES('" + cbMaKH.Text + "',N'" + txtHoKH.Text + "',N'" + txtTenKH.Text + "',N'" + txtDiachi.Text + "','" + txtDienThoai.Text + "','" + txtEmail.Text + "')";
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

        private void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                if (cbMaKH.Text != "")
                {
                    cn.Open();
                    cnStr = "UPDATE KHACHHANG SET HoKH = N'" + txtHoKH.Text + "',TenKH = N'" + txtTenKH.Text + "',DiaChi = N'" + txtDiachi.Text + "',DienThoai = '" 
                        + txtDienThoai.Text + "',[E-Mail] = '" + txtEmail.Text + "' WHERE MaKH = '" + cbMaKH.Text + "'";
                    da = new SqlDataAdapter(cnStr, cn);
                    da.SelectCommand.ExecuteNonQuery();
                    da = new SqlDataAdapter(cnStr, cn);
                    cn.Close();
                    MessageBox.Show("Sửa Thành Công!", "THÔNG BÁO!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.btnLoadData_Click(sender, e);
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

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult Thoat;
            Thoat = MessageBox.Show("Bạn có muốn thoát không?", "THÔNG BÁO!", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
            if (Thoat == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void dgvKhachHang_Click(object sender, EventArgs e)
        {
            int index = dgvKhachHang.CurrentRow.Index;//click vào đối tượng trên datagridview sẽ hiện lên textbox

            cbMaKH.Text = dgvKhachHang.Rows[index].Cells[0].Value.ToString();
            txtHoKH.Text = dgvKhachHang.Rows[index].Cells[1].Value.ToString();
            txtTenKH.Text = dgvKhachHang.Rows[index].Cells[2].Value.ToString();           
            txtDiachi.Text = dgvKhachHang.Rows[index].Cells[3].Value.ToString();
            txtDienThoai.Text = dgvKhachHang.Rows[index].Cells[4].Value.ToString();
            txtEmail.Text = dgvKhachHang.Rows[index].Cells[5].Value.ToString();
            txtMathe.Text = dgvKhachHang.Rows[index].Cells[6].Value.ToString();
        }

        private void cbMaKH_SelectionChangeCommitted(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM KHACHHANG WHERE MaKH = '" + cbMaKH.SelectedValue + "'", cn);
            DataTable table = new DataTable();
            da.Fill(table); // đổ vào bảng ảo
            da.Dispose(); //giai phong tai nguyên
            dgvKhachHang.DataSource = table;//gán dữ liệu nguồn
        }


        //Kiem tra form con da dong hay chua
        private bool CheckExistForm(String name)
        {
            bool check = false;
            foreach (Form frm in this.MdiChildren)
            {
                if (frm.Name == name)
                {
                    check = true;
                    break;
                }
            }
            return check;
        }

        private void ActiveChilForm(string name)
        {
            foreach (Form frm in this.MdiChildren)
            {
                if (frm.Name == name)
                {
                    frm.Activate();
                    break;
                }
            }
        }

        private void btnTim_Click(object sender, EventArgs e)
        {
           

            if (!CheckExistForm("FrmTimKH"))
            {
                FrmTimKH f = new FrmTimKH();
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmTimKH");
            }
        }
    }
}

