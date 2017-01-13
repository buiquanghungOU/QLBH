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

namespace CuaHangDT
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            frmLogin l = new frmLogin();
            l.ShowDialog();

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult dlgresult = MessageBox.Show("Bạn có muốn đóng chương trình?",
                               "EXIT",
                               MessageBoxButtons.OKCancel,
                               MessageBoxIcon.Warning);
            if (dlgresult == DialogResult.Cancel)
            {
                e.Cancel = true;
            }
            else
            {
                Application.Exit();
            }
        }
    }
}
