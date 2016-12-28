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
using Microsoft.Reporting.WinForms;

namespace CuaHangDT
{
    public partial class FrmTKSanPhamBan : Form
    {
        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;

        public FrmTKSanPhamBan()
        {
           
            InitializeComponent();
        }

        private void FrmTKSanPhamBan_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            LoadComboboxMaSP();
        }

        private void LoadComboboxMaSP()
        {
            da = new SqlDataAdapter("SELECT DISTINCT * FROM SANPHAM", cn);
            DataTable table = new DataTable();
            da.Fill(table);
            da.Dispose();
            cbTimMaSP.DataSource = table;//gán dữ liệu nguồn

            cbTimMaSP.ValueMember = "MaSP";
        }

        private void btnThongKe_Click(object sender, EventArgs e)
        {
            this.DataTable1TableAdapter.Fill(this.DsTKSanPhamBan.DataTable1, cbTimMaSP.SelectedValue.ToString());
            this.reportViewer1.RefreshReport();
        }


    }
}
