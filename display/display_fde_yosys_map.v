
module display (clk, lcd_db, lcd_en, lcd_rs, lcd_rst, lcd_rw, rst_n);
 input clk;
 output [7:0] lcd_db;
 output lcd_en;
 output lcd_rs;
 output lcd_rst;
 output lcd_rw;
 input rst_n;
  wire \net_Buf-pad-lcd_rs ;
  wire \net_Buf-pad-lcd_rw ;
  wire id00097;
  wire id00098;
  wire id00099;
  wire id00100;
  wire id00101;
  wire \net_Buf-pad-rst_n ;
  wire \net_Buf-pad-lcd_en ;
  wire \net_IBuf-clkpad-clk ;
  wire \$0lcd_db[7:0][5] ;
  wire \$0lcd_db[7:0][4] ;
  wire \$0lcd_db[7:0][6] ;
  wire \$0lcd_db[7:0][1] ;
  wire \$0lcd_db[7:0][0] ;
  wire \$0lcd_db[7:0][3] ;
  wire \$0lcd_db[7:0][2] ;
  wire id00109;
  wire \$0cnt_lcd[6:0][6] ;
  wire \$0cnt_lcd[6:0][4] ;
  wire \$0cnt_lcd[6:0][5] ;
  wire \$0cnt_lcd[6:0][2] ;
  wire \$0cnt_lcd[6:0][3] ;
  wire \$0cnt_lcd[6:0][0] ;
  wire \$0cnt_lcd[6:0][1] ;
  wire id00117;
  wire \cnt_lcd[2] ;
  wire \cnt_lcd[3] ;
  wire \cnt_lcd[1] ;
  wire \cnt_lcd[6] ;
  wire \cnt_lcd[4] ;
  wire \cnt_lcd[5] ;
  wire \net_Buf-pad-lcd_rst ;
  wire \net_Buf-pad-lcd_db[6] ;
  wire \net_Buf-pad-lcd_db[5] ;
  wire \net_Buf-pad-lcd_db[4] ;
  wire \net_Buf-pad-lcd_db[3] ;
  wire \net_Buf-pad-lcd_db[2] ;
  wire \net_Buf-pad-lcd_db[1] ;
  wire \net_Buf-pad-lcd_db[0] ;
  wire id00131;
  wire id00132;
  wire id00133;
  wire id00134;
  wire id00135;
  wire id00136;
  wire id00137;
  wire id00138;
  wire id00139;
  wire id00140;
  wire id00141;
  wire id00142;
  wire id00143;
  wire id00144;
  wire id00145;
  wire id00146;
  wire id00147;
  wire id00148;
  wire id00149;
  wire id00150;
  wire id00151;
  wire id00152;
  wire id00153;
  wire id00154;
  wire id00155;
  wire id00156;
  wire id00157;
  wire id00158;
  wire id00159;
  wire id00160;
  wire id00161;
  wire id00162;
  wire id00163;
  wire id00164;
  wire id00165;
  wire id00166;
  wire id00167;
  wire id00168;
  wire id00169;
  wire id00170;
  wire id00171;
  wire id00172;
  wire id00173;
  wire id00174;
  wire id00175;
  wire id00176;
  wire id00177;
  wire id00178;
  wire id00179;
  wire id00180;
  wire id00181;
  wire id00182;
  wire id00183;
  wire id00184;
  wire id00185;
  wire id00186;
  wire id00187;
  wire id00188;
  wire id00189;
  wire id00190;
  wire \net_Buf-pad-clk ;


  defparam id00001.INIT = 16'hFF70;
  LUT4 id00001 (
    .ADR0(id00099),
    .ADR1(id00098),
    .ADR2(id00117),
    .ADR3(id00101),
    .O(\$0lcd_db[7:0][0] )
  );

  defparam id00002.INIT = 16'hBF00;
  LUT4 id00002 (
    .ADR0(id00100),
    .ADR1(id00131),
    .ADR2(id00177),
    .ADR3(id00174),
    .O(id00101)
  );

  defparam id00003.INIT = 16'hFF10;
  LUT4 id00003 (
    .ADR0(id00173),
    .ADR1(id00176),
    .ADR2(id00175),
    .ADR3(\cnt_lcd[5] ),
    .O(id00177)
  );

  defparam id00004.INIT = 16'hBEFF;
  LUT4 id00004 (
    .ADR0(\cnt_lcd[2] ),
    .ADR1(\cnt_lcd[1] ),
    .ADR2(\cnt_lcd[4] ),
    .ADR3(\cnt_lcd[3] ),
    .O(id00175)
  );

  defparam id00005.INIT = 16'h0100;
  LUT4 id00005 (
    .ADR0(\cnt_lcd[3] ),
    .ADR1(\cnt_lcd[1] ),
    .ADR2(\cnt_lcd[2] ),
    .ADR3(\cnt_lcd[4] ),
    .O(id00173)
  );

  defparam id00006.INIT = 16'h4000;
  LUT4 id00006 (
    .ADR0(\cnt_lcd[3] ),
    .ADR1(\cnt_lcd[1] ),
    .ADR2(\cnt_lcd[2] ),
    .ADR3(\cnt_lcd[4] ),
    .O(id00176)
  );

  defparam id00007.INIT = 4'h1;
  LUT2 id00007 (
    .ADR0(id00183),
    .ADR1(\cnt_lcd[5] ),
    .O(id00100)
  );

  defparam id00008.INIT = 16'hBFFE;
  LUT4 id00008 (
    .ADR0(\cnt_lcd[1] ),
    .ADR1(\cnt_lcd[3] ),
    .ADR2(\cnt_lcd[2] ),
    .ADR3(\cnt_lcd[4] ),
    .O(id00183)
  );

  defparam id00009.INIT = 16'h0777;
  LUT4 id00009 (
    .ADR0(id00182),
    .ADR1(id00097),
    .ADR2(id00185),
    .ADR3(id00184),
    .O(id00131)
  );

  defparam id00010.INIT = 4'h8;
  LUT2 id00010 (
    .ADR0(\cnt_lcd[1] ),
    .ADR1(\cnt_lcd[2] ),
    .O(id00185)
  );

  defparam id00011.INIT = 4'h1;
  LUT2 id00011 (
    .ADR0(\cnt_lcd[3] ),
    .ADR1(\cnt_lcd[4] ),
    .O(id00182)
  );

  defparam id00012.INIT = 8'h10;
  LUT3 id00012 (
    .ADR0(\cnt_lcd[5] ),
    .ADR1(\cnt_lcd[4] ),
    .ADR2(\cnt_lcd[3] ),
    .O(id00184)
  );

  defparam id00013.INIT = 8'h10;
  LUT3 id00013 (
    .ADR0(\cnt_lcd[5] ),
    .ADR1(\cnt_lcd[1] ),
    .ADR2(\cnt_lcd[2] ),
    .O(id00097)
  );

  defparam id00014.INIT = 4'h4;
  LUT2 id00014 (
    .ADR0(\cnt_lcd[6] ),
    .ADR1(\net_Buf-pad-lcd_en ),
    .O(id00174)
  );

  defparam id00015.INIT = 16'h4000;
  LUT4 id00015 (
    .ADR0(id00179),
    .ADR1(id00178),
    .ADR2(id00181),
    .ADR3(id00180),
    .O(id00099)
  );

  defparam id00016.INIT = 16'hAFFC;
  LUT4 id00016 (
    .ADR0(id00160),
    .ADR1(id00159),
    .ADR2(\cnt_lcd[5] ),
    .ADR3(id00162),
    .O(id00178)
  );

  defparam id00017.INIT = 4'h4;
  LUT2 id00017 (
    .ADR0(\cnt_lcd[1] ),
    .ADR1(\cnt_lcd[2] ),
    .O(id00162)
  );

  defparam id00018.INIT = 16'hEFFB;
  LUT4 id00018 (
    .ADR0(\cnt_lcd[2] ),
    .ADR1(\cnt_lcd[3] ),
    .ADR2(\cnt_lcd[1] ),
    .ADR3(\cnt_lcd[4] ),
    .O(id00159)
  );

  defparam id00019.INIT = 4'h4;
  LUT2 id00019 (
    .ADR0(id00161),
    .ADR1(\cnt_lcd[5] ),
    .O(id00179)
  );

  defparam id00020.INIT = 16'hBEFF;
  LUT4 id00020 (
    .ADR0(\cnt_lcd[2] ),
    .ADR1(\cnt_lcd[1] ),
    .ADR2(\cnt_lcd[3] ),
    .ADR3(\cnt_lcd[4] ),
    .O(id00161)
  );

  defparam id00021.INIT = 16'h0BBB;
  LUT4 id00021 (
    .ADR0(\cnt_lcd[5] ),
    .ADR1(id00156),
    .ADR2(id00185),
    .ADR3(id00184),
    .O(id00181)
  );

  defparam id00022.INIT = 16'h1000;
  LUT4 id00022 (
    .ADR0(\cnt_lcd[1] ),
    .ADR1(\cnt_lcd[2] ),
    .ADR2(\cnt_lcd[3] ),
    .ADR3(\cnt_lcd[4] ),
    .O(id00156)
  );

  defparam id00023.INIT = 8'h07;
  LUT3 id00023 (
    .ADR0(id00158),
    .ADR1(id00097),
    .ADR2(id00156),
    .O(id00180)
  );

  defparam id00024.INIT = 4'h4;
  LUT2 id00024 (
    .ADR0(\cnt_lcd[4] ),
    .ADR1(\cnt_lcd[3] ),
    .O(id00158)
  );

  defparam id00025.INIT = 16'h0001;
  LUT4 id00025 (
    .ADR0(id00157),
    .ADR1(id00166),
    .ADR2(id00165),
    .ADR3(id00173),
    .O(id00098)
  );

  defparam id00026.INIT = 4'h4;
  LUT2 id00026 (
    .ADR0(id00168),
    .ADR1(\cnt_lcd[5] ),
    .O(id00157)
  );

  defparam id00027.INIT = 16'hFEBF;
  LUT4 id00027 (
    .ADR0(\cnt_lcd[4] ),
    .ADR1(\cnt_lcd[2] ),
    .ADR2(\cnt_lcd[3] ),
    .ADR3(\cnt_lcd[1] ),
    .O(id00168)
  );

  defparam id00028.INIT = 4'h8;
  LUT2 id00028 (
    .ADR0(id00167),
    .ADR1(id00164),
    .O(id00166)
  );

  defparam id00029.INIT = 4'h8;
  LUT2 id00029 (
    .ADR0(\cnt_lcd[3] ),
    .ADR1(\cnt_lcd[4] ),
    .O(id00167)
  );

  defparam id00030.INIT = 8'h80;
  LUT3 id00030 (
    .ADR0(\cnt_lcd[5] ),
    .ADR1(\cnt_lcd[1] ),
    .ADR2(\cnt_lcd[2] ),
    .O(id00164)
  );

  defparam id00031.INIT = 16'h1000;
  LUT4 id00031 (
    .ADR0(\cnt_lcd[3] ),
    .ADR1(\cnt_lcd[4] ),
    .ADR2(\cnt_lcd[2] ),
    .ADR3(\cnt_lcd[1] ),
    .O(id00165)
  );

  defparam id00032.INIT = 4'h8;
  LUT2 id00032 (
    .ADR0(\cnt_lcd[6] ),
    .ADR1(\net_Buf-pad-lcd_en ),
    .O(id00117)
  );

  defparam id00033.INIT = 16'hFF70;
  LUT4 id00033 (
    .ADR0(id00163),
    .ADR1(id00171),
    .ADR2(id00117),
    .ADR3(id00172),
    .O(\$0lcd_db[7:0][1] )
  );

  defparam id00034.INIT = 16'hEF00;
  LUT4 id00034 (
    .ADR0(id00169),
    .ADR1(id00100),
    .ADR2(id00170),
    .ADR3(id00174),
    .O(id00172)
  );

  defparam id00035.INIT = 16'hFF10;
  LUT4 id00035 (
    .ADR0(id00156),
    .ADR1(id00165),
    .ADR2(id00175),
    .ADR3(\cnt_lcd[5] ),
    .O(id00170)
  );

  defparam id00036.INIT = 4'h8;
  LUT2 id00036 (
    .ADR0(id00184),
    .ADR1(\cnt_lcd[1] ),
    .O(id00169)
  );

  defparam id00037.INIT = 8'h40;
  LUT3 id00037 (
    .ADR0(id00109),
    .ADR1(id00181),
    .ADR2(id00190),
    .O(id00163)
  );

  defparam id00038.INIT = 8'h0B;
  LUT3 id00038 (
    .ADR0(id00186),
    .ADR1(id00183),
    .ADR2(\cnt_lcd[5] ),
    .O(id00109)
  );

  defparam id00039.INIT = 8'h01;
  LUT3 id00039 (
    .ADR0(\cnt_lcd[3] ),
    .ADR1(\cnt_lcd[2] ),
    .ADR2(\cnt_lcd[4] ),
    .O(id00186)
  );

  defparam id00040.INIT = 16'h0F77;
  LUT4 id00040 (
    .ADR0(id00167),
    .ADR1(id00185),
    .ADR2(id00187),
    .ADR3(\cnt_lcd[5] ),
    .O(id00190)
  );

  defparam id00041.INIT = 16'h0100;
  LUT4 id00041 (
    .ADR0(\cnt_lcd[1] ),
    .ADR1(\cnt_lcd[2] ),
    .ADR2(\cnt_lcd[4] ),
    .ADR3(\cnt_lcd[3] ),
    .O(id00187)
  );

  defparam id00042.INIT = 8'h80;
  LUT3 id00042 (
    .ADR0(id00180),
    .ADR1(id00189),
    .ADR2(id00188),
    .O(id00171)
  );

  defparam id00043.INIT = 8'h07;
  LUT3 id00043 (
    .ADR0(id00164),
    .ADR1(id00158),
    .ADR2(id00137),
    .O(id00189)
  );

  defparam id00044.INIT = 16'h4000;
  LUT4 id00044 (
    .ADR0(\cnt_lcd[3] ),
    .ADR1(\cnt_lcd[5] ),
    .ADR2(\cnt_lcd[1] ),
    .ADR3(\cnt_lcd[4] ),
    .O(id00137)
  );

  defparam id00045.INIT = 16'hBDFF;
  LUT4 id00045 (
    .ADR0(\cnt_lcd[5] ),
    .ADR1(\cnt_lcd[1] ),
    .ADR2(\cnt_lcd[2] ),
    .ADR3(id00182),
    .O(id00188)
  );

  defparam id00046.INIT = 16'hFF70;
  LUT4 id00046 (
    .ADR0(id00138),
    .ADR1(id00140),
    .ADR2(id00117),
    .ADR3(id00139),
    .O(\$0lcd_db[7:0][2] )
  );

  defparam id00047.INIT = 16'hBF00;
  LUT4 id00047 (
    .ADR0(id00141),
    .ADR1(id00181),
    .ADR2(id00170),
    .ADR3(id00174),
    .O(id00139)
  );

  defparam id00048.INIT = 4'h4;
  LUT2 id00048 (
    .ADR0(\cnt_lcd[1] ),
    .ADR1(id00144),
    .O(id00141)
  );

  defparam id00049.INIT = 8'h10;
  LUT3 id00049 (
    .ADR0(\cnt_lcd[5] ),
    .ADR1(\cnt_lcd[3] ),
    .ADR2(\cnt_lcd[4] ),
    .O(id00144)
  );

  defparam id00050.INIT = 8'h80;
  LUT3 id00050 (
    .ADR0(id00142),
    .ADR1(id00143),
    .ADR2(id00133),
    .O(id00138)
  );

  defparam id00051.INIT = 8'hF1;
  LUT3 id00051 (
    .ADR0(id00176),
    .ADR1(id00173),
    .ADR2(\cnt_lcd[5] ),
    .O(id00142)
  );

  defparam id00052.INIT = 8'h3E;
  LUT3 id00052 (
    .ADR0(id00159),
    .ADR1(id00158),
    .ADR2(id00185),
    .O(id00143)
  );

  defparam id00053.INIT = 16'h0BFF;
  LUT4 id00053 (
    .ADR0(\cnt_lcd[1] ),
    .ADR1(id00182),
    .ADR2(id00187),
    .ADR3(\cnt_lcd[5] ),
    .O(id00133)
  );

  defparam id00054.INIT = 16'h4000;
  LUT4 id00054 (
    .ADR0(id00169),
    .ADR1(id00132),
    .ADR2(id00178),
    .ADR3(id00134),
    .O(id00140)
  );

  defparam id00055.INIT = 8'hF1;
  LUT3 id00055 (
    .ADR0(id00165),
    .ADR1(id00156),
    .ADR2(\cnt_lcd[5] ),
    .O(id00132)
  );

  defparam id00056.INIT = 16'h70FF;
  LUT4 id00056 (
    .ADR0(id00162),
    .ADR1(id00167),
    .ADR2(id00168),
    .ADR3(\cnt_lcd[5] ),
    .O(id00134)
  );

  defparam id00057.INIT = 16'hFF70;
  LUT4 id00057 (
    .ADR0(id00135),
    .ADR1(id00163),
    .ADR2(id00117),
    .ADR3(id00136),
    .O(\$0lcd_db[7:0][3] )
  );

  defparam id00058.INIT = 16'h0700;
  LUT4 id00058 (
    .ADR0(\cnt_lcd[3] ),
    .ADR1(id00164),
    .ADR2(id00179),
    .ADR3(id00151),
    .O(id00135)
  );

  defparam id00059.INIT = 16'hF5F3;
  LUT4 id00059 (
    .ADR0(id00184),
    .ADR1(id00144),
    .ADR2(\cnt_lcd[2] ),
    .ADR3(\cnt_lcd[1] ),
    .O(id00151)
  );

  defparam id00060.INIT = 16'hBF00;
  LUT4 id00060 (
    .ADR0(id00109),
    .ADR1(id00150),
    .ADR2(id00132),
    .ADR3(id00174),
    .O(id00136)
  );

  defparam id00061.INIT = 16'h0F57;
  LUT4 id00061 (
    .ADR0(id00184),
    .ADR1(\cnt_lcd[1] ),
    .ADR2(id00097),
    .ADR3(id00182),
    .O(id00150)
  );

  defparam id00062.INIT = 8'h4F;
  LUT3 id00062 (
    .ADR0(id00152),
    .ADR1(id00117),
    .ADR2(id00155),
    .O(\$0lcd_db[7:0][4] )
  );

  defparam id00063.INIT = 16'h4000;
  LUT4 id00063 (
    .ADR0(id00166),
    .ADR1(id00134),
    .ADR2(id00153),
    .ADR3(id00154),
    .O(id00152)
  );

  defparam id00064.INIT = 8'hF1;
  LUT3 id00064 (
    .ADR0(id00165),
    .ADR1(id00176),
    .ADR2(\cnt_lcd[5] ),
    .O(id00153)
  );

  defparam id00065.INIT = 8'h07;
  LUT3 id00065 (
    .ADR0(\cnt_lcd[5] ),
    .ADR1(id00156),
    .ADR2(id00137),
    .O(id00154)
  );

  defparam id00066.INIT = 8'h0D;
  LUT3 id00066 (
    .ADR0(id00174),
    .ADR1(id00151),
    .ADR2(id00146),
    .O(id00155)
  );

  defparam id00067.INIT = 8'h10;
  LUT3 id00067 (
    .ADR0(id00160),
    .ADR1(\cnt_lcd[5] ),
    .ADR2(id00174),
    .O(id00146)
  );

  defparam id00068.INIT = 16'hEFFB;
  LUT4 id00068 (
    .ADR0(\cnt_lcd[3] ),
    .ADR1(\cnt_lcd[1] ),
    .ADR2(\cnt_lcd[2] ),
    .ADR3(\cnt_lcd[4] ),
    .O(id00160)
  );

  defparam id00069.INIT = 16'hFF70;
  LUT4 id00069 (
    .ADR0(id00145),
    .ADR1(id00099),
    .ADR2(id00117),
    .ADR3(id00147),
    .O(\$0lcd_db[7:0][6] )
  );

  defparam id00070.INIT = 16'h7F00;
  LUT4 id00070 (
    .ADR0(id00177),
    .ADR1(id00132),
    .ADR2(id00150),
    .ADR3(id00174),
    .O(id00147)
  );

  defparam id00071.INIT = 8'h80;
  LUT3 id00071 (
    .ADR0(id00189),
    .ADR1(id00151),
    .ADR2(id00148),
    .O(id00145)
  );

  defparam id00072.INIT = 4'h7;
  LUT2 id00072 (
    .ADR0(id00167),
    .ADR1(\cnt_lcd[5] ),
    .O(id00148)
  );

  defparam id00073.INIT = 4'h6;
  LUT2 id00073 (
    .ADR0(\cnt_lcd[1] ),
    .ADR1(\net_Buf-pad-lcd_en ),
    .O(\$0cnt_lcd[6:0][1] )
  );

  defparam id00074.INIT = 8'h78;
  LUT3 id00074 (
    .ADR0(\cnt_lcd[1] ),
    .ADR1(\net_Buf-pad-lcd_en ),
    .ADR2(\cnt_lcd[2] ),
    .O(\$0cnt_lcd[6:0][2] )
  );

  defparam id00075.INIT = 8'h78;
  LUT3 id00075 (
    .ADR0(id00185),
    .ADR1(\net_Buf-pad-lcd_en ),
    .ADR2(\cnt_lcd[3] ),
    .O(\$0cnt_lcd[6:0][3] )
  );

  defparam id00076.INIT = 16'h7F80;
  LUT4 id00076 (
    .ADR0(id00185),
    .ADR1(\cnt_lcd[3] ),
    .ADR2(\net_Buf-pad-lcd_en ),
    .ADR3(\cnt_lcd[4] ),
    .O(\$0cnt_lcd[6:0][4] )
  );

  defparam id00077.INIT = 16'h7F80;
  LUT4 id00077 (
    .ADR0(id00167),
    .ADR1(id00185),
    .ADR2(\net_Buf-pad-lcd_en ),
    .ADR3(\cnt_lcd[5] ),
    .O(\$0cnt_lcd[6:0][5] )
  );

  defparam id00078.INIT = 8'h78;
  LUT3 id00078 (
    .ADR0(id00166),
    .ADR1(\net_Buf-pad-lcd_en ),
    .ADR2(\cnt_lcd[6] ),
    .O(\$0cnt_lcd[6:0][6] )
  );

  defparam id00079.INIT = 4'h1;
  LUT2 id00079 (
    .ADR0(\net_Buf-pad-rst_n ),
    .ADR1(\net_Buf-pad-rst_n ),
    .O(\net_Buf-pad-lcd_rst )
  );

  defparam id00080.INIT = 4'h1;
  LUT2 id00080 (
    .ADR0(\net_Buf-pad-lcd_en ),
    .ADR1(\net_Buf-pad-lcd_en ),
    .O(\$0cnt_lcd[6:0][0] )
  );

  defparam id00081.INIT = 16'h0C05;
  LUT4 id00081 (
    .ADR0(id00176),
    .ADR1(id00168),
    .ADR2(id00165),
    .ADR3(\cnt_lcd[5] ),
    .O(id00149)
  );

  defparam id00082.INIT = 16'hFF70;
  LUT4 id00082 (
    .ADR0(id00149),
    .ADR1(id00133),
    .ADR2(id00117),
    .ADR3(id00146),
    .O(\$0lcd_db[7:0][5] )
  );

  DFFRHQ id00083 (
    .D(\$0cnt_lcd[6:0][0] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\net_Buf-pad-lcd_en )
  );

  DFFRHQ id00084 (
    .D(\$0cnt_lcd[6:0][1] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\cnt_lcd[1] )
  );

  DFFRHQ id00085 (
    .D(\$0cnt_lcd[6:0][2] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\cnt_lcd[2] )
  );

  DFFRHQ id00086 (
    .D(\$0cnt_lcd[6:0][3] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\cnt_lcd[3] )
  );

  DFFRHQ id00087 (
    .D(\$0cnt_lcd[6:0][4] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\cnt_lcd[4] )
  );

  DFFRHQ id00088 (
    .D(\$0cnt_lcd[6:0][5] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\cnt_lcd[5] )
  );

  DFFRHQ id00089 (
    .D(\$0cnt_lcd[6:0][6] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\cnt_lcd[6] )
  );

  DFFRHQ id00090 (
    .D(\$0lcd_db[7:0][0] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\net_Buf-pad-lcd_db[0] )
  );

  DFFRHQ id00091 (
    .D(\$0lcd_db[7:0][1] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\net_Buf-pad-lcd_db[1] )
  );

  DFFRHQ id00092 (
    .D(\$0lcd_db[7:0][2] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\net_Buf-pad-lcd_db[2] )
  );

  DFFRHQ id00093 (
    .D(\$0lcd_db[7:0][3] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\net_Buf-pad-lcd_db[3] )
  );

  DFFRHQ id00094 (
    .D(\$0lcd_db[7:0][4] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\net_Buf-pad-lcd_db[4] )
  );

  DFFRHQ id00095 (
    .D(\$0lcd_db[7:0][5] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\net_Buf-pad-lcd_db[5] )
  );

  DFFRHQ id00096 (
    .D(\$0lcd_db[7:0][6] ),
    .CK(\net_IBuf-clkpad-clk ),
    .RN(\net_Buf-pad-rst_n ),
    .Q(\net_Buf-pad-lcd_db[6] )
  );

  CLKBUF \Buf-pad-clk  (
    .I(clk),
    .O(\net_Buf-pad-clk )
  );

  CLKBUF \IBuf-clkpad-clk  (
    .I(\net_Buf-pad-clk ),
    .O(\net_IBuf-clkpad-clk )
  );

  IBUF \Buf-pad-rst_n  (
    .I(rst_n),
    .O(\net_Buf-pad-rst_n )
  );

  IPAD clk_ipad (
    .PAD(clk)
  );

  IPAD rst_n_ipad (
    .PAD(rst_n)
  );

  OBUF \Buf-pad-lcd_db[7]  (
    .I(\net_Buf-pad-lcd_rw ),
    .O(lcd_db[7])
  );

  OBUF \Buf-pad-lcd_db[6]  (
    .I(\net_Buf-pad-lcd_db[6] ),
    .O(lcd_db[6])
  );

  OBUF \Buf-pad-lcd_db[5]  (
    .I(\net_Buf-pad-lcd_db[5] ),
    .O(lcd_db[5])
  );

  OBUF \Buf-pad-lcd_db[4]  (
    .I(\net_Buf-pad-lcd_db[4] ),
    .O(lcd_db[4])
  );

  OBUF \Buf-pad-lcd_db[3]  (
    .I(\net_Buf-pad-lcd_db[3] ),
    .O(lcd_db[3])
  );

  OBUF \Buf-pad-lcd_db[2]  (
    .I(\net_Buf-pad-lcd_db[2] ),
    .O(lcd_db[2])
  );

  OBUF \Buf-pad-lcd_db[1]  (
    .I(\net_Buf-pad-lcd_db[1] ),
    .O(lcd_db[1])
  );

  OBUF \Buf-pad-lcd_db[0]  (
    .I(\net_Buf-pad-lcd_db[0] ),
    .O(lcd_db[0])
  );

  OBUF \Buf-pad-lcd_en  (
    .I(\net_Buf-pad-lcd_en ),
    .O(lcd_en)
  );

  OBUF \Buf-pad-lcd_rs  (
    .I(\net_Buf-pad-lcd_rs ),
    .O(lcd_rs)
  );

  OBUF \Buf-pad-lcd_rst  (
    .I(\net_Buf-pad-lcd_rst ),
    .O(lcd_rst)
  );

  OBUF \Buf-pad-lcd_rw  (
    .I(\net_Buf-pad-lcd_rw ),
    .O(lcd_rw)
  );

  OPAD \lcd_db[7]_opad  (
    .PAD(lcd_db[7])
  );

  OPAD \lcd_db[6]_opad  (
    .PAD(lcd_db[6])
  );

  OPAD \lcd_db[5]_opad  (
    .PAD(lcd_db[5])
  );

  OPAD \lcd_db[4]_opad  (
    .PAD(lcd_db[4])
  );

  OPAD \lcd_db[3]_opad  (
    .PAD(lcd_db[3])
  );

  OPAD \lcd_db[2]_opad  (
    .PAD(lcd_db[2])
  );

  OPAD \lcd_db[1]_opad  (
    .PAD(lcd_db[1])
  );

  OPAD \lcd_db[0]_opad  (
    .PAD(lcd_db[0])
  );

  OPAD lcd_en_opad (
    .PAD(lcd_en)
  );

  OPAD lcd_rs_opad (
    .PAD(lcd_rs)
  );

  OPAD lcd_rst_opad (
    .PAD(lcd_rst)
  );

  OPAD lcd_rw_opad (
    .PAD(lcd_rw)
  );

  LOGIC_1 VCC (
    .LOGIC_1_PIN(\net_Buf-pad-lcd_rs )
  );

  LOGIC_0 GND (
    .LOGIC_0_PIN(\net_Buf-pad-lcd_rw )
  );
endmodule
