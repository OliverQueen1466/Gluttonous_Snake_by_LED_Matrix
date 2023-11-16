`timescale 1ns/10ps

module snake_ctrl(
		  clk_out, rst_n, start, esc, up, down, left, right, food, frequency,
		  eaten, display_cover, display_start, display_over, display_win, display_game, 
		  snake_len, snake_0, snake_1, snake_2, snake_3, snake_4, snake_5, snake_6, snake_7, snake_8, snake_9,
		  score);
   input [6:0]	frequency;
   input       clk_out;
   input       rst_n;
   input       start;
   input       esc;
   input       up, down, left, right;
   input [7:0] food;

   output [4:0]	score;
   output      eaten;
   output      display_cover;
   output      display_start;
   output      display_over;
   output      display_win;      
   output      display_game;
   output [4:0] snake_len;
   output [7:0] snake_0, snake_1, snake_2, snake_3, snake_4,
		snake_5, snake_6, snake_7, snake_8, snake_9;

   reg			display_cover;
   reg			display_game;
   reg			display_over;
   reg			display_start;
   reg			display_win;
   reg			eaten;
   reg [7:0]		snake_0;
   reg [7:0]		snake_1;
   reg [7:0]		snake_2;
   reg [7:0]		snake_3;
   reg [7:0]		snake_4;
   reg [7:0]		snake_5;
   reg [7:0]		snake_6;
   reg [7:0]		snake_7;
   reg [7:0]		snake_8;
   reg [7:0]		snake_9;
   reg [4:0]		snake_len;
   reg [4:0]		score;

   reg 			over;
   reg [1:0] 		snake_direction;
   reg [2:0] 		curr_state;
   reg [2:0] 		next_state;
   reg [6:0]		count_wait;

   parameter IDLE = 3'b000;
   parameter START = 3'b001;
   parameter DISPLAY_GAME = 3'b011;
   parameter MOVE = 3'b010;
   parameter CHECK = 3'b110;
   parameter GET_POINT = 3'b100;
   parameter OVER = 3'b111;
   parameter WIN = 3'b101;
	// parameter WAIT = 3'b110;

	// assign score = (snake_len == 0)? 0 : snake_len - 3;

   wire 		clk;
   assign clk = clk_out;
   
   always @(posedge clk or negedge rst_n)
     begin
	if(!rst_n)
	  curr_state <= IDLE;
	else 
	  curr_state <= next_state;
     end

//********************************
//time counter when DISPLAY_GAME, for waiting to recieve player's operate
   always @(posedge clk or negedge rst_n)
     begin
	if(!rst_n)
	  count_wait <= 'd0;
	else if(curr_state == MOVE)
	  count_wait	<= 'd0;
	else if(curr_state == DISPLAY_GAME)
	  count_wait <= count_wait + 'd1;
	else ;
     end

//********************************
// state contorl
//********************************
   always @(*) begin
     next_state = 3'bxxx;
	case (curr_state)
	  IDLE:
	    if(start)
	      next_state = START;
	    else 
	      next_state = IDLE;
	  START:
	    next_state = DISPLAY_GAME;
	  DISPLAY_GAME:
	    if(over)
	      next_state = OVER;
	    else if(count_wait == frequency) // set frequency to change the speed of snake
			next_state = MOVE;
		else 
			next_state = DISPLAY_GAME;
	  MOVE:
	  	next_state = CHECK;
	    // if (MOVE_DONE) 
		// 	next_state = CHECK;
		// else
		// 	next_state = MOVE;
	  CHECK:
	      if (snake_len == 10) begin
			  next_state = WIN;
		  end
		  else 
		  	next_state = DISPLAY_GAME;
	//   GET_POINT:
	//     if(snake_len == 'd10)
	//       next_state = WIN;
	//     else
	//       next_state = DISPLAY_GAME;
	  OVER:
	    next_state = OVER;
	  WIN:
	    next_state = WIN;
	endcase // case (curr_state)
   end // always @ (*)

//*************************************
// state 
   always @(posedge clk or negedge rst_n) begin
      if (!rst_n)
	begin
	   over <= 1'b0;
	   eaten <= 1'b0;
	   display_cover <= 1'b0;
	   display_start <= 1'b0;
	   display_over <= 1'b0;
	   display_game <= 1'b0;
	   snake_len <= 'd0;
	   score <= 'd0;
	   snake_0 <= 8'bxxxxxxxx;
	   snake_1 <= 8'bxxxxxxxx;
	   snake_2 <= 8'bxxxxxxxx;
	end // if (!rst_n)
      else
	case(curr_state)
	  IDLE:
	    begin
	       over <= 1'b0;
	       eaten <= 1'b0;
	       display_cover <= 1'b1;
	       display_start <= 1'b0;
	       display_over <= 1'b0;
	       display_win <= 1'b0;
	       display_game <= 1'b0;
	       snake_len <= 'd0;
	       snake_0 <= 8'bxxxxxxxx;
	       snake_1 <= 8'bxxxxxxxx;
	       snake_2 <= 8'bxxxxxxxx;
	    end // case: IDLE
	  START:
	    begin
	       over <= 1'b0;
	       eaten <= 1'b0;
	       display_cover <= 1'b0;
	       display_start <= 1'b1;
	       display_over <= 1'b0;
	       display_win <= 1'b0;
	       display_game <= 1'b0;	
	       snake_0 <= {4'b0000, 4'b0010}; 	// the origin position of snake
	       snake_1 <= {4'b0000, 4'b0001};
	       snake_2 <= {4'b0000, 4'b0000};
	       snake_len <= 5'b00011;			// the origin lenth of snake 
	    end
	  DISPLAY_GAME:
	    begin
	       over <= 1'b0;
	       eaten <= 1'b0;
	       display_cover <= 1'b0;
	       display_start <= 1'b0;
	       display_over <= 1'b0;
	       display_win <= 1'b0;
	       if(over)
		 display_game <= 1'b0;
	       else
		 display_game <= 1'b1;
	    end
	  MOVE:
	    begin
	       over <= 1'b0;
	       eaten <= 1'b0;
	       display_cover <= 1'b0;
	       display_start <= 1'b0;
	       display_over <= 1'b0;
	       display_win <= 1'b0;
	       display_game <= 1'b0;
	       case(snake_direction)
		 2'b00: snake_0[3:0] <= snake_0[3:0] + 4'd1;
		 2'b01: snake_0[3:0] <= snake_0[3:0] - 4'd1;
		 2'b10: snake_0[7:4] <= snake_0[7:4] + 4'd1;
		 2'b11: snake_0[7:4] <= snake_0[7:4] - 4'd1;
	       endcase // case (snake_direction)
	       snake_1 <= snake_0;
	       snake_2 <= snake_1;
	       snake_3 <= snake_2;
	       snake_4 <= snake_3;
	       snake_5 <= snake_4;
	       snake_6 <= snake_5;
	       snake_7 <= snake_6;
	       snake_8 <= snake_7;
	       snake_9 <= snake_8;
	    end
	  CHECK:
	    begin
	       display_cover <= 1'b0;
	       display_start <= 1'b0;
	       display_over <= 1'b0;
	       display_win <= 1'b0;
	       display_game <= 1'b0;
	       if ((snake_0[7:4] == 4'b0000 && snake_1[7:4] == 4'b1111) ||
		   (snake_0[7:4] == 4'b1111 && snake_1[7:4] == 4'b0000) ||
		   (snake_0[3:0] == 4'b0000 && snake_1[3:0] == 4'b1111) ||
		   (snake_0[3:0] == 4'b1111 && snake_1[3:0] == 4'b0000))
		 over <= 1'b1;
	       else if(snake_0 == snake_1 && snake_len > 1)
		 over <= 1'b1;
	       else if(snake_0 == snake_2 && snake_len > 2)
		 over <= 1'b1;
	       else if(snake_0 == snake_3 && snake_len > 3)
		 over <= 1'b1;
	       else if(snake_0 == snake_4 && snake_len > 4)
		 over <= 1'b1;
	       else if(snake_0 == snake_5 && snake_len > 5)
		 over <= 1'b1;
	       else if(snake_0 == snake_6 && snake_len > 6)
		 over <= 1'b1;
	       else if(snake_0 == snake_7 && snake_len > 7)
		 over <= 1'b1;
	       else if(snake_0 == snake_8 && snake_len > 8)
		 over <= 1'b1;
	       else if(snake_0 == snake_9 && snake_len > 9)
		 over <= 1'b1;    
	       else if(esc)
	         over <= 1'b1;
	       else if(snake_0 == food)
		 begin
		    snake_len <= snake_len + 'd1;
		    eaten <= 1'b1;
			score <= score +1;
		 end
	       else ;
	    end // case: CHECK
	//   GET_POINT:
	//     begin
	//        over <= 1'b0;
	//        eaten <= 1'b0;
	//        display_cover <= 1'b0;
	//        display_start <= 1'b0;
	//        display_over <= 1'b0;
	//        display_win <= 1'b0;
	//        display_game <= 1'b0;
	//        score <= score + 'd1;
	//     end
	  OVER:
	     begin
	       over <= 1'b0;
	       eaten <= 1'b0;
	       display_cover <= 1'b0;
	       display_start <= 1'b0;
	       display_over <= 1'b1;
	       display_win <= 1'b0;
	       display_game <= 1'b0;
	     end
	  WIN:
	     begin
	       over <= 1'b0;
	       eaten <= 1'b0;
	       display_cover <= 1'b0;
	       display_start <= 1'b0;
	       display_over <= 1'b0;
	       display_win <= 1'b1;	
	       display_game <= 1'b0;
	     end
	endcase // case (curr_state)
   end // always @ (posedge clk or negedge rst_n)


   always @(posedge clk or negedge rst_n)
     begin
	if(!rst_n)
	  snake_direction <= 2'b00;
	else if(up)
	  snake_direction <= (snake_direction == 2'b01) ? 2'b01 : 2'b00;
	else if(down)
	  snake_direction <= (snake_direction == 2'b00) ? 2'b00 : 2'b01;
	else if(right)
	  snake_direction <= (snake_direction == 2'b11) ? 2'b11 : 2'b10;
	else if(left)
	  snake_direction <= (snake_direction == 2'b10) ? 2'b10 : 2'b11;
     end // always @ (posedge clk or negedge rst_n)	       

endmodule // snake_ctrl

