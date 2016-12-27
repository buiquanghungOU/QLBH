namespace CuaHangDT
{
    partial class FrmTimThanhToan
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
            this.cbCachTim = new System.Windows.Forms.ComboBox();
            this.txtNhap = new System.Windows.Forms.TextBox();
            this.dgvTim = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTim)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dgvTim);
            this.groupBox1.Controls.Add(this.txtNhap);
            this.groupBox1.Controls.Add(this.cbCachTim);
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(963, 476);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "groupBox1";
            // 
            // cbCachTim
            // 
            this.cbCachTim.FormattingEnabled = true;
            this.cbCachTim.Location = new System.Drawing.Point(210, 91);
            this.cbCachTim.Name = "cbCachTim";
            this.cbCachTim.Size = new System.Drawing.Size(121, 21);
            this.cbCachTim.TabIndex = 0;
            // 
            // txtNhap
            // 
            this.txtNhap.Location = new System.Drawing.Point(530, 91);
            this.txtNhap.Name = "txtNhap";
            this.txtNhap.Size = new System.Drawing.Size(100, 20);
            this.txtNhap.TabIndex = 1;
            this.txtNhap.TextChanged += new System.EventHandler(this.txtNhap_TextChanged);
            // 
            // dgvTim
            // 
            this.dgvTim.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTim.Location = new System.Drawing.Point(6, 147);
            this.dgvTim.Name = "dgvTim";
            this.dgvTim.Size = new System.Drawing.Size(951, 323);
            this.dgvTim.TabIndex = 2;
            // 
            // FrmTimThanhToan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(987, 500);
            this.Controls.Add(this.groupBox1);
            this.Name = "FrmTimThanhToan";
            this.Text = "FrmTimThanhToan";
            this.Load += new System.EventHandler(this.FrmTimThanhToan_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTim)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtNhap;
        private System.Windows.Forms.ComboBox cbCachTim;
        private System.Windows.Forms.DataGridView dgvTim;
    }
}