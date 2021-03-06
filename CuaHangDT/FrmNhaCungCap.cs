﻿using System;
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
    public partial class FrmNhaCungCap : Form
    {
        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;
        public FrmNhaCungCap()
        {
            InitializeComponent();
        }

        private void FrmNhaCungCap_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            // dgvNhaCC.DataSource = DSNhaCungCap().Tables[0];
            LoadCB();

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
        private void FrmNhaCungCap_FormClosing(object sender, FormClosingEventArgs e)
        {
            //Application.Exit();
        }


        private void btnTaiDL_Click(object sender, EventArgs e)
        {
            try
            {
                //cn.Open();
                String load = "SELECT * FROM NHACUNGCAP";
                da = new SqlDataAdapter(load, cn);
                DataTable table = new DataTable();
                da.Fill(table);
                dgvNhaCC.DataSource = table;

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


        private void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                cn.Open();
                string ins =
                    "INSERT INTO NHACUNGCAP (MaNCC,TenNCC,TenNDD,DiaChi,Tax,Fax,SDT,[E-mail]) VALUES"
                    + "('" + cbMaNCC.Text + "',N'" + txtTenNCC.Text + "',N'" + txtTenNDD.Text + "',N'" + txtDiachi.Text + "',N'" + txtSoTax.Text + "',N'" + txtSoFax.Text + "',N'" + txtDienThoai.Text + "',N'" + txtEmail.Text + "')";
                da = new SqlDataAdapter(ins, cn);
                da.SelectCommand.ExecuteNonQuery();
                MessageBox.Show("Thêm thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Loadlaicbb();
                this.btnTaiDL_Click(sender, e);
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

        private void FrmNhaCungCap_Click(object sender, EventArgs e)
        {
        }



        private void LoadCB()
        {
            da = new SqlDataAdapter("SELECT * FROM NHACUNGCAP ", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //da.Dispose();
            cbMaNCC.DataSource = dt;
            //   cbMaNCC.DisplayMember = "";
            cbMaNCC.ValueMember = "MaNCC";
        }



        private void btnSua_Click_1(object sender, EventArgs e)
        {
            try
            {
                cn.Open();

                string upd =
                   "UPDATE NHACUNGCAP SET TenNCC ='" + txtTenNCC.Text + "',TenNDD ='" + txtTenNDD.Text + "',DiaChi= '" + txtDiachi.Text + "',Tax= '" + txtSoFax.Text + "',Fax='" + txtSoFax.Text + "',SDT='" + txtDienThoai.Text + "',[E-mail]='" + txtEmail.Text + "' WHERE MaNCC ='" + cbMaNCC.Text + "'";
                da = new SqlDataAdapter(upd, cn);

                da.SelectCommand.ExecuteNonQuery();

                MessageBox.Show("Sửa thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Loadlaicbb();
                this.btnTaiDL_Click(sender, e);
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

        private void cbMaNCC_SelectionChangeCommitted_1(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM NHACUNGCAP WHERE MaNCC='" + cbMaNCC.SelectedValue + "'", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            dgvNhaCC.DataSource = dt;
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
                    string del = "DELETE FROM NHACUNGCAP WHERE MaNCC='" + cbMaNCC.Text + "'";
                    da = new SqlDataAdapter(del, cn);
                    da.SelectCommand.ExecuteNonQuery();
                    cn.Close();

                    MessageBox.Show("Xóa thành công", "Thông báo!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Loadlaicbb();
                    this.btnTaiDL_Click(sender, e);

                }
                catch (SqlException ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }


        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult exit;
            exit = MessageBox.Show("Bạn có chắc chắn muốn thoát chương trình?", "THÔNG BÁO", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (exit == DialogResult.Yes)
            {
                this.Close();
            }
        }
        private void Loadlaicbb()
        {
            cbMaNCC.Text = string.Empty;
            txtTenNCC.Text = string.Empty;
            txtTenNDD.Text = string.Empty;
            txtDiachi.Text = string.Empty;
            txtSoTax.Text = string.Empty;
            txtSoFax.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtDienThoai.Text = string.Empty;
        }

        private void dgvNhaCC_Click_1(object sender, EventArgs e)
        {
            int index = dgvNhaCC.CurrentRow.Index;
            cbMaNCC.Text = dgvNhaCC.Rows[index].Cells[0].Value.ToString();
            txtTenNCC.Text = dgvNhaCC.Rows[index].Cells[1].Value.ToString();
            txtTenNDD.Text = dgvNhaCC.Rows[index].Cells[2].Value.ToString();
            txtDiachi.Text = dgvNhaCC.Rows[index].Cells[3].Value.ToString();
            txtSoTax.Text = dgvNhaCC.Rows[index].Cells[4].Value.ToString();
            txtSoFax.Text = dgvNhaCC.Rows[index].Cells[5].Value.ToString();
            txtDienThoai.Text = dgvNhaCC.Rows[index].Cells[6].Value.ToString();
            txtEmail.Text = dgvNhaCC.Rows[index].Cells[7].Value.ToString();
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
            

            if (!CheckExistForm("FrmTimNCC"))
            {
                FrmTimNCC f = new FrmTimNCC();
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmTimNCC");
            }
        }
    }

}

