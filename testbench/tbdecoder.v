module tbdecoder;
    reg clk;
    reg rst_n;
    reg clr;
    reg [7:0] decoder_in;
    wire [15:0] y1,y2,y3,y4,y5,y6,y7,y8,
               y9,y10,y11,y12,y13,y14,y15,y16;
decoder testde(
               clk,rst_n,clr,decoder_in,
               y1,y2,y3,y4,y5,y6,y7,y8,
               y9,y10,y11,y12,y13,y14,y15,y16);
   initial
   begin
       in=8'b01010101;
       #1000 in=8'b00100100;
       #1000 in=8'b01100100;
       #2000 $stop();
   end
   endmodule