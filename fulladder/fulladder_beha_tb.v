module fulladder_beha_tb;
    reg A,B,C;
    wire S,Cout;
    fulladder_beha in(.a(A), .b(B), .c(C), .s(S), .cout(Cout));
    initial begin
        A=0;B=0;C=0; #10;
        A=0;B=0;C=1; #10;
        A=0;B=1;C=0; #10;
        A=0;B=1;C=1; #10;
        A=1;B=0;C=0; #10;
        A=1;B=0;C=1; #10;
        A=1;B=1;C=0; #10;
        A=1;B=1;C=1; #10;
    end
    initial begin
        $monitor("%t | A=%d | B=%d | C=%d | S=%d | Cout=%d", $time,A,B,C,S,Cout);
        $dumpfile("dump.vcd");
        $dumpvars(0,fulladder_beha_tb);
    end


endmodule