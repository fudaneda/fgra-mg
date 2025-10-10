module Muxn(
  input        clock,
  input        reset,
  input  [2:0] io_config,
  input  [1:0] io_in_0,
  input  [1:0] io_in_1,
  input  [1:0] io_in_2,
  input  [1:0] io_in_3,
  input  [1:0] io_in_4,
  input  [1:0] io_in_5,
  input  [1:0] io_in_6,
  input  [1:0] io_in_7,
  output [1:0] io_out
);
  wire [1:0] _io_out_T_1 = 3'h1 == io_config ? io_in_1 : io_in_0; // @[Mux.scala 81:58]
  wire [1:0] _io_out_T_3 = 3'h2 == io_config ? io_in_2 : _io_out_T_1; // @[Mux.scala 81:58]
  wire [1:0] _io_out_T_5 = 3'h3 == io_config ? io_in_3 : _io_out_T_3; // @[Mux.scala 81:58]
  wire [1:0] _io_out_T_7 = 3'h4 == io_config ? io_in_4 : _io_out_T_5; // @[Mux.scala 81:58]
  wire [1:0] _io_out_T_9 = 3'h5 == io_config ? io_in_5 : _io_out_T_7; // @[Mux.scala 81:58]
  wire [1:0] _io_out_T_11 = 3'h6 == io_config ? io_in_6 : _io_out_T_9; // @[Mux.scala 81:58]
  assign io_out = 3'h7 == io_config ? io_in_7 : _io_out_T_11; // @[Mux.scala 81:58]
endmodule
