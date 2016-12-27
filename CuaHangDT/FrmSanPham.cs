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
    public partial class FrmSanPham : Form
    {
        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;
        public FrmSanPham()
        {
            InitializeComponent();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void FrmSanPham_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            LoadCBMaSP();// cbbox mã sp
            LoadCBMaHSX();// cbbox mã hsx
            LoadCBNCC();//cbbox nhà cc
            LoadCBTenSP();// load cb ten sp
            LoadCBMaLoaiSP();//ma loai sp   
            LoadCBTinhtrang();//tinh trang
            LoadCBMauSac();
        }
        public void Connect()
        {
            try
            {
                if (cn != null && cn.State == ConnectionState.Closed)
                    cn.Open();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);

                //throw;
            }
        }
        public void Disconnect()
        {
            try
            {
                if (cn != null && cn.State == ConnectionState.Open)
                    cn.Close();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);

                //throw;
            }
        }

        private void btnTaiDL_Click(object sender, EventArgs e)
        {
            try
            {
                string load = "SELECT * FROM SANPHAM";
                da = new SqlDataAdapter(load, cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvSanPham.DataSource = table;

            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }

        private void dgvSanPham_Click(object sender, EventArgs e)
        {
            int index = dgvSanPham.CurrentRow.Index;
            cbMaSP.Text = dgvSanPham.Rows[index].Cells[0].Value.ToString();
            cbMaHSX.Text = dgvSanPham.Rows[index].Cells[1].Value.ToString();
            cbTenSP.Text = dgvSanPham.Rows[index].Cells[2].Value.ToString();
            cbMaNCC.Text = dgvSanPham.Rows[index].Cells[3].Value.ToString();
            cbMaLoaiSP.Text = dgvSanPham.Rows[index].Cells[4].Value.ToString();
            txtDongia.Text = dgvSanPham.Rows[index].Cells[5].Value.ToString();
            cbTinhtrang.Text = dgvSanPham.Rows[index].Cells[6].Value.ToString();
            cbMausac.Text = dgvSanPham.Rows[index].Cells[7].Value.ToString();
            txtThongSo.Text = dgvSanPham.Rows[index].Cells[8].Value.ToString();
            txtMota.Text = dgvSanPham.Rows[index].Cells[9].Value.ToString();
            txtBaoHanh.Text = dgvSanPham.Rows[index].Cells[10].Value.ToString();

        }
        private void LoadCBMaSP()
        {
            da = new SqlDataAdapter("SELECT DISTINCT MaSP FROM SANPHAM", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            cbMaSP.DataSource = dt;
            cbMaSP.ValueMember = "MaSP";
        }
        private void LoadCBMaHSX()
        {
            da = new SqlDataAdapter("SELECT DISTINCT MaHSX FROM HANGSANXUAT", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            cbMaHSX.DataSource = dt;
            cbMaHSX.ValueMember = "MaHSX";
        }
        private void LoadCBNCC()
        {
            da = new SqlDataAdapter("SELECT DISTINCT MaNCC FROM NHACUNGCAP", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            cbMaNCC.DataSource = dt;
            cbMaNCC.ValueMember = "MaNCC";
        }
        private void LoadCBTenSP()
        {
            da = new SqlDataAdapter("SELECT DISTINCT TenSP FROM SANPHAM", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            cbTenSP.DataSource = dt;
            cbTenSP.ValueMember = "TenSP";
        }
        private void LoadCBMaLoaiSP()
        {
            da = new SqlDataAdapter("SELECT DISTINCT MaLoaiSP FROM SANPHAM", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            cbMaLoaiSP.DataSource = dt;
            cbMaLoaiSP.ValueMember = "MaLoaiSP";
        }
        private void LoadCBTinhtrang()
        {
            da = new SqlDataAdapter("SELECT DISTINCT TinhTrang FROM SANPHAM", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            cbTinhtrang.DataSource = dt;
            cbTinhtrang.ValueMember = "TinhTrang";
        }
        private void LoadCBMauSac()
        {
            da = new SqlDataAdapter("SELECT DISTINCT MauSac FROM SANPHAM", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            cbMausac.DataSource = dt;
            cbMausac.ValueMember = "MauSac";
        }
        private void LoadLaiCBB()
        {
            cbMaSP.Text = string.Empty;
            cbMaHSX.Text = string.Empty;
            cbMaLoaiSP.Text = string.Empty;
            cbMaNCC.Text = string.Empty;
            cbTenSP.Text = string.Empty;
            txtDongia.Text = string.Empty;
            txtBaoHanh.Text = string.Empty;
            txtMota.Text = string.Empty;
            txtThongSo.Text = string.Empty;
            cbMausac.Text = string.Empty;

        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            try
            {

                cn.Open();
                string ins =
                    "INSERT INTO SANPHAM (MaSP,MaHSX,TenSP,MaNCC,MaLoaiSP,DonGia,TinhTrang,Mausac,Thongsochitiet,Mota,Baohanh) VALUES"
                    + "('" + cbMaSP.Text + "',N'" + cbMaHSX.Text + "',N'" + cbTenSP.Text + "',N'" + cbMaNCC.Text + "',N'" + cbMaLoaiSP.Text + "',N'" + txtDongia.Text + "',N'" + cbTinhtrang.Text + "',N'" + cbMausac.Text + "',N'" + txtThongSo.Text + "',N'" + txtMota.Text + "',N'" + txtBaoHanh.Text + "')";
                da = new SqlDataAdapter(ins, cn);
                da.SelectCommand.ExecuteNonQuery();
                MessageBox.Show("Thêm thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                LoadLaiCBB();
                this.btnTaiDL_Click(sender, e);
            }

            catch (SqlException )

            {
                MessageBox.Show("Sản phẩm bạn thêm đã tồn tại trong kho hàng!!!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            finally
            {
                cn.Close();
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {

            try
            {
                cn.Open();
                if (cbMaSP.Text != "")
                {
                    string upd =
                   "UPDATE SANPHAM SET MaHSX ='" + cbMaHSX.Text + "',TenSP = N'" + cbTenSP.Text + "',MaNCC=N'" + cbMaNCC.Text + "',MaLoaiSP=N'" + cbMaLoaiSP.Text + "',DonGia=N'" + txtDongia.Text + "',TinhTrang= N'" + cbTinhtrang.Text + "',Mausac = N'" + cbMausac.Text + "',Thongsochitiet = N'" + txtThongSo.Text + "',Mota = N'" + txtMota.Text + "',Baohanh = N'" + txtBaoHanh.Text + "' WHERE MaSP ='" + cbMaSP.Text + "'";
                    da = new SqlDataAdapter(upd, cn);

                    da.SelectCommand.ExecuteNonQuery();

                    MessageBox.Show("Sửa thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadLaiCBB();
                    this.btnTaiDL_Click(sender, e);
                }
                else
                {
                    MessageBox.Show("Bạn chưa nhập mã sản phẩm !!!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);

            }
            finally
            {
                cn.Close();
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult xoa;
            xoa = MessageBox.Show("Bạn có chắc chắn muốn xóa?", "CẢNH BÁO!", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (xoa == DialogResult.Yes)
            {
                try
                {
                    cn.Open();
                    string del = "DELETE FROM SANPHAM WHERE MaSP='" + cbMaSP.Text + "'";
                    da = new SqlDataAdapter(del, cn);
                    da.SelectCommand.ExecuteNonQuery();
                    cn.Close();

                    MessageBox.Show("Xóa thành công", "Thông báo!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadLaiCBB();
                    this.btnTaiDL_Click(sender, e);

                }
                catch (SqlException ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        private void btThoat_Click(object sender, EventArgs e)
        {
            DialogResult exit;
            exit = MessageBox.Show("Bạn có chắc chắn muốn thoát chương trình?", "THÔNG BÁO", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (exit == DialogResult.Yes)
            {
                this.Close();
            }
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

        private void btTim_Click(object sender, EventArgs e)
        {
            if (!CheckExistForm("TimSP"))
            {
                TimSP f = new TimSP();
                f.Show();
            }
            else
            {
                ActiveChilForm("TimSP");
            }
        }
    }
}
