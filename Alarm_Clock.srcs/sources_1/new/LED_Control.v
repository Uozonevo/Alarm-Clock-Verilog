`timescale 1ns / 1ps

module LED_Control(
    input AlarmSwitch,
    output reg LED
    );
    
    always@(AlarmSwitch)
    begin
        LED = AlarmSwitch;
    end
endmodule
