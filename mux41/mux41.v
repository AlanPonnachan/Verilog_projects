module mux41(a0,a1,a2,a3,s0,s1,out);
    input wire a0,a1,a2,a3;
    input wire s0,s1;
    output reg out;

    always @(a0 or a1 or a2 or a3 or s0 or s1) 
    begin
        case (s0 | s1)
            2'b00 : out = a0;
            2'b01 : out = a1;
            2'b10 : out = a2;
            2'b11 : out = a3; 
        endcase
    end

endmodule