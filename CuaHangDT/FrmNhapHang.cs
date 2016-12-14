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

        }

        public DataSet NhapHangDataSet()
        {
            try
            {
                string sql = "SELECT *FROM Chi Tiết Phiếu Nhập";
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                ds = new DataSet();
                da.Fill(ds);

            }
        }
    }
}
