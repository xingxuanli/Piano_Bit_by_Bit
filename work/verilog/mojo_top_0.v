/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    output reg spi_miso,
    output reg [3:0] spi_channel,
    output reg avr_rx,
    output reg [7:0] r,
    output reg [7:0] c,
    output reg [7:0] r2,
    output reg [7:0] c2,
    input btn_left,
    input btn_right,
    input btn_up,
    input btn_down,
    input btn_ok,
    output reg [2:0] yellow,
    output reg [1:0] green,
    input [6:0] keys,
    output reg speaker,
    output reg [7:0] sevenseg1,
    output reg [7:0] sevenseg2
  );
  
  
  
  reg rst;
  
  reg [63:0] cr;
  
  reg [63:0] cr2;
  
  reg [1:0] music_num;
  
  reg [3:0] score_dig1;
  
  reg [3:0] score_dig2;
  
  reg [1375:0] temp1;
  
  reg [1375:0] temp2;
  
  reg [7:0] op_a;
  
  reg [7:0] op_b;
  
  reg [5:0] opcode;
  
  wire [1376-1:0] M_mysong_song11;
  wire [1376-1:0] M_mysong_song12;
  wire [1376-1:0] M_mysong_song21;
  wire [1376-1:0] M_mysong_song22;
  songselection_1 mysong (
    .clk(clk),
    .rst(rst),
    .song11(M_mysong_song11),
    .song12(M_mysong_song12),
    .song21(M_mysong_song21),
    .song22(M_mysong_song22)
  );
  
  wire [8-1:0] M_display_c;
  wire [8-1:0] M_display_r;
  reg [64-1:0] M_display_cr;
  display_2 display (
    .clk(clk),
    .rst(rst),
    .cr(M_display_cr),
    .c(M_display_c),
    .r(M_display_r)
  );
  
  wire [8-1:0] M_display2_c;
  wire [8-1:0] M_display2_r;
  reg [64-1:0] M_display2_cr;
  display_2 display2 (
    .clk(clk),
    .rst(rst),
    .cr(M_display2_cr),
    .c(M_display2_c),
    .r(M_display2_r)
  );
  
  wire [3-1:0] M_songandspeed_yellowled;
  wire [2-1:0] M_songandspeed_greenled;
  selsong_4 songandspeed (
    .clk(clk),
    .rst(rst),
    .btn_left(btn_left),
    .btn_right(btn_right),
    .btn_up(btn_up),
    .btn_down(btn_down),
    .btn_ok(btn_ok),
    .yellowled(M_songandspeed_yellowled),
    .greenled(M_songandspeed_greenled)
  );
  
  wire [8-1:0] M_my_seven_seg_1_segs;
  seven_seg_5 my_seven_seg_1 (
    .char(score_dig1[0+3-:4]),
    .segs(M_my_seven_seg_1_segs)
  );
  
  wire [8-1:0] M_my_seven_seg_2_segs;
  seven_seg_5 my_seven_seg_2 (
    .char(score_dig2[0+3-:4]),
    .segs(M_my_seven_seg_2_segs)
  );
  
  integer j;
  
  reg [23:0] M_gcounter_d, M_gcounter_q = 1'h0;
  
  reg [24:0] M_mycounter_d, M_mycounter_q = 1'h0;
  
  reg [7:0] M_score_d, M_score_q = 1'h0;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_7 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_detector0_out;
  reg [1-1:0] M_detector0_in;
  edge_detector_8 detector0 (
    .clk(clk),
    .in(M_detector0_in),
    .out(M_detector0_out)
  );
  wire [1-1:0] M_cond0_out;
  reg [1-1:0] M_cond0_in;
  button_conditioner_9 cond0 (
    .clk(clk),
    .in(M_cond0_in),
    .out(M_cond0_out)
  );
  wire [1-1:0] M_detector1_out;
  reg [1-1:0] M_detector1_in;
  edge_detector_8 detector1 (
    .clk(clk),
    .in(M_detector1_in),
    .out(M_detector1_out)
  );
  wire [1-1:0] M_cond1_out;
  reg [1-1:0] M_cond1_in;
  button_conditioner_9 cond1 (
    .clk(clk),
    .in(M_cond1_in),
    .out(M_cond1_out)
  );
  wire [1-1:0] M_detector2_out;
  reg [1-1:0] M_detector2_in;
  edge_detector_8 detector2 (
    .clk(clk),
    .in(M_detector2_in),
    .out(M_detector2_out)
  );
  wire [1-1:0] M_cond2_out;
  reg [1-1:0] M_cond2_in;
  button_conditioner_9 cond2 (
    .clk(clk),
    .in(M_cond2_in),
    .out(M_cond2_out)
  );
  wire [1-1:0] M_detector3_out;
  reg [1-1:0] M_detector3_in;
  edge_detector_8 detector3 (
    .clk(clk),
    .in(M_detector3_in),
    .out(M_detector3_out)
  );
  wire [1-1:0] M_cond3_out;
  reg [1-1:0] M_cond3_in;
  button_conditioner_9 cond3 (
    .clk(clk),
    .in(M_cond3_in),
    .out(M_cond3_out)
  );
  wire [1-1:0] M_detector4_out;
  reg [1-1:0] M_detector4_in;
  edge_detector_8 detector4 (
    .clk(clk),
    .in(M_detector4_in),
    .out(M_detector4_out)
  );
  wire [1-1:0] M_cond4_out;
  reg [1-1:0] M_cond4_in;
  button_conditioner_9 cond4 (
    .clk(clk),
    .in(M_cond4_in),
    .out(M_cond4_out)
  );
  wire [1-1:0] M_detector5_out;
  reg [1-1:0] M_detector5_in;
  edge_detector_8 detector5 (
    .clk(clk),
    .in(M_detector5_in),
    .out(M_detector5_out)
  );
  wire [1-1:0] M_cond5_out;
  reg [1-1:0] M_cond5_in;
  button_conditioner_9 cond5 (
    .clk(clk),
    .in(M_cond5_in),
    .out(M_cond5_out)
  );
  wire [1-1:0] M_detector6_out;
  reg [1-1:0] M_detector6_in;
  edge_detector_8 detector6 (
    .clk(clk),
    .in(M_detector6_in),
    .out(M_detector6_out)
  );
  wire [1-1:0] M_cond6_out;
  reg [1-1:0] M_cond6_in;
  button_conditioner_9 cond6 (
    .clk(clk),
    .in(M_cond6_in),
    .out(M_cond6_out)
  );
  wire [1-1:0] M_detector_center_out;
  reg [1-1:0] M_detector_center_in;
  edge_detector_8 detector_center (
    .clk(clk),
    .in(M_detector_center_in),
    .out(M_detector_center_out)
  );
  wire [1-1:0] M_cond_center_out;
  reg [1-1:0] M_cond_center_in;
  button_conditioner_9 cond_center (
    .clk(clk),
    .in(M_cond_center_in),
    .out(M_cond_center_out)
  );
  localparam SONG_SELECTION_global_state = 1'd0;
  localparam PLAY_global_state = 1'd1;
  
  reg M_global_state_d, M_global_state_q = SONG_SELECTION_global_state;
  wire [1-1:0] M_mymusic_speaker;
  music_24 mymusic (
    .clk(clk),
    .rst(rst),
    .music_num(music_num[0+1-:2]),
    .mycounter(M_mycounter_q[0+24-:25]),
    .speaker(M_mymusic_speaker)
  );
  wire [8-1:0] M_myalu_out;
  alu_25 myalu (
    .clk(clk),
    .rst(rst),
    .a(op_a[0+7-:8]),
    .b(op_b[0+7-:8]),
    .alufn(opcode[0+5-:6]),
    .out(M_myalu_out)
  );
  
  always @* begin
    M_global_state_d = M_global_state_q;
    M_score_d = M_score_q;
    M_gcounter_d = M_gcounter_q;
    M_mycounter_d = M_mycounter_q;
    
    speaker = M_mymusic_speaker;
    M_cond0_in = keys[0+0-:1];
    M_detector0_in = M_cond0_out;
    M_cond1_in = keys[1+0-:1];
    M_detector1_in = M_cond1_out;
    M_cond2_in = keys[2+0-:1];
    M_detector2_in = M_cond2_out;
    M_cond3_in = keys[3+0-:1];
    M_detector3_in = M_cond3_out;
    M_cond4_in = keys[4+0-:1];
    M_detector4_in = M_cond4_out;
    M_cond5_in = keys[5+0-:1];
    M_detector5_in = M_cond5_out;
    M_cond6_in = keys[6+0-:1];
    M_detector6_in = M_cond6_out;
    M_cond_center_in = btn_ok;
    M_detector_center_in = M_cond_center_out;
    
    case (M_songandspeed_yellowled[0+2-:3])
      3'h4: begin
        music_num = 1'h1;
      end
      3'h2: begin
        music_num = 2'h2;
      end
      3'h1: begin
        music_num = 2'h3;
      end
      default: begin
        music_num = 1'h1;
      end
    endcase
    M_gcounter_d = M_gcounter_q + 1'h1;
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    score_dig1 = M_score_q[0+3-:4];
    score_dig2 = M_score_q[4+3-:4];
    sevenseg1[0+7-:8] = M_my_seven_seg_1_segs[0+7-:8];
    sevenseg2[0+7-:8] = M_my_seven_seg_2_segs[0+7-:8];
    
    case (M_global_state_q)
      SONG_SELECTION_global_state: begin
        M_score_d = 1'h0;
        M_mycounter_d = 1'h0;
        M_gcounter_d = 1'h0;
        yellow[0+2-:3] = M_songandspeed_yellowled[0+2-:3];
        green[0+1-:2] = M_songandspeed_greenled[0+1-:2];
        for (j = 1'h0; j < 4'h8; j = j + 1) begin
          cr[(j)*8+7-:8] = 1'h0;
          cr2[(j)*8+7-:8] = 1'h0;
        end
        M_display_cr = cr;
        r = M_display_r;
        c = M_display_c;
        M_display2_cr = cr2;
        r2 = M_display2_r;
        c2 = M_display2_c;
        if (M_detector6_out) begin
          M_global_state_d = PLAY_global_state;
        end
      end
      PLAY_global_state: begin
        if (M_songandspeed_greenled[0+1-:2] == 2'h1) begin
          if (M_gcounter_q == 1'h0) begin
            M_mycounter_d = M_mycounter_q + 1'h1;
          end
        end else begin
          if (M_songandspeed_greenled[0+1-:2] == 2'h2) begin
            if (M_gcounter_q[23+0-:1] == 1'h1) begin
              M_mycounter_d = M_mycounter_q + 1'h1;
              M_gcounter_d = 1'h0;
            end
          end
        end
        if (M_songandspeed_yellowled[0+2-:3] == 3'h1) begin
          temp1 = M_mysong_song11;
          temp2 = M_mysong_song12;
        end else begin
          if (M_songandspeed_yellowled[0+2-:3] == 3'h2) begin
            temp1 = M_mysong_song21;
            temp2 = M_mysong_song22;
          end else begin
            temp1 = M_mysong_song11;
            temp2 = M_mysong_song12;
          end
        end
        for (j = 1'h0; j < 4'h8; j = j + 1) begin
          cr[(j)*8+7-:8] = temp1[(j + M_mycounter_q)*8+7-:8];
          cr2[(j)*8+7-:8] = temp2[(j + M_mycounter_q)*8+7-:8];
        end
        M_display_cr = cr;
        r = M_display_r;
        c = M_display_c;
        M_display2_cr = cr2;
        r2 = M_display2_r;
        c2 = M_display2_c;
        yellow[0+2-:3] = 3'h0;
        green[0+1-:2] = 2'h0;
        op_a = 8'haa;
        op_b = cr[0+0+7-:8];
        opcode = 6'h33;
        if (cr[0+7-:8] == 8'haa) begin
          M_global_state_d = SONG_SELECTION_global_state;
        end
        if (M_detector0_out) begin
          if (cr[0+7-:8] == 8'h60 || cr[8+7-:8] == 8'h60) begin
            opcode = 6'h00;
            op_a = M_score_q;
            op_b = 8'h01;
            M_score_d = M_myalu_out;
          end else begin
            opcode = 6'h35;
            op_a = 8'h00;
            op_b = M_score_q;
            if (M_myalu_out[0+0-:1]) begin
              M_score_d = M_score_q - 1'h1;
            end
          end
        end
        if (M_detector1_out) begin
          if (cr[0+7-:8] == 8'h18 || cr[8+7-:8] == 8'h18) begin
            M_score_d = M_score_q + 1'h1;
          end else begin
            if (M_score_q > 1'h0) begin
              opcode = 6'h01;
              op_a = M_score_q;
              op_b = 8'h01;
              M_score_d = M_myalu_out;
            end
          end
        end
        if (M_detector2_out) begin
          if (cr[0+7-:8] == 8'h06 || cr[8+7-:8] == 8'h06) begin
            M_score_d = M_score_q + 1'h1;
          end else begin
            if (M_score_q > 1'h0) begin
              M_score_d = M_score_q - 1'h1;
            end
          end
        end
        if (M_detector3_out) begin
          if (cr[0+7-:8] == 8'h01 || cr[8+7-:8] == 8'h01) begin
            M_score_d = M_score_q + 1'h1;
          end else begin
            if (M_score_q > 1'h0) begin
              M_score_d = M_score_q - 1'h1;
            end
          end
        end
        if (M_detector4_out) begin
          if (cr2[0+7-:8] == 8'h60 || cr2[8+7-:8] == 8'h60) begin
            M_score_d = M_score_q + 1'h1;
          end else begin
            if (M_score_q > 1'h0) begin
              M_score_d = M_score_q - 1'h1;
            end
          end
        end
        if (M_detector5_out) begin
          if (cr2[0+7-:8] == 8'h18 || cr2[8+7-:8] == 8'h18) begin
            M_score_d = M_score_q + 1'h1;
          end else begin
            if (M_score_q > 1'h0) begin
              M_score_d = M_score_q - 1'h1;
            end
          end
        end
        if (M_detector6_out) begin
          if (cr2[0+7-:8] == 8'h06 || cr2[8+7-:8] == 8'h06) begin
            M_score_d = M_score_q + 1'h1;
          end else begin
            if (M_score_q > 1'h0) begin
              M_score_d = M_score_q - 1'h1;
            end
          end
        end
        if (M_detector_center_out) begin
          M_global_state_d = SONG_SELECTION_global_state;
        end
      end
      default: begin
        for (j = 1'h0; j < 4'h8; j = j + 1) begin
          cr[(j)*8+7-:8] = 1'h0;
          cr2[(j)*8+7-:8] = 1'h0;
        end
        M_display_cr = cr;
        r = M_display_r;
        c = M_display_c;
        M_display2_cr = cr2;
        r2 = M_display2_r;
        c2 = M_display2_c;
        yellow[0+2-:3] = 3'h0;
        green[0+1-:2] = 2'h0;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_gcounter_q <= 1'h0;
    end else begin
      M_gcounter_q <= M_gcounter_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_mycounter_q <= 1'h0;
    end else begin
      M_mycounter_q <= M_mycounter_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_global_state_q <= 1'h0;
    end else begin
      M_global_state_q <= M_global_state_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_score_q <= 1'h0;
    end else begin
      M_score_q <= M_score_d;
    end
  end
  
endmodule
