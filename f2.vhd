
module smart_home_controller (
    input wire clk,
    input wire reset,
    input wire [3:0] btn,
    output reg [3:0] device_status
);

always @(posedge clk or posedge reset) begin
    if (reset) 
        device_status <= 4'b0000; // All devices OFF
    else 
        device_status <= btn; // Button press controls devices
end

endmodule
