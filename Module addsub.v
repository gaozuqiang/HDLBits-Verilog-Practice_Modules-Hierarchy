module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
	wire c0;
    wire [31:0] B;
    assign B = (b^{32{sub}});
    add16 A1(.a(a[15:0]), .b(B[15:0]),.cin(sub),.sum(sum[15:0]), .cout(c0));
    add16 A2(.a(a[31:16]), .b(B[31:16]), .cin(c0), .sum(sum[31:16]));
endmodule
