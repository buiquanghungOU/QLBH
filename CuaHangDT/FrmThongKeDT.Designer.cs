namespace CuaHangDT
{
    partial class FrmThongKeDT
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
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.lbMain = new System.Windows.Forms.Label();
            this.rpviewTKDT = new Microsoft.Reporting.WinForms.ReportViewer();
            this.cbNgayLap = new System.Windows.Forms.ComboBox();
            this.DataSetTKDT = new CuaHangDT.DataSetTKDT();
            this.DataTableTKDTBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.DataTableTKDTTableAdapter = new CuaHangDT.DataSetTKDTTableAdapters.DataTableTKDTTableAdapter();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataSetTKDT)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataTableTKDTBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbNgayLap);
            this.groupBox1.Controls.Add(this.button1);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.groupBox1.Location = new System.Drawing.Point(13, 45);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(477, 68);
            this.groupBox1.TabIndex = 9;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thống Kê Theo";
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(343, 18);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(83, 32);
            this.button1.TabIndex = 5;
            this.button1.Text = "Thống Kê";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(17, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(108, 19);
            this.label1.TabIndex = 2;
            this.label1.Text = "Ngày Lập HD:";
            // 
            // lbMain
            // 
            this.lbMain.Dock = System.Windows.Forms.DockStyle.Top;
            this.lbMain.Font = new System.Drawing.Font("Times New Roman", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbMain.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.lbMain.Location = new System.Drawing.Point(0, 0);
            this.lbMain.Name = "lbMain";
            this.lbMain.Size = new System.Drawing.Size(898, 128);
            this.lbMain.TabIndex = 8;
            this.lbMain.Text = "THỐNG KÊ DOANH THU";
            this.lbMain.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // rpviewTKDT
            // 
            this.rpviewTKDT.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.DataTableTKDTBindingSource;
            this.rpviewTKDT.LocalReport.DataSources.Add(reportDataSource1);
            this.rpviewTKDT.LocalReport.ReportEmbeddedResource = "CuaHangDT.Report1.rdlc";
            this.rpviewTKDT.Location = new System.Drawing.Point(0, 128);
            this.rpviewTKDT.Name = "rpviewTKDT";
            this.rpviewTKDT.Size = new System.Drawing.Size(898, 348);
            this.rpviewTKDT.TabIndex = 11;
            // 
            // cbNgayLap
            // 
            this.cbNgayLap.FormattingEnabled = true;
            this.cbNgayLap.Location = new System.Drawing.Point(165, 22);
            this.cbNgayLap.Name = "cbNgayLap";
            this.cbNgayLap.Size = new System.Drawing.Size(127, 27);
            this.cbNgayLap.TabIndex = 6;
            // 
            // DataSetTKDT
            // 
            this.DataSetTKDT.DataSetName = "DataSetTKDT";
            this.DataSetTKDT.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // DataTableTKDTBindingSource
            // 
            this.DataTableTKDTBindingSource.DataMember = "DataTableTKDT";
            this.DataTableTKDTBindingSource.DataSource = this.DataSetTKDT;
            // 
            // DataTableTKDTTableAdapter
            // 
            this.DataTableTKDTTableAdapter.ClearBeforeFill = true;
            // 
            // FrmThongKeDT
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(898, 476);
            this.Controls.Add(this.rpviewTKDT);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.lbMain);
            this.Name = "FrmThongKeDT";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Thống Kê Doanh Thu";
            this.Load += new System.EventHandler(this.FrmThongKeDT_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataSetTKDT)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataTableTKDTBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lbMain;
        private Microsoft.Reporting.WinForms.ReportViewer rpviewTKDT;
        private System.Windows.Forms.ComboBox cbNgayLap;
        private System.Windows.Forms.BindingSource DataTableTKDTBindingSource;
        private DataSetTKDT DataSetTKDT;
        private DataSetTKDTTableAdapters.DataTableTKDTTableAdapter DataTableTKDTTableAdapter;
    }
}