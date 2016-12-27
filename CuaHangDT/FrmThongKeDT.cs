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
    public partial class FrmThongKeDT : Form
    {
        string cnStr = "";
        SqlConnection cn;
        SqlDataAdapter da;

        public FrmThongKeDT()
        {
            InitializeComponent();
        }

        private void FrmThongKeDT_Load(object sender, EventArgs e)
        {
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
            LoadComboBoxNgayLapHD();
           
        }
        private void LoadComboBoxNgayLapHD()
         {
             da = new SqlDataAdapter("SELECT * FROM HOADON", cn);
             DataTable table = new DataTable();
             da.Fill(table);
             da.Dispose();
             cbNgayLap.DataSource = table;//gán dữ liệu nguồn

             cbNgayLap.ValueMember = "NgayLapHD";
         }
        private void button1_Click(object sender, EventArgs e)
        {
             this.DataTableTKDTTableAdapter.Fill(this.DataSetTKDT.DataTableTKDT,cbNgayLap.SelectedValue.ToString());

            this.rpviewTKDT.RefreshReport();
        }
    }
}
