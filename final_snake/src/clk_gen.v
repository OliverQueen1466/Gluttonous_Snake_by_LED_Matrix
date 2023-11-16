module clk_gen(
	       clk, rst_n, mode,
	       clk_out, LED, frequency,
	       );

   input        clk;
   input 	rst_n;
   input [5:0]	mode;

   output 	clk_out;
   output [5:0] LED;
   output [6:0] frequency;
   reg [5:0]		LED;
   reg			clk_out;
   reg [6:0]  frequency;  
   reg [6:0] 	count;


    always @(*) begin
      case (mode)
        'b000000: frequency = 100;  // delay: 1s
        'b000001: frequency = 80; 
        'b000010: frequency = 70; 
        'b000100: frequency = 60; 
        'b001000: frequency = 50; 
        'b010000: frequency = 40; 
        'b100000: frequency = 25;   //delay: 250ms
        default: frequency = 100;
      endcase
      
    end
   always @(posedge clk)
     LED <= mode;

   always @(posedge clk or negedge rst_n)      
     begin
	if(!rst_n)
	  count <= 'd0;
	else if(count == 'd3)
	  count <= 'd0;
	else
	  count <= count +'d1;
     end
   
   always @(posedge clk or negedge rst_n)      
     begin
	if(!rst_n)
	  clk_out <= 1'b0;
	else if(count == 'd3)
	  clk_out <= ~clk_out;    // clk_out: clk/8
	else
	  clk_out <= clk_out;
     end

endmodule // clk_gen