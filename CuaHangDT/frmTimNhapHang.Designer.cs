namespace CuaHangDT
{
    partial class frmTimNhapHang
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dgvTim = new System.Windows.Forms.DataGridView();
            this.txtNhap = new System.Windows.Forms.TextBox();
            this.cbCachTim = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTim)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dgvTim);
            this.groupBox1.Controls.Add(this.txtNhap);
            this.groupBox1.Controls.Add(this.cbCachTim);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.groupBox1.Location = new System.Drawing.Point(12, 10);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(902, 485);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tinnhap hang";
            // 
            // dgvTim
            // 
            this.dgvTim.AllowUserToAddRows = false;
            this.dgvTim.AllowUserToDeleteRows = false;
            this.dgvTim.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTim.Location = new System.Drawing.Point(22, 136);
            this.dgvTim.Name = "dgvTim";
            this.dgvTim.ReadOnly = true;
            this.dgvTim.Size = new System.Drawing.Size(858, 330);
            this.dgvTim.TabIndex = 4;
            // 
            // txtNhap
            // 
            this.txtNhap.Location = new System.Drawing.Point(553, 87);
            this.txtNhap.Name = "txtNhap";
            this.txtNhap.Size = new System.Drawing.Size(168, 26);
            this.txtNhap.TabIndex = 3;
            this.txtNhap.TextChanged += new System.EventHandler(this.txtNhap_TextChanged);
            // 
            // cbCachTim
            // 
            this.cbCachTim.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbCachTim.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cbCachTim.FormattingEnabled = true;
            this.cbCachTim.Location = new System.Drawing.Point(258, 89);
            this.cbCachTim.Name = "cbCachTim";
            this.cbCachTim.Size = new System.Drawing.Size(174, 28);
            this.cbCachTim.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label3.Location = new System.Drawing.Point(459, 89);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 24);
            this.label3.TabIndex = 1;
            this.label3.Text = "NHẬP:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label2.Location = new System.Drawing.Point(137, 93);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(106, 24);
            this.label2.TabIndex = 1;
            this.label2.Text = "TÌM THEO:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.Location = new System.Drawing.Point(189, 38);
            this.label1.Name = "label1";
<<<<<<< HEAD:CuaHangDT/frmTimNhapHang.Designer.cs
            this.label1.Size = new System.Drawing.Size(87, 37);
            this.label1.TabIndex = 0;
            this.label1.Text = "TNH";
=======
            this.label1.Size = new System.Drawing.Size(98, 27);
            this.label1.TabIndex = 1;
            this.label1.Text = "Tìm Theo: ";
            // 
            // cbTim
            // 
            this.cbTim.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbTim.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cbTim.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbTim.FormattingEnabled = true;
            this.cbTim.Items.AddRange(new object[] {
            "Mã Sản Phẩm",
            "Tên Sản Phẩm",
            "Mã Nhà Cung Cấp",
            "Mã Hãng Sản Xuất"});
            this.cbTim.Location = new System.Drawing.Point(110, 53);
            this.cbTim.Name = "cbTim";
            this.cbTim.Size = new System.Drawing.Size(221, 29);
            this.cbTim.TabIndex = 0;
            // 
            // dgvTim
            // 
            this.dgvTim.AllowUserToAddRows = false;
            this.dgvTim.AllowUserToDeleteRows = false;
            this.dgvTim.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTim.Location = new System.Drawing.Point(12, 142);
            this.dgvTim.Name = "dgvTim";
            this.dgvTim.ReadOnly = true;
            this.dgvTim.Size = new System.Drawing.Size(661, 253);
            this.dgvTim.TabIndex = 11;
>>>>>>> 9b0fbe68ee71c174a2fd69fc1d15a1df6937f64c:CuaHangDT/FrmTimSP.Designer.cs
            // 
            // frmTimNhapHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
<<<<<<< HEAD:CuaHangDT/frmTimNhapHang.Designer.cs
            this.ClientSize = new System.Drawing.Size(919, 502);
            this.Controls.Add(this.groupBox1);
            this.Name = "frmTimNhapHang";
            this.Text = "frmTimNhapHang";
            this.Load += new System.EventHandler(this.frmTimNhapHang_Load);
=======
            this.ClientSize = new System.Drawing.Size(689, 408);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvTim);
            this.Name = "FrmTimSP";
            this.Text = "FrmTimSP";
            this.Load += new System.EventHandler(this.FrmTimSP_Load);
>>>>>>> 9b0fbe68ee71c174a2fd69fc1d15a1df6937f64c:CuaHangDT/FrmTimSP.Designer.cs
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTim)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dgvTim;
        private System.Windows.Forms.TextBox txtNhap;
        private System.Windows.Forms.ComboBox cbCachTim;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}