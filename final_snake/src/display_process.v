module display_process(// Inputs
		    clk, rst_n, food, display_game, snake_len, snake_0, snake_1, snake_2, snake_3, snake_4, snake_5, snake_6, snake_7, snake_8, snake_9,
		    // Outputs
		    y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16
		    );
   input       clk;
   input       rst_n;
   input [7:0] food;
   input       display_game;
   input [4:0] snake_len;
   input [7:0] snake_0, snake_1, snake_2, snake_3, snake_4,
	       snake_5, snake_6, snake_7, snake_8, snake_9;

   output [15:0] y1, y2, y3, y4, y5, y6, y7, y8,
		 y9, y10, y11, y12, y13, y14, y15, y16;



   reg 		 display_game_d;
   reg [7:0] 	 decoder_in; 
   // decoder_in: A position info, high 4 present ordinate, low 4 present abscissa
   reg [4:0] 	 count;
   wire 	 clr;
   wire [15:0] 	 y1, y2, y3, y4, y5, y6, y7, y8,
		 y9, y10, y11, y12, y13, y14, y15, y16;

   always @(posedge clk)
     display_game_d <= display_game;

   assign clr = display_game & ~display_game_d;
	// clr = display_game's posedge
   always @(posedge clk)
     begin
	if(!rst_n)
	  count <= 'd0;
	else if(display_game && count == snake_len)
	  count	<= 'd0; // finish decoding
	else if(display_game && count != snake_len)
	  count <= count + 'd1;
	else ;
     end

   always @(posedge clk)
     begin
	if(display_game)
	  case(count)
	    5'b00000: decoder_in <= food;
	    5'b00001: decoder_in <= snake_0;
	    5'b00010: decoder_in <= snake_1;
	    5'b00011: decoder_in <= snake_2;
	    5'b00100: decoder_in <= snake_3;
	    5'b00101: decoder_in <= snake_4;
	    5'b00110: decoder_in <= snake_5;
	    5'b00111: decoder_in <= snake_6;
	    5'b01000: decoder_in <= snake_7;
	    5'b01001: decoder_in <= snake_8;
	    5'b01010: decoder_in <= snake_9;
	    default: decoder_in	<= snake_0;
	  endcase // case (count)
     end // always @ (posedge clk)

	// always @(posedge clk) 
	// begin

		
	// end


   decoder decoder_inst(/*AUTOINST*/    // delay: ONE cycle
			// Outputs
			.y1		(y1[15:0]),
			.y2		(y2[15:0]),
			.y3		(y3[15:0]),
			.y4		(y4[15:0]),
			.y5		(y5[15:0]),
			.y6		(y6[15:0]),
			.y7		(y7[15:0]),
			.y8		(y8[15:0]),
			.y9		(y9[15:0]),
			.y10		(y10[15:0]),
			.y11		(y11[15:0]),
			.y12		(y12[15:0]),
			.y13		(y13[15:0]),
			.y14		(y14[15:0]),
			.y15		(y15[15:0]),
			.y16		(y16[15:0]),
			// Inputs
			.clk		(clk),
			.rst_n		(rst_n),
			.clr		(clr),
			.decoder_in	(decoder_in[7:0]));

endmodule // display_process
