module display_mux(
		   clk, display_cover, display_start, display_over, display_win, display_game, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
		 
		   LED_R1, LED_R2, LED_R3, LED_R4, LED_R5, LED_R6, LED_R7, LED_R8, LED_R9, LED_R10, LED_R11, LED_R12, LED_R13, LED_R14, LED_R15, LED_R16
		   );

   input        clk;
   input 	display_cover;
   input 	display_start;
   input 	display_over;
   input 	display_win;
   input 	display_game;
   input [15:0] y1, y2, y3, y4, y5, y6, y7, y8,
		y9, y10, y11, y12, y13, y14, y15, y16;

   output [15:0] LED_R1, LED_R2, LED_R3, LED_R4,
		 LED_R5, LED_R6, LED_R7, LED_R8,
		 LED_R9, LED_R10, LED_R11, LED_R12,
		 LED_R13, LED_R14, LED_R15, LED_R16;


   reg [15:0]		LED_R1;
   reg [15:0]		LED_R10;
   reg [15:0]		LED_R11;
   reg [15:0]		LED_R12;
   reg [15:0]		LED_R13;
   reg [15:0]		LED_R14;
   reg [15:0]		LED_R15;
   reg [15:0]		LED_R16;
   reg [15:0]		LED_R2;
   reg [15:0]		LED_R3;
   reg [15:0]		LED_R4;
   reg [15:0]		LED_R5;
   reg [15:0]		LED_R6;
   reg [15:0]		LED_R7;
   reg [15:0]		LED_R8;
   reg [15:0]		LED_R9;
 

   always @(posedge clk)
     begin
	if(display_game) begin
	   LED_R1 <= y1;
	   LED_R2 <= y2;
	   LED_R3 <= y3;
	   LED_R4 <= y4;
	   LED_R5 <= y5;
	   LED_R6 <= y6;
	   LED_R7 <= y7;
	   LED_R8 <= y8;
	   LED_R9 <= y9;
	   LED_R10 <= y10;
	   LED_R11 <= y11;
	   LED_R12 <= y12;
	   LED_R13 <= y13;
	   LED_R14 <= y14;
	   LED_R15 <= y15;
	   LED_R16 <= y16;
	end // if (display_game)
	else if(display_cover)
	  begin
	     LED_R1 <= 16'hffff;
	     LED_R2 <= 16'hffff;
	     LED_R3 <= 16'h0003;
	     LED_R4 <= 16'h0003;
	     LED_R5 <= 16'h0003;
	     LED_R6 <= 16'h0003;
	     LED_R7 <= 16'h0003;
	     LED_R8 <= 16'hffff;
	     LED_R9 <= 16'hffff;
	     LED_R10 <= 16'hc000;
	     LED_R11 <= 16'hc000;
	     LED_R12 <= 16'hc000;
	     LED_R13 <= 16'hc000;
	     LED_R14 <= 16'hc000;
	     LED_R15 <= 16'hffff;
	     LED_R16 <= 16'hffff;
	  end // if (display_cover)
	else if(display_start)
	  begin
	     LED_R1 <= 16'h0000;
	     LED_R2 <= 16'h0000;
	     LED_R3 <= 16'h1c3c;
	     LED_R4 <= 16'h2222;
	     LED_R5 <= 16'h4122;
	     LED_R6 <= 16'h4101;
	     LED_R7 <= 16'h4101;
	     LED_R8 <= 16'h4101;
	     LED_R9 <= 16'h4171;
	     LED_R10 <= 16'h4121;
	     LED_R11 <= 16'h4122;
	     LED_R12 <= 16'h2222;
	     LED_R13 <= 16'h1c1c;
	     LED_R14 <= 16'h0000;
	     LED_R15 <= 16'h0000;
	     LED_R16 <= 16'h0000;
	  end 
	else if(display_over)
	  begin
	     LED_R1 <= 16'h0000;
 	     LED_R2 <= 16'h0000;	
	     LED_R3 <= 16'h3c3c;	
	     LED_R4 <= 16'h4242;
	     LED_R5 <= 16'h4242; 
	     LED_R6 <= 16'h4242;	
	     LED_R7 <= 16'h2424;	
	     LED_R8 <= 16'h1818;
	     LED_R9 <= 16'h2424; 
	     LED_R10 <= 16'h4242;	
	     LED_R11 <= 16'h4242;	
	     LED_R12 <= 16'h4242;
	     LED_R13 <= 16'h3c3c; 
	     LED_R14 <= 16'h0000;	
	     LED_R15 <= 16'h0000;	
	     LED_R16 <= 16'h0000;
	  end // if (display_over)
	else if(display_win)
	  begin
	     LED_R1 <= 16'h0000;
	     LED_R2 <= 16'h0000;
	     LED_R3 <= 16'h4bd2;
	     LED_R4 <= 16'h4a52;
	     LED_R5 <= 16'h4a4c;
	     LED_R6 <= 16'h4a4c;
	     LED_R7 <= 16'h33cc;
	     LED_R8 <= 16'h0000;
	     LED_R9 <= 16'h0000;
	     LED_R10 <= 16'h8bd5;
	     LED_R11 <= 16'h9995;
	     LED_R12 <= 16'ha995;
	     LED_R13 <= 16'hc98a;
	     LED_R14 <= 16'h8bca;	
	     LED_R15 <= 16'h0000;	
	     LED_R16 <= 16'h0000;
	  end // if (display_win)
	else ;
/* -----\/----- EXCLUDED -----\/-----
	else
	  begin
	     LED_R1 <= 16'h0000;
	     LED_R2 <= 16'h0000;
	     LED_R3 <= 16'h0000;
	     LED_R4 <= 16'h0000;
	     LED_R5 <= 16'h0000;
	     LED_R6 <= 16'h0000;
	     LED_R7 <= 16'h0000;
	     LED_R8 <= 16'h0000;
	     LED_R9 <= 16'h0000;
	     LED_R10 <= 16'h0000;
	     LED_R11 <= 16'h0000;
	     LED_R12 <= 16'h0000;
	     LED_R13 <= 16'h0000;
	     LED_R14 <= 16'h0000;	
	     LED_R15 <= 16'h0000;	
	     LED_R16 <= 16'h0000;
	  end	     
 -----/\----- EXCLUDED -----/\----- */
     end // always @ (posedge clk)

endmodule // display_mux
