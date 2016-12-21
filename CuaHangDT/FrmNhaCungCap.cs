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
        { }
    }
}

