using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;
using System.Data.SqlClient;
using System.Configuration;

namespace CuaHangDT
{
    public partial class FrmTKKTK : Form
    {
        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;
        public FrmTKKTK()
        {
            InitializeComponent();
        }

        private void FrmTKKTK_Load(object sender, EventArgs e)
        {                       
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            LoadComboBoxMaSP();
            
        }
         private void LoadComboBoxMaSP()
         {
             da = new SqlDataAdapter("SELECT DISTINCT MaSP FROM SANPHAM", cn);
             DataTable table = new DataTable();
             da.Fill(table);
             da.Dispose();
             cbMaSP.DataSource = table;//gán dữ liệu nguồn

             cbMaSP.ValueMember = "MaSP";
         }
        private void button1_Click(object sender, EventArgs e)
        {
            this.DataTable1TableAdapter.Fill(this.DataSetHTK.DataTable1,cbMaSP.SelectedValue.ToString());
            this.reportViewer1.RefreshReport();          
        }
    }
}
