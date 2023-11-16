
module LED_driver(// Inputs
		  clk, rst_n, LED_R1, LED_R2, LED_R3, LED_R4, LED_R5, LED_R6, LED_R7, LED_R8, LED_R9, LED_R10, LED_R11, LED_R12, LED_R13, LED_R14, LED_R15, LED_R16,
		  // Outputs
		  LED_R, LED_C
		  );

   input        clk;
   input 	rst_n;
   input [15:0] LED_R1, LED_R2, LED_R3, LED_R4,
		LED_R5, LED_R6, LED_R7, LED_R8,
		LED_R9, LED_R10, LED_R11, LED_R12,
		LED_R13, LED_R14, LED_R15, LED_R16;

   output [15:0] LED_R;
   output [15:0] LED_C;

   reg [15:0]		LED_C;
   reg [15:0]		LED_R;
   // End of automatics

   reg [3:0] 	 count;

  //  wire [15:0] 	 LED_RT [15:0];
  //  assign LED_RT[0] = LED_R1;
  //  assign LED_RT[1] = LED_R2;
  //  assign LED_RT[2] = LED_R3;
  //  assign LED_RT[3] = LED_R4;
  //  assign LED_RT[4] = LED_R5;
  //  assign LED_RT[5] = LED_R6;
  //  assign LED_RT[6] = LED_R7;
  //  assign LED_RT[7] = LED_R8;
  //  assign LED_RT[8] = LED_R9;
  //  assign LED_RT[9] = LED_R10;
  //  assign LED_RT[10] = LED_R11;
  //  assign LED_RT[11] = LED_R12;
  //  assign LED_RT[12] = LED_R13;
  //  assign LED_RT[13] = LED_R14;
  //  assign LED_RT[14] = LED_R15;
  //  assign LED_RT[15] = LED_R16;

   always @(posedge clk or negedge rst_n)
     begin
	if(!rst_n)
	  count <= 'd0;
	else
	  count <= count + 'd1;
     end

   always @(posedge clk or negedge rst_n)
     begin
	if(!rst_n)
	  begin
	     LED_R <= 'd0;
	     LED_C <= 'd0;

	  end
	else begin
	  //  LED_R <= (1<<(count));
	  //  LED_C <= LED_RT[count];
    case (count)
      4'd0: begin
        LED_R <= 16'b0000_0000_0000_0001;
        LED_C <= LED_R1;
      end
      4'd1: begin
        LED_R <= 16'b0000_0000_0000_0010;
        LED_C <= LED_R2;
      end
      4'd2: begin
        LED_R <= 16'b0000_0000_0000_0100;
        LED_C <= LED_R3;
      end
      4'd3: begin
        LED_R <= 16'b0000_0000_0000_1000;
        LED_C <= LED_R4;
      end
      4'd4: begin
        LED_R <= 16'b0000_0000_0001_0000;
        LED_C <= LED_R5;
      end
      4'd5: begin
        LED_R <= 16'b0000_0000_0010_0000;
        LED_C <= LED_R6;
      end
      4'd6: begin
        LED_R <= 16'b0000_0000_0100_0000;
        LED_C <= LED_R7;
      end
      4'd7: begin
        LED_R <= 16'b0000_0000_1000_0000;
        LED_C <= LED_R8;
      end
      4'd8: begin
        LED_R <= 16'b0000_0001_0000_0000;
        LED_C <= LED_R9;
      end
      4'd9: begin
        LED_R <= 16'b0000_0010_0000_0000;
        LED_C <= LED_R10;
      end
      4'd10: begin
        LED_R <= 16'b0000_0100_0000_0000;
        LED_C <= LED_R11;
      end
      4'd11: begin
        LED_R <= 16'b0000_1000_0000_0000;
        LED_C <= LED_R12;
      end
      4'd12: begin
        LED_R <= 16'b0001_0000_0000_0000;
        LED_C <= LED_R13;
      end
      4'd13: begin
        LED_R <= 16'b0010_0000_0000_0000;
        LED_C <= LED_R14;
      end
      4'd14: begin
        LED_R <= 16'b0100_0000_0000_0000;
        LED_C <= LED_R15;
      end
      4'd15: begin
        LED_R <= 16'b1000_0000_0000_0000;
        LED_C <= LED_R16;
      end
      default:  begin
        LED_R <= 16'b0001;
        LED_C <= 16'h0001;
      end
    endcase
	end
     end // always @ (posedge clk or negedge rst_n)

endmodule // LED_driver
