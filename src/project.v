/*
 * Copyright (c) 2024 Gracia Xia, Judy Yu
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_ece298a_msk_modulator (
    input wire        VGND,
    input wire        VPWR,
    
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)

    inout  wire [7:0] ua,       // analog pins

    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // Enable output
  assign uio_oe[0] = VPWR;
  assign uio_oe[1] = VPWR;
  assign uio_oe[2] = VPWR;
  assign uio_oe[3] = VPWR;

  // Enable input
  assign uio_oe[4] = VGND;
  assign uio_oe[5] = VGND;
  assign uio_oe[6] = VGND;
  assign uio_oe[7] = VGND;

  wire [4:0] B;
  wire [6:0] T;
  assign uio_out[3:0] = T[6:3];
  assign uo_out = {T[2:0], B};

  modulator modulator_inst(
    .clk(clk),
    .rst_n(rst_n),
    .enable(ui_in[1]),
    .in(ui_in[0]),

    .B(B),
    .T(T),

    .VDD(VPWR),
    .VSS(VGND)
  );

  dac dac_inst(
    .B(B), // maps to layout pins B[0]..B[4]
    .T(T), // maps to T[0]..T[6]

    .dac_out(ua[0]),

    .VGND(VGND)
  );

  // Tie unused outputs to VGND
  assign uio_out[4] = VGND;
  assign uio_out[5] = VGND;
  assign uio_out[6] = VGND;
  assign uio_out[7] = VGND;
    
  // List all unused inputs to prevent warnings
  wire _unused = &{ena, ui_in[7:2], uio_in[7:0], 1'b0};
                   

endmodule
