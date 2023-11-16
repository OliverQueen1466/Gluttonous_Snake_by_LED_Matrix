module display(
 input clk,
 input rst_n,
 output lcd_en, // LED enable
 output lcd_rs, // register select
                        // 0 : write command register
                        // 1 : write data register
 output lcd_rw, // Read/Write Signal
                        // 0 : write
                        // 1 : No function
 output reg [7:0] lcd_db,
 output lcd_rst);
 
 reg  [7:0] tmp1;
 reg  [7:0] tmp2;
 reg  [6:0] cnt_lcd; 
 wire  rst;
// ------------
// Text LCD Main Circuit
// ------------

assign rst = ~rst_n;
assign lcd_rw = 1'b0;
assign lcd_rs = 1'b1;
assign lcd_rst = rst;
assign lcd_en = cnt_lcd[0];

always @(posedge clk or posedge rst)
   if (rst) lcd_db <= 0;
   else if (lcd_en & cnt_lcd[6]) lcd_db <= tmp1;
   else if (lcd_en & ~cnt_lcd[6]) lcd_db <= tmp2;
   else lcd_db <= 0;
       
always @(posedge clk or posedge rst)
   if (rst) cnt_lcd <= 0;
   else  cnt_lcd <= cnt_lcd + 1;
      

always @(cnt_lcd)
   case(cnt_lcd[5:1])
   'h0 : tmp1 = 'h0A;    // *
   'h1 : tmp1 = 'h0A;    // *
   'h2 : tmp1 = 'h00;    // space
   'h3 : tmp1 = 'h24;    // D
   'h4 : tmp1 = 'h41;    // a
   'h5 : tmp1 = 'h4D;    // m
   'h6 : tmp1 = 'h4E;    // n
   'h7 : tmp1 = 'h01;    // !
   'h8 : tmp1 = 'h00;    // space
   'h9 : tmp1 = 'h00;    // space
   'hA : tmp1 = 'h22;    // B
   'hB : tmp1 = 'h52;  // r
   'hC : tmp1 = 'h4F;  // o
   'hD : tmp1 = 'h00;    // space
   'hE : tmp1 = 'h0A;    // *
   'hF : tmp1 = 'h0A;    // *
   'h10 : tmp1 = 'h2D;  // M
   'h11 : tmp1 = 'h41; // a
   'h12 : tmp1 = 'h58; // x
   'h13 : tmp1 = 'h00; // space
   'h14 : tmp1 = 'h54; // t
   'h15 : tmp1 = 'h49; // i
   'h16 : tmp1 = 'h4D; // m
   'h17 : tmp1 = 'h45; // e
   'h18 : tmp1 = 'h00; // space
   'h19 : tmp1 = 'h52; // r
   'h1A : tmp1 = 'h45; // e
   'h1B : tmp1 = 'h41; // a
   'h1C : tmp1 = 'h43; // c
   'h1D : tmp1 = 'h48; // h
   'h1E : tmp1 = 'h45; // e
   'h1F : tmp1 = 'h44; // d
   default : tmp1 = 'h00;
   endcase


always @(cnt_lcd)
   case(cnt_lcd[5:1])
   'h0 : tmp2 = 'h0B; // *
   'h1 : tmp2 = 'h0B; // *
   'h2 : tmp2 = 'h27; // G
   'h3 : tmp2 = 'h45; // e
   'h4 : tmp2 = 'h54; // t
   'h5 : tmp2 = 'h00; // space
   'h6 : tmp2 = 'h53; // s
   'h7 : tmp2 = 'h4F; // o
   'h8 : tmp2 = 'h4D; // m
   'h9 : tmp2 = 'h45; // e
   'hA : tmp2 = 'h00; // space
   'hB : tmp2 = 'h52; // r
   'hC : tmp2 = 'h45; // e
   'hD : tmp2 = 'h53; // s
   'hE : tmp2 = 'h54; // t
   'hF : tmp2 = 'h0B; // * 
   'h10 : tmp2 = 'h0B; // *  
   default : tmp2 = 'h00;
   endcase
             
endmodule
