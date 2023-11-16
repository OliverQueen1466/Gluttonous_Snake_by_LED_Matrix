module top_clock (
    input  wire       clk         ,  //system clock
    input  wire       rst_n       ,  //reset
    output wire [1:0] sel         ,  //select signal
    output wire [7:0] seg         ,   //power signal
    output lcd_en, // LED enable
    output lcd_rs, // register select
                        // 0 : write command register
                        // 1 : write data register
    output lcd_rw, // Read/Write Signal
                        // 0 : write
                        // 1 : No function
    output reg [7:0] lcd_db,
    output lcd_rst);
wire [6:0]     dout_time;
reg lcd_con;
//timing module
counter u_counter(
    .clk        (clk)       ,
    .rst_n      (rst_n)     ,
    .dout_time  (dout_time) ,  //SS
    .lcd_con(lcd_con)
);

//driver
seg_driver u_seg_driver(
    .clk            (clk)   ,
    .rst_n          (rst_n) ,
    .sel            (sel)   ,
    .seg            (seg)   ,
    .dout_time      (dout_time)
);
display display_inst(
    .clk(clk),
    .rst_n(lcd_con),
    .lcd_en(lcd_en),
    .lcd_rs(lcd_rs),
    .lcd_rw(lcd_rw),
    .lcd_db(lcd_db),
    .lcd_rst(lcd_rst)

);

endmodule //top