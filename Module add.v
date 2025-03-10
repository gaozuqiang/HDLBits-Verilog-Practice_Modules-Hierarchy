module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c0;
    add16 A1(.a(a[15:0]), .b(b[15:0]),.sum(sum[15:0]), .cout(c0));
    add16 A2(.a(a[31:16]), .b(b[31:16]), .cin(c0), .sum(sum[31:16]));

endmodule
