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
    public partial class frmQuanLy : Form
    {
       string cnStr = "";
       SqlConnection cn;
        public frmQuanLy()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //Khai bao ket noi
            cnStr = ConfigurationManager.ConnectionStrings["cnStr"].ConnectionString;
            cn = new SqlConnection(cnStr);
        }

        //Kiem tra form con da dong hay chua
        private bool CheckExistForm(String name)
        {
            bool check = false;
            foreach (Form frm in this.MdiChildren)
            {
                if (frm.Name == name)
                {
                    check = true;
                    break;
                }
            }
            return check;
        }

        private void ActiveChilForm(string name)
        {
            foreach (Form frm in this.MdiChildren)
            {
                if (frm.Name == name)
                {
                    frm.Activate();
                    break;
                }
            }
        }

        private void nhậpHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckExistForm("FrmNhapHang"))
            {
                FrmNhapHang f = new FrmNhapHang();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmNhapHang");
            }
        }

        private void toolStripMenuItem4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void xuấtHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckExistForm("FrmXuatHang"))
            {
                FrmXuatHang f = new FrmXuatHang();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmXuatHang");
            }
            
        }

        private void thanhToánToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckExistForm("FrmThanhToan"))
            {
                FrmThanhToan f = new FrmThanhToan();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmThanhToan");
            }
           
        }

        private void frmQuanLy_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void toolStripMenuItem3_Click(object sender, EventArgs e)
        {
            this.Hide();
            frmLogin login = new frmLogin();
            login.Show();
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            //frmLogin login = new frmLogin();
            //frmQuanLy quanly = new frmQuanLy();      
        }

        private void danhSáchNhânViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckExistForm("FrmNhanVien"))
            {
                FrmNhanVien f = new FrmNhanVien();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmNhanVien");
            }
        }

        private void danhSáchKháchHàngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckExistForm("FrmKhachHang"))
            {
                FrmKhachHang f = new FrmKhachHang();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmKhachHang");
            }
        }


        private void sảnPhẩmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckExistForm("FrmSanPham"))
            {
                FrmSanPham f = new FrmSanPham();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmSanPham");
            }
        }

        private void nhàCungCấpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckExistForm("FrmNhaCungCap"))
            {
                FrmNhaCungCap f = new FrmNhaCungCap();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmNhaCungCap");
            }
            
        }

        private void doanhThuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckExistForm("FrmThongKeDT"))
            {
                FrmThongKeDT f = new FrmThongKeDT();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmThongKeDT");
            }
        }

        private void hàngTồnKhoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!CheckExistForm("FrmTKKTK"))
            {
                FrmTKKTK f = new FrmTKKTK();
                f.MdiParent = this;
                f.Show();
            }
            else
            {
                ActiveChilForm("FrmTKKTK");
            }
        }
    }
}
