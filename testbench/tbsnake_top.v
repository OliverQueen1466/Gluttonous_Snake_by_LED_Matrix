`timescale 1 ns/ 1 ps
module tbsnake_top;
      
   reg         clk;
   reg 	 rst_n;
   wire 	 start;
   wire 	 esc;
   wire 	 up;
   wire 	 down;
   wire 	 left;
   wire 	 right;
   wire [5:0] 	 mode;

   
   wire [15:0] LED_C;
   wire [15:0] LED_R;
   wire  [1:0] sel         ;  //数码管位选
   wire  [7:0] seg         ;   //数码管段选
   wire lcd_en; // LED enable
   wire lcd_rs; // register select
                        // 0 : write command register
                        // 1 : write data register
   wire lcd_rw; // Read/Write Signal
                        // 0 : write
                        // 1 : No function
   reg [7:0] lcd_db;
    wire lcd_rst;
snake_top   test(		 clk, rst_n, start, esc, up, down, left, right, mode, 
		LED_C, LED_R,
		sel, seg,
		lcd_en,
		lcd_rs, lcd_rw,lcd_db,lcd_rst);
    
       always #10 clk=~clk;
       initial
       begin
          clk=0;
          reset=1;    
          start=0;
          up=0;
          down=0;
          right=0;
          left=0;
          esc=0;
          #10 reset=0;
          #1000 reset=1;
          #4000 start=1;
          #500 start=0;
          
          #1000000 $stop();
       end
       initial 
       begin
          #180000 right=1;
          #5000 right=0;
       end
       initial 
       begin
          #340000 down=1;
          #5000 down=0;
       end
       initial 
       begin
          #514000 left=1;
          #5000 left=0;
       end
       initial 
       begin
          #624000 esc=1;
          #5000 esc=0;
       end
       /*initial 
       begin
          #430000 esc=1;
          #5000 esc=0;
       end*/
          endmodule
