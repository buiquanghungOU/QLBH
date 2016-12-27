namespace CuaHangDT
{
    partial class FrmTKKTK
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
            this.lbMain = new System.Windows.Forms.Label();
            this.DataTableTKDTBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.DataSetTKDT = new CuaHangDT.DataSetTKDT();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbMaSP = new System.Windows.Forms.ComboBox();
            this.btnTK = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.DataTableTKDTTableAdapter = new CuaHangDT.DataSetTKDTTableAdapters.DataTableTKDTTableAdapter();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.DataSetHTK = new CuaHangDT.DataSetHTK();
            this.DataTable1BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.DataTable1TableAdapter = new CuaHangDT.DataSetHTKTableAdapters.DataTable1TableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.DataTableTKDTBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSetTKDT)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataSetHTK)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataTable1BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // lbMain
            // 
            this.lbMain.Dock = System.Windows.Forms.DockStyle.Top;
            this.lbMain.Font = new System.Drawing.Font("Times New Roman", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbMain.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.lbMain.Location = new System.Drawing.Point(0, 0);
            this.lbMain.Name = "lbMain";
            this.lbMain.Size = new System.Drawing.Size(748, 128);
            this.lbMain.TabIndex = 12;
            this.lbMain.Text = "THỐNG KÊ HÀNG TỒN KHO";
            this.lbMain.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // DataTableTKDTBindingSource
            // 
            this.DataTableTKDTBindingSource.DataMember = "DataTableTKDT";
            this.DataTableTKDTBindingSource.DataSource = this.DataSetTKDT;
            // 
            // DataSetTKDT
            // 
            this.DataSetTKDT.DataSetName = "DataSetTKDT";
            this.DataSetTKDT.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbMaSP);
            this.groupBox1.Controls.Add(this.btnTK);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.groupBox1.Location = new System.Drawing.Point(12, 45);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(477, 68);
            this.groupBox1.TabIndex = 13;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thống Kê Theo";
            // 
            // cbMaSP
            // 
            this.cbMaSP.FormattingEnabled = true;
            this.cbMaSP.Location = new System.Drawing.Point(165, 22);
            this.cbMaSP.Name = "cbMaSP";
            this.cbMaSP.Size = new System.Drawing.Size(127, 27);
            this.cbMaSP.TabIndex = 6;
            // 
            // btnTK
            // 
            this.btnTK.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTK.Location = new System.Drawing.Point(343, 18);
            this.btnTK.Name = "btnTK";
            this.btnTK.Size = new System.Drawing.Size(83, 32);
            this.btnTK.TabIndex = 5;
            this.btnTK.Text = "Thống Kê";
            this.btnTK.UseVisualStyleBackColor = true;
            this.btnTK.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(17, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(108, 19);
            this.label1.TabIndex = 2;
            this.label1.Text = "Mã Sản Phẩm:";
            // 
            // DataTableTKDTTableAdapter
            // 
            this.DataTableTKDTTableAdapter.ClearBeforeFill = true;
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.DataTable1BindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "CuaHangDT.ReportHTK.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 128);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.Size = new System.Drawing.Size(748, 298);
            this.reportViewer1.TabIndex = 14;
            // 
            // DataSetHTK
            // 
            this.DataSetHTK.DataSetName = "DataSetHTK";
            this.DataSetHTK.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // DataTable1BindingSource
            // 
            this.DataTable1BindingSource.DataMember = "DataTable1";
            this.DataTable1BindingSource.DataSource = this.DataSetHTK;
            // 
            // DataTable1TableAdapter
            // 
            this.DataTable1TableAdapter.ClearBeforeFill = true;
            // 
            // FrmTKKTK
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(748, 426);
            this.Controls.Add(this.reportViewer1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.lbMain);
            this.Name = "FrmTKKTK";
            this.Text = "Thống Kê Hàng Tồn Kho";
            this.Load += new System.EventHandler(this.FrmTKKTK_Load);
            ((System.ComponentModel.ISupportInitialize)(this.DataTableTKDTBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSetTKDT)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataSetHTK)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataTable1BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lbMain;
        private System.Windows.Forms.BindingSource DataTableTKDTBindingSource;
        private DataSetTKDT DataSetTKDT;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbMaSP;
        private System.Windows.Forms.Button btnTK;
        private System.Windows.Forms.Label label1;
        private DataSetTKDTTableAdapters.DataTableTKDTTableAdapter DataTableTKDTTableAdapter;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource DataTable1BindingSource;
        private DataSetHTK DataSetHTK;
        private DataSetHTKTableAdapters.DataTable1TableAdapter DataTable1TableAdapter;
    }
}