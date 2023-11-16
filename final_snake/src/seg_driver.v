module seg_driver (
    input  wire          clk,
    input  wire          rst_n,
    input  wire [6:0]   dout_time,
    output reg  [1:0]    sel,
    output reg  [7:0]    seg
);
reg [3:0]       seg_flag;
reg             dot;  

//10ms
reg [15:0]      cnt;
wire            add_cnt;
wire            end_cnt;

parameter       MAX_CNT =2'b10    ,
                ZERO    =7'b011_1111,
                ONE     =7'b000_0110,
                TWO     =7'b101_1011,
                THREE   =7'b100_1111,
                FOUR    =7'b110_0110,
                FIVE    =7'b110_1101,
                SIX     =7'b111_1101,
                SEVEN   =7'b000_0111,
                EIGHT   =7'b111_1111,
                NINE    =7'b110_1111;



//timer
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt<=0;
    end
    else if (end_cnt) begin
            cnt<=0;
        end
    else
        cnt<=cnt+1;
end
assign add_cnt=1'b1;
assign end_cnt=(cnt==MAX_CNT-1);

//sel
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        sel<=2'b01;
    end
    else if(cnt==MAX_CNT-1) begin
        sel<={sel[0],sel[1]};
    end
end  

//change the Nixie Tube
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        seg_flag<=0;
    end
    else begin
        case (sel)
            2'b10: begin seg_flag<=dout_time[6:4];   dot<=1'b0;end  //秒   十位
            2'b01: begin seg_flag<=dout_time[3:0];   dot<=1'b0;end  //秒   个位
            default :seg_flag<=0;
        endcase
    end
end


//dispaly the number
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        seg<=8'b0000_0000;
    end
    else begin
        case (seg_flag)     
            0:  seg<={dot,ZERO}    ;
            1:  seg<={dot,ONE}     ;
            2:  seg<={dot,TWO}     ;
            3:  seg<={dot,THREE}   ;
            4:  seg<={dot,FOUR}    ;
            5:  seg<={dot,FIVE}    ;
            6:  seg<={dot,SIX}     ;
            7:  seg<={dot,SEVEN}   ;
            8:  seg<={dot,EIGHT}   ;
            9:  seg<={dot,NINE}    ;
            default: seg<=8'b0000_0000;
        endcase
    end
end

endmodule //seg_driver