﻿namespace CuaHangDT
{
    partial class frmLogin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cbUser = new System.Windows.Forms.ComboBox();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.btnSignin = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.ckbShowPassword = new System.Windows.Forms.CheckBox();
            this.lbLoiDangNhap = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(141, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(138, 43);
            this.label1.TabIndex = 0;
            this.label1.Text = "LOGIN";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label2
            // 
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(11, 57);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(127, 38);
            this.label2.TabIndex = 1;
            this.label2.Text = "USER NAME : ";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // label3
            // 
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(11, 96);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(136, 26);
            this.label3.TabIndex = 2;
            this.label3.Text = "PASSWORD : ";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // cbUser
            // 
            this.cbUser.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.cbUser.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbUser.ForeColor = System.Drawing.Color.Black;
            this.cbUser.FormattingEnabled = true;
            this.cbUser.Location = new System.Drawing.Point(147, 65);
            this.cbUser.Name = "cbUser";
            this.cbUser.Size = new System.Drawing.Size(253, 28);
            this.cbUser.TabIndex = 0;
            this.cbUser.Text = "Admin";
            // 
            // txtPassword
            // 
            this.txtPassword.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.txtPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPassword.Location = new System.Drawing.Point(147, 98);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Size = new System.Drawing.Size(253, 26);
            this.txtPassword.TabIndex = 1;
            this.txtPassword.UseSystemPasswordChar = true;
            // 
            // btnSignin
            // 
            this.btnSignin.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSignin.Location = new System.Drawing.Point(79, 157);
            this.btnSignin.Name = "btnSignin";
            this.btnSignin.Size = new System.Drawing.Size(78, 38);
            this.btnSignin.TabIndex = 3;
            this.btnSignin.Text = "SIGN IN";
            this.btnSignin.UseVisualStyleBackColor = true;
            // 
            // btnCancel
            // 
            this.btnCancel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancel.Location = new System.Drawing.Point(265, 157);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(85, 38);
            this.btnCancel.TabIndex = 4;
            this.btnCancel.Text = "CANCEL";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btCancel_Click);
            // 
            // ckbShowPassword
            // 
            this.ckbShowPassword.AutoSize = true;
            this.ckbShowPassword.Location = new System.Drawing.Point(298, 130);
            this.ckbShowPassword.Name = "ckbShowPassword";
            this.ckbShowPassword.Size = new System.Drawing.Size(102, 17);
            this.ckbShowPassword.TabIndex = 2;
            this.ckbShowPassword.Text = "Show Password";
            this.ckbShowPassword.UseVisualStyleBackColor = true;
            // 
            // lbLoiDangNhap
            // 
            this.lbLoiDangNhap.Location = new System.Drawing.Point(12, 127);
            this.lbLoiDangNhap.Name = "lbLoiDangNhap";
            this.lbLoiDangNhap.Size = new System.Drawing.Size(267, 20);
            this.lbLoiDangNhap.TabIndex = 8;
            // 
            // frmLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.ClientSize = new System.Drawing.Size(419, 206);
            this.Controls.Add(this.lbLoiDangNhap);
            this.Controls.Add(this.ckbShowPassword);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnSignin);
            this.Controls.Add(this.txtPassword);
            this.Controls.Add(this.cbUser);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmLogin";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Login";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Login_FormClosing);
            this.Load += new System.EventHandler(this.Login_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbUser;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.Button btnSignin;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.CheckBox ckbShowPassword;
        private System.Windows.Forms.Label lbLoiDangNhap;
    }
}