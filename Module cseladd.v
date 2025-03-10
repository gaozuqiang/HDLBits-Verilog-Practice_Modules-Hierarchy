module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	wire c0;
    wire [31:0] SA2;
    wire [31:0] SA3;
    add16 A1(.a(a[15:0]), .b(b[15:0]),.cin(1'b0),.sum(sum[15:0]), .cout(c0));
    add16 A2(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(SA2));
    add16 A3(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(SA3));
    
    always @(c0 or SA2 or SA3 ) 
        begin
            case(c0)
                1'b0 : sum[31:16]=SA2;
                1'b1 : sum[31:16]=SA3;
            endcase
        end
endmodule
