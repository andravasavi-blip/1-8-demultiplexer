`timescale 1ns/1ps

module demux1x8_tb;

reg D;
reg S0;
reg S1;
reg S2;

wire Y0;
wire Y1;
wire Y2;
wire Y3;
wire Y4;
wire Y5;
wire Y6;
wire Y7;

demux1x8 uut (
    .D(D),
    .S0(S0),
    .S1(S1),
    .S2(S2),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial begin

    $display("Time\tD\tS2 S1 S0\tY0 Y1 Y2 Y3 Y4 Y5 Y6 Y7");

    $monitor("%0t\t%b\t%b  %b  %b\t%b  %b  %b  %b  %b  %b  %b  %b",
             $time, D, S2, S1, S0,
             Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    // Data input
    D = 1;

    // Select Y0
    S2 = 0; S1 = 0; S0 = 0;
    #10;

    // Select Y1
    S2 = 0; S1 = 0; S0 = 1;
    #10;

    // Select Y2
    S2 = 0; S1 = 1; S0 = 0;
    #10;

    // Select Y3
    S2 = 0; S1 = 1; S0 = 1;
    #10;

    // Select Y4
    S2 = 1; S1 = 0; S0 = 0;
    #10;

    // Select Y5
    S2 = 1; S1 = 0; S0 = 1;
    #10;

    // Select Y6
    S2 = 1; S1 = 1; S0 = 0;
    #10;

    // Select Y7
    S2 = 1; S1 = 1; S0 = 1;
    #10;

    // Data input = 0
    D = 0;
    #10;

    $finish;

end

endmodule