circuit Muxn :
  module Muxn :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip config : UInt<3>, flip in : UInt<2>[8], out : UInt<2>}

    node _io_out_T = eq(UInt<1>("h1"), io.config) @[Mux.scala 81:61]
    node _io_out_T_1 = mux(_io_out_T, io.in[1], io.in[0]) @[Mux.scala 81:58]
    node _io_out_T_2 = eq(UInt<2>("h2"), io.config) @[Mux.scala 81:61]
    node _io_out_T_3 = mux(_io_out_T_2, io.in[2], _io_out_T_1) @[Mux.scala 81:58]
    node _io_out_T_4 = eq(UInt<2>("h3"), io.config) @[Mux.scala 81:61]
    node _io_out_T_5 = mux(_io_out_T_4, io.in[3], _io_out_T_3) @[Mux.scala 81:58]
    node _io_out_T_6 = eq(UInt<3>("h4"), io.config) @[Mux.scala 81:61]
    node _io_out_T_7 = mux(_io_out_T_6, io.in[4], _io_out_T_5) @[Mux.scala 81:58]
    node _io_out_T_8 = eq(UInt<3>("h5"), io.config) @[Mux.scala 81:61]
    node _io_out_T_9 = mux(_io_out_T_8, io.in[5], _io_out_T_7) @[Mux.scala 81:58]
    node _io_out_T_10 = eq(UInt<3>("h6"), io.config) @[Mux.scala 81:61]
    node _io_out_T_11 = mux(_io_out_T_10, io.in[6], _io_out_T_9) @[Mux.scala 81:58]
    node _io_out_T_12 = eq(UInt<3>("h7"), io.config) @[Mux.scala 81:61]
    node _io_out_T_13 = mux(_io_out_T_12, io.in[7], _io_out_T_11) @[Mux.scala 81:58]
    io.out <= _io_out_T_13 @[Multiplexer.scala 20:10]

