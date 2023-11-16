module decoder(// Inputs
	       clk, rst_n, clr, decoder_in,
	       // Outputs
	       y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16
	       );
   
   input       clk;
   input       rst_n;
   input       clr;
   input [7:0] decoder_in;
   
   output [15:0] y1, y2, y3, y4, y5, y6, y7, y8,
		 y9, y10, y11, y12, y13, y14, y15, y16;

   /*AUTOREG*/
   // Beginning of automatic regs (for this module's undeclared outputs)
   reg [15:0]		y1;
   reg [15:0]		y10;
   reg [15:0]		y11;
   reg [15:0]		y12;
   reg [15:0]		y13;
   reg [15:0]		y14;
   reg [15:0]		y15;
   reg [15:0]		y16;
   reg [15:0]		y2;
   reg [15:0]		y3;
   reg [15:0]		y4;
   reg [15:0]		y5;
   reg [15:0]		y6;
   reg [15:0]		y7;
   reg [15:0]		y8;
   reg [15:0]		y9;
   // End of automatics

   wire [15:0] 	 shift;
   
   assign shift = 16'b0000_0000_0000_0001 << (decoder_in[7:4]);

   always @(posedge clk or negedge rst_n)
     begin
	if(!rst_n)
	  begin
	     y1 <=16'h0000;	    
	     y2 <=16'h0000;		
	     y3 <=16'h0000;		
	     y4 <=16'h0000;
         y5 <=16'h0000;	    
	     y6 <=16'h0000;		
	     y7 <=16'h0000;		
	     y8 <=16'h0000;
         y9 <=16'h0000;	    
	     y10 <=16'h0000;		
	     y11 <=16'h0000;		
	     y12 <=16'h0000;
         y13 <=16'h0000;	    
	     y14 <=16'h0000;		
	     y15 <=16'h0000;		
	     y16 <=16'h0000;
	  end // if (!rst_n)
	else if(clr)
	  begin
	     y1 <=16'h0000;	    
	     y2 <=16'h0000;		
	     y3 <=16'h0000;		
	     y4 <=16'h0000;
         y5 <=16'h0000;	    
	     y6 <=16'h0000;		
	     y7 <=16'h0000;		
	     y8 <=16'h0000;
         y9 <=16'h0000;	    
	     y10 <=16'h0000;		
	     y11 <=16'h0000;		
	     y12 <=16'h0000;
         y13 <=16'h0000;	    
	     y14 <=16'h0000;		
	     y15 <=16'h0000;		
	     y16 <=16'h0000;
	  end // if (clr)
	else begin
	     case(decoder_in[3:0])
	      	4'b0000: y16 <= y16 | shift;
    		4'b0001: y15 <= y15 | shift; 
    	    4'b0010: y14 <= y14 | shift; 
    	    4'b0011: y13 <= y13 | shift; 
    	    4'b0100: y12 <= y12 | shift; 
    	    4'b0101: y11 <= y11 | shift; 
    	    4'b0110: y10 <= y10 | shift; 
    	    4'b0111: y9 <= y9 | shift; 
    	    4'b1000: y8 <= y8 | shift; 
    	    4'b1001: y7 <= y7 | shift; 
    	    4'b1010: y6 <= y6 | shift; 
    	    4'b1011: y5 <= y5 | shift; 
    	    4'b1100: y4 <= y4 | shift; 
    	    4'b1101: y3 <= y3 | shift; 
    	    4'b1110: y2 <= y2 | shift; 
    	    4'b1111: y1 <= y1 | shift;
	       default:
		 begin
		    y1 <=16'h0000;	    
		    y2 <=16'h0000;		
		    y3 <=16'h0000;		
		    y4 <=16'h0000;
		    y5 <=16'h0000;	    
		    y6 <=16'h0000;		
		    y7 <=16'h0000;		
		    y8 <=16'h0000;
		    y9 <=16'h0000;	    
		    y10 <=16'h0000;		
		    y11 <=16'h0000;		
		    y12 <=16'h0000;
		    y13 <=16'h0000;	    
		    y14 <=16'h0000;		
		    y15 <=16'h0000;	
		    y16 <=16'h0000;
		 end
	     endcase // case (decoder_in[3:0])
	  end // else: !if(!rst_n)
     end // always @ (posedge clk or negedge rst_n)

endmodule // decoder

	
	
	       