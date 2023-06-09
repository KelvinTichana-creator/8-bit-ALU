/* Generated by Yosys 0.18+40 (git sha1 42721b6a1, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module alu(A, B, ALU_Sel, ALU_Out, Carryout);
  wire [7:0] _00_;
  wire _01_;
  wire [7:0] _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire [7:0] _06_;
  wire _07_;
  wire [7:0] _08_;
  wire _09_;
  wire [7:0] _10_;
  wire _11_;
  wire _12_;
  wire [7:0] _13_;
  wire _14_;
  wire [7:0] _15_;
  wire _16_;
  wire [7:0] _17_;
  wire _18_;
  wire _19_;
  wire [7:0] _20_;
  wire _21_;
  wire [7:0] _22_;
  wire _23_;
  wire [7:0] _24_;
  wire _25_;
  wire [7:0] _26_;
  wire [7:0] _27_;
  wire [7:0] _28_;
  wire [2:0] _29_;
  wire [7:0] _30_;
  wire [7:0] _31_;
  wire [7:0] _32_;
  wire _33_;
  wire [2:0] _34_;
  wire [7:0] _35_;
  wire [7:0] _36_;
  wire [31:0] _37_;
  wire _38_;
  wire [31:0] _39_;
  wire _40_;
  wire [7:0] _41_;
  wire [7:0] _42_;
  wire [7:0] _43_;
  input [7:0] A;
  wire [7:0] A;
  output [7:0] ALU_Out;
  wire [7:0] ALU_Out;
  input [3:0] ALU_Sel;
  wire [3:0] ALU_Sel;
  input [7:0] B;
  wire [7:0] B;
  output Carryout;
  wire Carryout;
  wire [7:0] alu_result;
  wire [17:0] tmp;
  assign _42_ = A & B;
  assign _43_ = A | B;
  assign _37_ = $signed({ 24'h000000, A }) * $signed({ 24'h000000, B });
  assign _38_ = ALU_Sel == 4'h2;
  assign _39_ = $signed({ 24'h000000, A }) / $signed({ 24'h000000, B });
  assign _40_ = ALU_Sel == 4'h3;
  assign _41_ = A << 32'd1;
  assign _01_ = ALU_Sel == 4'h4;
  assign _02_ = A >> 32'd1;
  assign _03_ = ALU_Sel == 4'h5;
  assign _04_ = ALU_Sel == 4'h6;
  assign _00_ = A + B;
  assign _05_ = ALU_Sel == 4'h7;
  assign _06_ = A & B;
  assign _07_ = ALU_Sel == 4'h8;
  assign _08_ = A | B;
  assign _09_ = ALU_Sel == 4'h9;
  assign _10_ = A ^ B;
  assign _12_ = ALU_Sel == 4'ha;
  assign _13_ = ~ _43_;
  assign _14_ = ALU_Sel == 4'hb;
  assign _15_ = ~ _42_;
  assign _16_ = ALU_Sel == 4'hc;
  assign _17_ = A ~^ B;
  assign _11_ = ALU_Sel == 4'h0;
  assign _18_ = ALU_Sel == 4'hd;
  assign _19_ = A > B;
  assign _20_ = _19_ ? 8'h01 : 8'h00;
  assign _21_ = ALU_Sel == 4'he;
  assign _23_ = A == B;
  assign _22_ = A - B;
  assign _24_ = _23_ ? 8'h01 : 8'h00;
  assign _25_ = ALU_Sel == 4'hf;
  assign _26_ = A + B;
  function [7:0] \76 ;
    input [7:0] a;
    input [127:0] b;
    input [15:0] s;
    (* parallel_case *)
    casez (s)
      16'b???????????????1:
        \76  = b[7:0];
      16'b??????????????1?:
        \76  = b[15:8];
      16'b?????????????1??:
        \76  = b[23:16];
      16'b????????????1???:
        \76  = b[31:24];
      16'b???????????1????:
        \76  = b[39:32];
      16'b??????????1?????:
        \76  = b[47:40];
      16'b?????????1??????:
        \76  = b[55:48];
      16'b????????1???????:
        \76  = b[63:56];
      16'b???????1????????:
        \76  = b[71:64];
      16'b??????1?????????:
        \76  = b[79:72];
      16'b?????1??????????:
        \76  = b[87:80];
      16'b????1???????????:
        \76  = b[95:88];
      16'b???1????????????:
        \76  = b[103:96];
      16'b??1?????????????:
        \76  = b[111:104];
      16'b?1??????????????:
        \76  = b[119:112];
      16'b1???????????????:
        \76  = b[127:120];
      default:
        \76  = a;
    endcase
  endfunction
  assign _27_ = \76 (_26_, { _24_, _20_, _17_, _15_, _13_, _10_, _08_, _06_, _36_, _31_, _02_, _41_, _39_[7:0], _37_[7:0], _22_, _00_ }, { _25_, _21_, _18_, _16_, _14_, _12_, _09_, _07_, _05_, _04_, _03_, _01_, _40_, _38_, _33_, _11_ });
  assign _28_ = A << 32'd1;
  assign _29_ = 3'h0 - 3'h1;
  assign _30_ = A >> _29_;
  assign _31_ = _28_ | _30_;
  assign _33_ = ALU_Sel == 4'h1;
  assign _32_ = A >> 32'd1;
  assign _34_ = 3'h0 - 3'h1;
  assign _35_ = A << _34_;
  assign _36_ = _32_ | _35_;
  assign alu_result = _27_;
  assign tmp = { 1'h0, A, 1'h0, B };
  assign ALU_Out = alu_result;
  assign Carryout = tmp[8];
endmodule
