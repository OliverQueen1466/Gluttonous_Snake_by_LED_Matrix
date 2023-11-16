

module random(// Inputs
	      clk_out, rst_n, eaten,
	      // Outputs
	      dout1, dout2
	      );

   input        clk_out;
   input 	rst_n;
   input 	eaten;

   output [3:0] dout1;
   output [3:0] dout2;

   reg [3:0]		dout1;
   reg [3:0]		dout2;
   // End of automatics

   reg [3:0] 	count;

	wire 	clk;
   assign clk = clk_out;
   
   always @(posedge clk or negedge rst_n)
     begin
	if(!rst_n)
	  count <= 'd0;
	else if(eaten)
	  begin
	     if(count == 'd8)
	       count <= 'd0;
	     else
	       count <= count + 1;
	  end
	else ;
     end // always @ (posedge clk or negedge rst_n)

   always @(count)
     begin
	case(count)
	  0: {dout1,dout2}=8'hb2;
	  1: {dout1,dout2}=8'h78;
	  2: {dout1,dout2}=8'hea;
	  3: {dout1,dout2}=8'h34;
	  4: {dout1,dout2}=8'h73;
	  5: {dout1,dout2}=8'h41;
	  6: {dout1,dout2}=8'h12;
	  7: {dout1,dout2}=8'h58;
	  8: {dout1,dout2}=8'h74;
	  default:{dout1,dout2}=8'h4b;
	endcase // case (count)
     end // always @ (count)

endmodule // random
