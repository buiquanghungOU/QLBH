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
    public partial class FrmNhapHang : Form
    {
        string cnStr;
        SqlConnection cn;
        DataSet ds;

        public FrmNhapHang()
        {
            InitializeComponent();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void btHuy_Click(object sender, EventArgs e)
        {
            ds.RejectChanges();
        }

        public DataSet NhapHangDataSet()
        {
            try
            {
                string sql = "SELECT *FROM CHITIETPHIEUNHAP";
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

        private void FrmNhapHang_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);

            dgvChiTietPN.DataSource = NhapHangDataSet().Tables[0];
        }

        private void btLuu_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter(); //Update

            //DELETE
            string del = "DELETE FROM  WHERE cbMaPN = @maphieunhap";
            SqlCommand cmd = new SqlCommand(del, cn);

            cmd.Parameters.Add("@maphieunhap", SqlDbType.NVarChar, 32, "MaPN");
            da.DeleteCommand = cmd;

            da.Update(ds);
        }

    }
}
