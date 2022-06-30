module demux14(in,s0,s1,a0,a1,a2,a3);
    input wire in;
    input wire s0,s1;
    output reg a0,a1,a2,a3;

    always @(in or s0 or s1)
    begin
        case (s0 | s1)
            2'b00 : a0=in;
            2'b01 : a1=in;
            2'b10 : a2=in;
            2'b11 : a3=in; 
        endcase
    end

endmodule