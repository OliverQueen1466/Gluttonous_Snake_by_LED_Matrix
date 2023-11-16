module tbsnake_ctl;
      reg clkn,reset;
      reg start,esc;
      reg up,down,left,right;
      reg [7:0] food;
      wire draw_out,eaten,draw_over,draw_start,draw_win,display;
      wire [4:0] snake_len;
      wire [7:0] snake_0,snake_1,snake_2,snake_3,snake_4,
      snake_5,snake_6,snake_7,snake_8,snake_9;
snake_ctl test(
      clkn,reset,
      start,esc,
      up,down,left,right,
      food,
      eaten,
      draw_out,draw_over,draw_start,draw_win,display,
      snake_len,
      snake_0,snake_1,snake_2,snake_3,snake_4,
      snake_5,snake_6,snake_7,snake_8,snake_9);
      
      always #10 clkn=~clkn;
      
      initial
      begin
          food=8'h55;
          clkn=0;
          reset=1;
          start=0;
          #5 reset=0;
          #100 reset=1;
          #10 start=1;
          #1000 start=0;
          
          #10000 $stop();
      end
      initial
      begin
          #240 right=1;
          #40 right=0;
          #1500 esc=1;
          #40 esc=0;
          #1000 start=0;
          #40 start=1;
      end
  endmodule