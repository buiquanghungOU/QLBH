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
        DataSet ds;
        public FrmNhaCungCap()
        {
            InitializeComponent();
        }

        private void FrmNhaCungCap_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            dgvNhaCC.DataSource= DSNhaCungCap().Tables[0];
        }

        private void FrmNhaCungCap_FormClosing(object sender, FormClosingEventArgs e)
        {
            //Application.Exit();
        }
        public DataSet DSNhaCungCap()
        {
            try
            {
                string sql = "SELECT * FROM NHACUNGCAP";
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
                return null;

            }
            finally
            {
                cn.Close();
            }

        }   

        private void btnThem_Click(object sender, EventArgs e)
        {
            
            SqlDataAdapter da = new SqlDataAdapter(); // Cập nhật vào CSDL
            
            //Thêm vào CSDL
            string ins = "INSERT INTO NHACUNGCAP(MaNCC, TenNCC, TenNDD, DiaChi, Tax, Fax, SDT, [E-Mail]) VALUES (@mancc, @tenncc, @tenndd, @diachi, @tax, @fax, @sdt, @email)";
            SqlCommand cmd = new SqlCommand(ins,cn);
           /* cmd.Parameters.Add("@mancc", SqlDbType.NVarChar, 32, "MaNCC")
            cmd.Parameters.Add("@tenncc", SqlDbType.NVarChar, 100, "TenNCC");
            cmd.Parameters.Add("@tenndd", SqlDbType.NVarChar, 100, "TenNDD");
            cmd.Parameters.Add("@diachi", SqlDbType.NVarChar, 225, "DiaChi");
            cmd.Parameters.Add("@tax", SqlDbType.Real, 100 ,"Tax");
            cmd.Parameters.Add("@fax", SqlDbType.NVarChar,225, "Fax");
            cmd.Parameters.Add("@sdt", SqlDbType.Real, 50, "SDT");
            cmd.Parameters.Add("@email", SqlDbType.NVarChar, 128, "[E-mail]"); */
            
            cmd.Parameters.Add( new SqlParameter ("@mancc", cbMaNCC.Text));
            cmd.Parameters.Add( new SqlParameter ("@tenncc", txtTenNCC.Text));
            cmd.Parameters.Add( new SqlParameter ("@tenndd", txtTenNDD.Text));
            cmd.Parameters.Add( new SqlParameter ("@diachi", txtDiachi.Text));
            cmd.Parameters.Add( new SqlParameter ("@tax", txtSoTax.Text));
            cmd.Parameters.Add( new SqlParameter ("@fax", txtSoFax.Text));
            cmd.Parameters.Add( new SqlParameter ("@sdt",txtDienThoai.Text));
            


            da.InsertCommand = cmd;

            da.Update(ds);
        }
    }
}

