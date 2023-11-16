module counter (
    input  wire         clk             ,
    input  wire         rst_n           ,
    output reg [6:0]   dout_time        ,   //输出时间 HH:MM:SS
    output reg          lcd_con
);
//计数器
reg  [25:0]    cnt    ;
wire           add_cnt;
wire           end_cnt; 
//S计时器

//个位 (0~9)
reg  [3:0]      cnt_s_bit;
wire            add_cnt_s_bit;
wire            end_cnt_s_bit;
//十位 (0~5)
reg  [2:0]      cnt_s_ten;
wire            add_cnt_s_ten;
wire            end_cnt_s_ten;

//M计时器

reg [3:0]       flag;
parameter   MAX_CNT=11'd1000;
// reg end_cnt_ten_dit;

always @(posedge clk) begin
    if(cnt_s_ten==5) begin
        lcd_con <= 1'b1;
    end
    else begin
        lcd_con <= 1'b0;
    end



end
//计数器
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt<=0;
    end
    else if (add_cnt) begin
        if (end_cnt) begin
            cnt<=0;
        end
        else
            cnt<=cnt+1;
    end
end

assign add_cnt=1'b1;    
assign end_cnt=add_cnt&&cnt==MAX_CNT-1;

//秒计时器---个位(0~9)
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        cnt_s_bit<=0;
    end
    else if (add_cnt_s_bit) begin
        if (end_cnt_s_bit) begin
            cnt_s_bit<=0;
        end
        else
            cnt_s_bit<=cnt_s_bit+1;
    end

end

assign add_cnt_s_bit=end_cnt;
assign end_cnt_s_bit=add_cnt_s_bit&&cnt_s_bit==9;

//秒计时器---十位(0~5)
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        cnt_s_ten<=0;
    end
    else if (add_cnt_s_ten) begin
        if (end_cnt_s_ten) begin
            cnt_s_ten<=0;
        end
        else
            cnt_s_ten<=cnt_s_ten+1;
    end

end

assign add_cnt_s_ten=end_cnt_s_bit;
assign end_cnt_s_ten=add_cnt_s_ten&&cnt_s_ten==5;


//dout_time输出
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dout_time<=7'b0;
    end
    else
        dout_time<={cnt_s_ten,cnt_s_bit};  //拼接成 HH:MM:SS
end
endmodule //counter