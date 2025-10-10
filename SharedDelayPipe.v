module SharedDelayPipe(
  input         clock,
  input         reset,
  input         io_en,
  input  [8:0]  io_config,
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  output [31:0] io_out_0,
  output [31:0] io_out_1,
  output [31:0] io_out_2
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regs_0; // @[DelayPipe.scala 79:21]
  reg [31:0] regs_1; // @[DelayPipe.scala 79:21]
  reg [31:0] regs_2; // @[DelayPipe.scala 79:21]
  reg [31:0] regs_3; // @[DelayPipe.scala 79:21]
  reg [31:0] regs_4; // @[DelayPipe.scala 79:21]
  reg [31:0] regs_5; // @[DelayPipe.scala 79:21]
  reg [31:0] regs_6; // @[DelayPipe.scala 79:21]
  reg [31:0] regs_7; // @[DelayPipe.scala 79:21]
  reg [2:0] wptr_0; // @[DelayPipe.scala 80:21]
  reg [2:0] wptr_1; // @[DelayPipe.scala 80:21]
  reg [2:0] wptr_2; // @[DelayPipe.scala 80:21]
  wire [2:0] config_0 = io_config[2:0]; // @[DelayPipe.scala 85:27]
  wire [2:0] config_1 = io_config[5:3]; // @[DelayPipe.scala 85:27]
  wire [2:0] config_2 = io_config[8:6]; // @[DelayPipe.scala 85:27]
  wire [2:0] offset_0 = config_1 + 3'h1; // @[DelayPipe.scala 90:32]
  wire [2:0] _offset_1_T_1 = offset_0 + config_2; // @[DelayPipe.scala 92:32]
  wire [2:0] offset_1 = _offset_1_T_1 + 3'h1; // @[DelayPipe.scala 92:46]
  wire [2:0] _wptr_0_T_1 = wptr_0 + 3'h1; // @[DelayPipe.scala 99:28]
  wire [2:0] _rptr_0_T_1 = wptr_0 - config_0; // @[DelayPipe.scala 116:26]
  wire [3:0] _GEN_70 = {{1'd0}, wptr_0}; // @[DelayPipe.scala 118:27]
  wire [3:0] _rptr_0_T_3 = 4'h8 + _GEN_70; // @[DelayPipe.scala 118:27]
  wire [3:0] _GEN_71 = {{1'd0}, config_0}; // @[DelayPipe.scala 118:37]
  wire [3:0] _rptr_0_T_5 = _rptr_0_T_3 - _GEN_71; // @[DelayPipe.scala 118:37]
  wire [3:0] _GEN_1 = wptr_0 >= config_0 ? {{1'd0}, _rptr_0_T_1} : _rptr_0_T_5; // @[DelayPipe.scala 115:31 116:15 118:15]
  wire [2:0] rptr_0 = _GEN_1[2:0]; // @[DelayPipe.scala 82:18]
  wire [31:0] _GEN_3 = 3'h1 == rptr_0 ? regs_1 : regs_0; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_4 = 3'h2 == rptr_0 ? regs_2 : _GEN_3; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_5 = 3'h3 == rptr_0 ? regs_3 : _GEN_4; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_6 = 3'h4 == rptr_0 ? regs_4 : _GEN_5; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_7 = 3'h5 == rptr_0 ? regs_5 : _GEN_6; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_8 = 3'h6 == rptr_0 ? regs_6 : _GEN_7; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_9 = 3'h7 == rptr_0 ? regs_7 : _GEN_8; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_10 = io_en ? _GEN_9 : 32'h0; // @[DelayPipe.scala 128:22 129:17 131:17]
  wire [2:0] _wptr_1_T_1 = wptr_1 + 3'h1; // @[DelayPipe.scala 106:30]
  wire [2:0] _rptr_1_T_1 = wptr_1 - config_1; // @[DelayPipe.scala 116:26]
  wire [3:0] _GEN_72 = {{1'd0}, wptr_1}; // @[DelayPipe.scala 118:27]
  wire [3:0] _rptr_1_T_3 = 4'h8 + _GEN_72; // @[DelayPipe.scala 118:27]
  wire [3:0] _GEN_73 = {{1'd0}, config_1}; // @[DelayPipe.scala 118:37]
  wire [3:0] _rptr_1_T_5 = _rptr_1_T_3 - _GEN_73; // @[DelayPipe.scala 118:37]
  wire [3:0] _GEN_14 = wptr_1 >= config_1 ? {{1'd0}, _rptr_1_T_1} : _rptr_1_T_5; // @[DelayPipe.scala 115:31 116:15 118:15]
  wire [2:0] rptr_1 = _GEN_14[2:0]; // @[DelayPipe.scala 82:18]
  wire [31:0] _GEN_16 = 3'h1 == rptr_1 ? regs_1 : regs_0; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_17 = 3'h2 == rptr_1 ? regs_2 : _GEN_16; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_18 = 3'h3 == rptr_1 ? regs_3 : _GEN_17; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_19 = 3'h4 == rptr_1 ? regs_4 : _GEN_18; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_20 = 3'h5 == rptr_1 ? regs_5 : _GEN_19; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_21 = 3'h6 == rptr_1 ? regs_6 : _GEN_20; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_22 = 3'h7 == rptr_1 ? regs_7 : _GEN_21; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_23 = io_en ? _GEN_22 : 32'h0; // @[DelayPipe.scala 128:22 129:17 131:17]
  wire [2:0] _wptr_2_T_1 = wptr_2 + 3'h1; // @[DelayPipe.scala 106:30]
  wire [2:0] _rptr_2_T_1 = wptr_2 - config_2; // @[DelayPipe.scala 116:26]
  wire [3:0] _GEN_74 = {{1'd0}, wptr_2}; // @[DelayPipe.scala 118:27]
  wire [3:0] _rptr_2_T_3 = 4'h8 + _GEN_74; // @[DelayPipe.scala 118:27]
  wire [3:0] _GEN_75 = {{1'd0}, config_2}; // @[DelayPipe.scala 118:37]
  wire [3:0] _rptr_2_T_5 = _rptr_2_T_3 - _GEN_75; // @[DelayPipe.scala 118:37]
  wire [3:0] _GEN_27 = wptr_2 >= config_2 ? {{1'd0}, _rptr_2_T_1} : _rptr_2_T_5; // @[DelayPipe.scala 115:31 116:15 118:15]
  wire [2:0] rptr_2 = _GEN_27[2:0]; // @[DelayPipe.scala 82:18]
  wire [31:0] _GEN_29 = 3'h1 == rptr_2 ? regs_1 : regs_0; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_30 = 3'h2 == rptr_2 ? regs_2 : _GEN_29; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_31 = 3'h3 == rptr_2 ? regs_3 : _GEN_30; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_32 = 3'h4 == rptr_2 ? regs_4 : _GEN_31; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_33 = 3'h5 == rptr_2 ? regs_5 : _GEN_32; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_34 = 3'h6 == rptr_2 ? regs_6 : _GEN_33; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_35 = 3'h7 == rptr_2 ? regs_7 : _GEN_34; // @[DelayPipe.scala 129:{17,17}]
  wire [31:0] _GEN_36 = io_en ? _GEN_35 : 32'h0; // @[DelayPipe.scala 128:22 129:17 131:17]
  wire [31:0] _GEN_38 = 3'h0 == wptr_0 ? io_in_0 : regs_0; // @[DelayPipe.scala 138:{21,21} 79:21]
  wire [31:0] _GEN_39 = 3'h1 == wptr_0 ? io_in_0 : regs_1; // @[DelayPipe.scala 138:{21,21} 79:21]
  wire [31:0] _GEN_40 = 3'h2 == wptr_0 ? io_in_0 : regs_2; // @[DelayPipe.scala 138:{21,21} 79:21]
  wire [31:0] _GEN_41 = 3'h3 == wptr_0 ? io_in_0 : regs_3; // @[DelayPipe.scala 138:{21,21} 79:21]
  wire [31:0] _GEN_42 = 3'h4 == wptr_0 ? io_in_0 : regs_4; // @[DelayPipe.scala 138:{21,21} 79:21]
  wire [31:0] _GEN_43 = 3'h5 == wptr_0 ? io_in_0 : regs_5; // @[DelayPipe.scala 138:{21,21} 79:21]
  wire [31:0] _GEN_44 = 3'h6 == wptr_0 ? io_in_0 : regs_6; // @[DelayPipe.scala 138:{21,21} 79:21]
  wire [31:0] _GEN_45 = 3'h7 == wptr_0 ? io_in_0 : regs_7; // @[DelayPipe.scala 138:{21,21} 79:21]
  assign io_out_0 = io_en & 3'h0 == config_0 ? io_in_0 : _GEN_10; // @[DelayPipe.scala 126:39 127:17]
  assign io_out_1 = io_en & 3'h0 == config_1 ? io_in_1 : _GEN_23; // @[DelayPipe.scala 126:39 127:17]
  assign io_out_2 = io_en & 3'h0 == config_2 ? io_in_2 : _GEN_36; // @[DelayPipe.scala 126:39 127:17]
  always @(posedge clock) begin
    if (reset) begin // @[DelayPipe.scala 79:21]
      regs_0 <= 32'h0; // @[DelayPipe.scala 79:21]
    end else if (io_en) begin // @[DelayPipe.scala 136:14]
      if (3'h0 == wptr_2) begin // @[DelayPipe.scala 138:21]
        regs_0 <= io_in_2; // @[DelayPipe.scala 138:21]
      end else if (3'h0 == wptr_1) begin // @[DelayPipe.scala 138:21]
        regs_0 <= io_in_1; // @[DelayPipe.scala 138:21]
      end else begin
        regs_0 <= _GEN_38;
      end
    end
    if (reset) begin // @[DelayPipe.scala 79:21]
      regs_1 <= 32'h0; // @[DelayPipe.scala 79:21]
    end else if (io_en) begin // @[DelayPipe.scala 136:14]
      if (3'h1 == wptr_2) begin // @[DelayPipe.scala 138:21]
        regs_1 <= io_in_2; // @[DelayPipe.scala 138:21]
      end else if (3'h1 == wptr_1) begin // @[DelayPipe.scala 138:21]
        regs_1 <= io_in_1; // @[DelayPipe.scala 138:21]
      end else begin
        regs_1 <= _GEN_39;
      end
    end
    if (reset) begin // @[DelayPipe.scala 79:21]
      regs_2 <= 32'h0; // @[DelayPipe.scala 79:21]
    end else if (io_en) begin // @[DelayPipe.scala 136:14]
      if (3'h2 == wptr_2) begin // @[DelayPipe.scala 138:21]
        regs_2 <= io_in_2; // @[DelayPipe.scala 138:21]
      end else if (3'h2 == wptr_1) begin // @[DelayPipe.scala 138:21]
        regs_2 <= io_in_1; // @[DelayPipe.scala 138:21]
      end else begin
        regs_2 <= _GEN_40;
      end
    end
    if (reset) begin // @[DelayPipe.scala 79:21]
      regs_3 <= 32'h0; // @[DelayPipe.scala 79:21]
    end else if (io_en) begin // @[DelayPipe.scala 136:14]
      if (3'h3 == wptr_2) begin // @[DelayPipe.scala 138:21]
        regs_3 <= io_in_2; // @[DelayPipe.scala 138:21]
      end else if (3'h3 == wptr_1) begin // @[DelayPipe.scala 138:21]
        regs_3 <= io_in_1; // @[DelayPipe.scala 138:21]
      end else begin
        regs_3 <= _GEN_41;
      end
    end
    if (reset) begin // @[DelayPipe.scala 79:21]
      regs_4 <= 32'h0; // @[DelayPipe.scala 79:21]
    end else if (io_en) begin // @[DelayPipe.scala 136:14]
      if (3'h4 == wptr_2) begin // @[DelayPipe.scala 138:21]
        regs_4 <= io_in_2; // @[DelayPipe.scala 138:21]
      end else if (3'h4 == wptr_1) begin // @[DelayPipe.scala 138:21]
        regs_4 <= io_in_1; // @[DelayPipe.scala 138:21]
      end else begin
        regs_4 <= _GEN_42;
      end
    end
    if (reset) begin // @[DelayPipe.scala 79:21]
      regs_5 <= 32'h0; // @[DelayPipe.scala 79:21]
    end else if (io_en) begin // @[DelayPipe.scala 136:14]
      if (3'h5 == wptr_2) begin // @[DelayPipe.scala 138:21]
        regs_5 <= io_in_2; // @[DelayPipe.scala 138:21]
      end else if (3'h5 == wptr_1) begin // @[DelayPipe.scala 138:21]
        regs_5 <= io_in_1; // @[DelayPipe.scala 138:21]
      end else begin
        regs_5 <= _GEN_43;
      end
    end
    if (reset) begin // @[DelayPipe.scala 79:21]
      regs_6 <= 32'h0; // @[DelayPipe.scala 79:21]
    end else if (io_en) begin // @[DelayPipe.scala 136:14]
      if (3'h6 == wptr_2) begin // @[DelayPipe.scala 138:21]
        regs_6 <= io_in_2; // @[DelayPipe.scala 138:21]
      end else if (3'h6 == wptr_1) begin // @[DelayPipe.scala 138:21]
        regs_6 <= io_in_1; // @[DelayPipe.scala 138:21]
      end else begin
        regs_6 <= _GEN_44;
      end
    end
    if (reset) begin // @[DelayPipe.scala 79:21]
      regs_7 <= 32'h0; // @[DelayPipe.scala 79:21]
    end else if (io_en) begin // @[DelayPipe.scala 136:14]
      if (3'h7 == wptr_2) begin // @[DelayPipe.scala 138:21]
        regs_7 <= io_in_2; // @[DelayPipe.scala 138:21]
      end else if (3'h7 == wptr_1) begin // @[DelayPipe.scala 138:21]
        regs_7 <= io_in_1; // @[DelayPipe.scala 138:21]
      end else begin
        regs_7 <= _GEN_45;
      end
    end
    if (reset) begin // @[DelayPipe.scala 80:21]
      wptr_0 <= 3'h0; // @[DelayPipe.scala 80:21]
    end else if (io_en & wptr_0 < 3'h7) begin // @[DelayPipe.scala 98:46]
      wptr_0 <= _wptr_0_T_1; // @[DelayPipe.scala 99:17]
    end else begin
      wptr_0 <= 3'h0; // @[DelayPipe.scala 101:17]
    end
    if (reset) begin // @[DelayPipe.scala 80:21]
      wptr_1 <= 3'h0; // @[DelayPipe.scala 80:21]
    end else if (io_en) begin // @[DelayPipe.scala 104:19]
      if (wptr_1 < 3'h7) begin // @[DelayPipe.scala 105:40]
        wptr_1 <= _wptr_1_T_1; // @[DelayPipe.scala 106:19]
      end else begin
        wptr_1 <= 3'h0; // @[DelayPipe.scala 108:19]
      end
    end else begin
      wptr_1 <= offset_0; // @[DelayPipe.scala 111:17]
    end
    if (reset) begin // @[DelayPipe.scala 80:21]
      wptr_2 <= 3'h0; // @[DelayPipe.scala 80:21]
    end else if (io_en) begin // @[DelayPipe.scala 104:19]
      if (wptr_2 < 3'h7) begin // @[DelayPipe.scala 105:40]
        wptr_2 <= _wptr_2_T_1; // @[DelayPipe.scala 106:19]
      end else begin
        wptr_2 <= 3'h0; // @[DelayPipe.scala 108:19]
      end
    end else begin
      wptr_2 <= offset_1; // @[DelayPipe.scala 111:17]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regs_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regs_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regs_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regs_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regs_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  regs_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regs_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  wptr_0 = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  wptr_1 = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  wptr_2 = _RAND_10[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
