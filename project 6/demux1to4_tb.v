`timescale 1ns/1ps

module demux1to4_tb;

reg D;
reg [1:0] S;

wire Y0;
wire Y1;
wire Y2;
wire Y3;

demux1to4 uut(
    .D(D),
    .S(S),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    $dumpfile("demux.vcd");
    $dumpvars(0, demux1to4_tb);

    D = 1;

    S = 2'b00;
    #10;

    S = 2'b01;
    #10;

    S = 2'b10;
    #10;

    S = 2'b11;
    #10;

    D = 0;

    S = 2'b00;
    #10;

    S = 2'b01;
    #10;

    S = 2'b10;
    #10;

    S = 2'b11;
    #10;

    $finish;

end

initial begin
    $monitor("Time=%0t D=%b S=%b Y0=%b Y1=%b Y2=%b Y3=%b",
             $time,D,S,Y0,Y1,Y2,Y3);
end

endmodule