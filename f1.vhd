
module tb_smart_home;
    reg clk, reset;
    reg [3:0] btn;
    wire [3:0] device_status;

    smart_home_controller uut (
        .clk(clk),
        .reset(reset),
        .btn(btn),
        .device_status(device_status)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        btn = 4'b0000;
        #10 reset = 0;

        #10 btn = 4'b0001;
        #10 btn = 4'b0011;
        #10 btn = 4'b0000;
        #10 btn = 4'b1111;

        #20 $stop;
    end
endmodule
