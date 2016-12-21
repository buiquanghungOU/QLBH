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
            
        }

        private void FrmNhaCungCap_FormClosing(object sender, FormClosingEventArgs e)
        {
            //Application.Exit();
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

        private void dgvNhaCC_Click(object sender, EventArgs e)
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
    }
}

