module tbdisplay;

      reg clk,reset,display;
      reg [7:0] food;
      reg draw_out,draw_over,draw_start,draw_win;
      reg [4:0] snake_len;
      reg [7:0] snake_0,snake_1,snake_2,snake_3,snake_4,
          snake_5,snake_6,snake_7,snake_8,snake_9;
      wire [15:0] y1,y2,y3,y4,y5,y6,y7,y8,
                  y9,y10,y11,y12,y13,y14,y15,y16;
      wire [15:0] LED_R1,LED_R2,LED_R3,LED_R4,
                     LED_R5,LED_R6,LED_R7,LED_R8,
                     LED_R9,LED_R10,LED_R11,LED_R12,
                     LED_R13,LED_R14,LED_R15,LED_R16;
display_game test(
                    clk,
                    food,
                    draw_out,
                    snake_len,
                    snake_0,snake_1,snake_2,snake_3,snake_4,
                    snake_5,snake_6,snake_7,snake_8,snake_9,
                    y1,y2,y3,y4,y5,y6,y7,y8,
                    y9,y10,y11,y12,y13,y14,y15,y16);
 display_mux led(
                     display,
                     draw_start,draw_over,draw_win,
                     y1,y2,y3,y4,y5,y6,y7,y8,
                     y9,y10,y11,y12,y13,y14,y15,y16,
                     LED_R1,LED_R2,LED_R3,LED_R4,
                     LED_R5,LED_R6,LED_R7,LED_R8,
                     LED_R9,LED_R10,LED_R11,LED_R12,
                     LED_R13,LED_R14,LED_R15,LED_R16);             
      always #10 clk=~clk;
      
      initial
      begin
          clk=0;
          reset=1;
          draw_out=0;
          display=1;
          draw_start=1;
          snake_len=10;
          food=8'b01010101;
          snake_0=8'b00001111;
          snake_1=8'b00001110;
          snake_2=8'b00001101;
          snake_3=8'b00001100;
          snake_4=8'b00001011;
          snake_5=8'b00001010;
          snake_6=8'b00001001;
          snake_7=8'b00001000;
          snake_8=8'b00000111;
          snake_9=8'b00000110;
          #10 reset=0;
          #10 reset=1;
          #100 draw_start=0;
          display=0;
          draw_out=1;
          #1000 draw_out=0;
          snake_0=8'b00000111;
          snake_1=8'b00000110;
          snake_2=8'b00000101;
          snake_3=8'b00000100;
          snake_4=8'b00000000;
          snake_5=8'b00000000;
          snake_6=8'b00000000;
          snake_7=8'b00000000;
          snake_8=8'b00000000;
          snake_9=8'b00000000;
          #1000 draw_out=1;
          #200 draw_out=0;
          #1000 draw_win=1;
          display=1;
          #1000 draw_over=1;
          draw_win=0;
          #10000 $stop();
      end
  endmodule
          
          