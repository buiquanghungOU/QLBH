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

namespace CuaHangDT
{
    public partial class frmQuanLy : Form
    {
        public frmQuanLy()
        {
            InitializeComponent();
            

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void frmQuanLy_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Đóng ứng dụng?", "Thông báo",
              MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.No)
                e.Cancel = true;
        }

        private void nhậpHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmNhapHang f = new FrmNhapHang();
            f.MdiParent = this;
            f.Show();

        }

        private void toolStripMenuItem4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void xuấtHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmXuatHang f = new FrmXuatHang();
            f.MdiParent = this;
            f.Show();
        }

        private void thanhToánToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmThanhToan f = new FrmThanhToan();
            f.MdiParent = this;
            f.Show();
        }


        
    }
}
