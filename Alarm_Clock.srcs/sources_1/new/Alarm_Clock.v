`timescale 1ns / 1ps

module Alarm(
    input alarmSwitch,
    input En,
    output AN4, AN5, AN6, AN7,
    output reg [6:0] sseg
    );
    
    always@(alarmSwitch)
        case({En, alarmSwitch})
        AN4: sseg = 7'b1000000;   //0
        AN5: sseg = 7'b1000000;   //0
        AN6: sseg = 7'b0000110;   //1
        AN7: sseg = 7'b1000000;   //0
        default: sseg = 7'bxxxxxxx;
        endcase    
endmodule
