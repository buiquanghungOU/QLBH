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
using System.Configuration;
namespace CuaHangDT
{
    public partial class frmLogin : Form
    {
        frmQuanLy QL;
        string cnStr = @"Data Source=.;Initial Catalog=QLBH_BT;Integrated Security=True";
        SqlConnection cn;
        SqlCommand cmd;

        public frmLogin()
        {
            InitializeComponent();
        } 

        private void btnSignin_Click(object sender, EventArgs e)
        {
            try
            {

                cn = new SqlConnection(cnStr);
                cn.Open();
                string sql = "SELECT Count(*) FROM [QLBH_BT].[dbo].[USER] WHERE MaNV=@acc AND Password=@pass";
                cmd = new SqlCommand(sql, cn);
                cmd.Parameters.Add(new SqlParameter("@acc", cbUser.Text));
                cmd.Parameters.Add(new SqlParameter("@pass", txtPassword.Text));
                int x = (int)cmd.ExecuteScalar();
                if (x == 1)
                {
                    //Khi nguoi dung dang nhap thanh cong
                    //MessageBox.Show("Đăng nhập thành công!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.Hide();
                    QL = new frmQuanLy();
                    QL.Show();
                }
                else
                {
                    //Khi nguoi dung dang nhap khong thanh cong
                    lbLoiDangNhap.Text = "MÃ NHÂN VIÊN HOẶC MẬT KHẨU KHÔNG ĐÚNG!";
                    cbUser.Text = "";
                    txtPassword.Text = "";
                    
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void ckbShowPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (ckbShowPassword.Checked == true)
            {
                txtPassword.UseSystemPasswordChar = false;
            }
            else
            {
                txtPassword.UseSystemPasswordChar = true;
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void frmLogin_Enter(object sender, EventArgs e)
        {
            //this.AcceptButton = btnSignin;
        }       
    }
}