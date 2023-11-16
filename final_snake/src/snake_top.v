
module snake_top(// The top module of gluttonous snake
		 clk, rst_n, start, esc, up, down, left, right, mode, 
		LED_C, LED_R,
		sel, seg,
		lcd_en,
		lcd_rs, lcd_rw,lcd_db,lcd_rst

		 );

   input         clk;
   input 	 rst_n;
   input 	 start;
   input 	 esc;
   input 	 up;
   input 	 down;
   input 	 left;
   input 	 right;
   input [5:0] 	 mode;

   
   output [15:0] LED_C;
   output [15:0] LED_R;
    output wire [1:0] sel         ;  //数码管位选
    output wire [7:0] seg         ;   //数码管段选
    output lcd_en; // LED enable
    output lcd_rs; // register select
                        // 0 : write command register
                        // 1 : write data register
    output lcd_rw; // Read/Write Signal
                        // 0 : write
                        // 1 : No function
    output reg [7:0] lcd_db;
    output lcd_rst;

   wire [6:0] frequency;
   wire 	 clk_out;
   wire 	 eaten;
   wire [7:0] 	 food;
   wire 	 display_cover, display_start, display_over, display_win, display_game;
   wire [4:0] 	 snake_len;
   wire [4:0] 	score;
   wire [15:0] 	 snake_0, snake_1, snake_2, snake_3, snake_4, snake_5, snake_6, snake_7, snake_8, snake_9;
   wire [15:0] 	 LED_R1, LED_R2, LED_R3, LED_R4,
		 LED_R5, LED_R6, LED_R7, LED_R8,
		 LED_R9, LED_R10, LED_R11, LED_R12,
		 LED_R13, LED_R14, LED_R15, LED_R16;
   wire [15:0] 	 y1, y2, y3, y4, y5, y6, y7, y8,
		 y9, y10, y11, y12, y13, y14, y15, y16;
	wire [5:0]  LED;

   clk_gen clk_gen_inst(//use to lower the frequency of the clock
			.clk_out	(clk_out),
			.LED		(LED[5:0]),
			.frequency	(frequency[6:0]),
			.clk		(clk),
			.rst_n		(rst_n),
			.mode		(mode[5:0]));


	top_clock top_clock_inst(//control the output of lcd and Nixie Tube
		.clk(clk),
		.rst_n(rst_n),
		.sel(sel),
		.seg(seg),
		.lcd_en(lcd_en),
		.lcd_rs(lcd_rs),
		.lcd_rw(lcd_rw),
		.lcd_db(lcd_db),
		.lcd_rst(lcd_rst)
	);

   random random_inst(// create the random food from the matrix
		      .dout1		(food[7:4]),
		      .dout2		(food[3:0]),
		      .clk_out		(clk_out),
		      .rst_n		(rst_n),
		      .eaten		(eaten));
   
   snake_ctrl snake_ctrl_inst(//repond to the input and control the snake info
				  .score		(score),
			      .eaten		(eaten),
			      .display_cover	(display_cover),
			      .display_start	(display_start),
			      .display_over	(display_over),
			      .display_win	(display_win),
			      .display_game	(display_game),
			      .snake_len	(snake_len[4:0]),
			      .snake_0		(snake_0[7:0]),
			      .snake_1		(snake_1[7:0]),
			      .snake_2		(snake_2[7:0]),
			      .snake_3		(snake_3[7:0]),
			      .snake_4		(snake_4[7:0]),
			      .snake_5		(snake_5[7:0]),
			      .snake_6		(snake_6[7:0]),
			      .snake_7		(snake_7[7:0]),
			      .snake_8		(snake_8[7:0]),
			      .snake_9		(snake_9[7:0]),
				  .frequency	(frequency),
			      .clk_out		(clk_out),
			      .rst_n		(rst_n),
			      .start		(start),
			      .esc		(esc),
			      .up		(up),
			      .down		(down),
			      .left		(left),
			      .right		(right),
			      .food		(food[7:0]));

   display_process display_process_inst(/*AUTOINST*/
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
					.clk		(clk),
					.rst_n		(rst_n),
					.food		(food[7:0]),
					.display_game	(display_game),
					.snake_len	(snake_len[4:0]),
					.snake_0	(snake_0[7:0]),
					.snake_1	(snake_1[7:0]),
					.snake_2	(snake_2[7:0]),
					.snake_3	(snake_3[7:0]),
					.snake_4	(snake_4[7:0]),
					.snake_5	(snake_5[7:0]),
					.snake_6	(snake_6[7:0]),
					.snake_7	(snake_7[7:0]),
					.snake_8	(snake_8[7:0]),
					.snake_9	(snake_9[7:0]));

   display_mux display_mux_inst(//display start, end and the process of the game
				.LED_R1		(LED_R1[15:0]),
				.LED_R2		(LED_R2[15:0]),
				.LED_R3		(LED_R3[15:0]),
				.LED_R4		(LED_R4[15:0]),
				.LED_R5		(LED_R5[15:0]),
				.LED_R6		(LED_R6[15:0]),
				.LED_R7		(LED_R7[15:0]),
				.LED_R8		(LED_R8[15:0]),
				.LED_R9		(LED_R9[15:0]),
				.LED_R10	(LED_R10[15:0]),
				.LED_R11	(LED_R11[15:0]),
				.LED_R12	(LED_R12[15:0]),
				.LED_R13	(LED_R13[15:0]),
				.LED_R14	(LED_R14[15:0]),
				.LED_R15	(LED_R15[15:0]),
				.LED_R16	(LED_R16[15:0]),
				.clk		(clk),
				.display_cover	(display_cover),
				.display_start	(display_start),
				.display_over	(display_over),
				.display_win	(display_win),
				.display_game	(display_game),
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
				.y16		(y16[15:0]));

   LED_driver LED_driver_inst(
			      .LED_R		(LED_R[15:0]),// Use to drive the 16 * 16 led Matrix
			      .LED_C		(LED_C[15:0]),
			      .clk		(clk),
			      .rst_n		(rst_n),
			      .LED_R1		(LED_R1[15:0]),
			      .LED_R2		(LED_R2[15:0]),
			      .LED_R3		(LED_R3[15:0]),
			      .LED_R4		(LED_R4[15:0]),
			      .LED_R5		(LED_R5[15:0]),
			      .LED_R6		(LED_R6[15:0]),
			      .LED_R7		(LED_R7[15:0]),
			      .LED_R8		(LED_R8[15:0]),
			      .LED_R9		(LED_R9[15:0]),
			      .LED_R10		(LED_R10[15:0]),
			      .LED_R11		(LED_R11[15:0]),
			      .LED_R12		(LED_R12[15:0]),
			      .LED_R13		(LED_R13[15:0]),
			      .LED_R14		(LED_R14[15:0]),
			      .LED_R15		(LED_R15[15:0]),
			      .LED_R16		(LED_R16[15:0]));



endmodule // snake_top

   