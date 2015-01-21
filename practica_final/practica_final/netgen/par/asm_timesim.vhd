--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.15xf
--  \   \         Application: netgen
--  /   /         Filename: asm_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 21 19:50:50 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf asm.pcf -rpw 100 -tpw 0 -ar Structure -tm asm -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim asm.ncd asm_timesim.vhd 
-- Device	: 3s1000ft256-5 (PRODUCTION 1.39 2012-04-23)
-- Input file	: asm.ncd
-- Output file	: C:\hlocal\TOC\practica_final\practica_final\netgen\par\asm_timesim.vhd
-- # of Entities	: 1
-- Design Name	: asm
-- Xilinx	: C:\software\electronica\xilinx\14.1\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity asm is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst_n : in STD_LOGIC := 'X'; 
    error_o : out STD_LOGIC; 
    fin : out STD_LOGIC; 
    escribir : in STD_LOGIC := 'X'; 
    ini : in STD_LOGIC := 'X'; 
    dir : out STD_LOGIC_VECTOR ( 4 downto 0 ); 
    clave : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    nueva_clave : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end asm;

architecture Structure of asm is
  signal STATE_FSM_FFd1_326 : STD_LOGIC; 
  signal STATE_FSM_FFd2_327 : STD_LOGIC; 
  signal STATE_FSM_FFd3_328 : STD_LOGIC; 
  signal reg_dir_load_0 : STD_LOGIC; 
  signal clave_0_IBUF_331 : STD_LOGIC; 
  signal clave_3_IBUF_333 : STD_LOGIC; 
  signal N111_0 : STD_LOGIC; 
  signal N20_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal rst_n_IBUF_338 : STD_LOGIC; 
  signal rams_we_0 : STD_LOGIC; 
  signal ini_IBUF_340 : STD_LOGIC; 
  signal STATE_FSM_FFd2_In69_0 : STD_LOGIC; 
  signal escribir_IBUF_354 : STD_LOGIC; 
  signal STATE_FSM_FFd3_In66_0 : STD_LOGIC; 
  signal STATE_FSM_FFd2_In8_0 : STD_LOGIC; 
  signal clave_2_IBUF_357 : STD_LOGIC; 
  signal clave_1_IBUF_358 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal N131_0 : STD_LOGIC; 
  signal u_flip2_data_364 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal i_din_3_SW1_O : STD_LOGIC; 
  signal i_din_5_SW0_O : STD_LOGIC; 
  signal STATE_FSM_FFd2_In311_SW0_O : STD_LOGIC; 
  signal STATE_FSM_FFd3_In60_SW1_O : STD_LOGIC; 
  signal STATE_FSM_FFd3_In60_0 : STD_LOGIC; 
  signal STATE_FSM_FFd3_In21_O : STD_LOGIC; 
  signal reg_dir_load : STD_LOGIC; 
  signal ff_error_load : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal STATE_FSM_FFd1_DXMUX_456 : STD_LOGIC; 
  signal STATE_FSM_FFd1_In : STD_LOGIC; 
  signal rams_we : STD_LOGIC; 
  signal STATE_FSM_FFd1_SRINV_439 : STD_LOGIC; 
  signal STATE_FSM_FFd1_CLKINV_438 : STD_LOGIC; 
  signal STATE_FSM_FFd3_In112_482 : STD_LOGIC; 
  signal STATE_FSM_FFd2_In69 : STD_LOGIC; 
  signal u_reg_data_1_DXMUX_503 : STD_LOGIC; 
  signal u_reg_data_1_DYMUX_496 : STD_LOGIC; 
  signal u_reg_data_1_SRINV_494 : STD_LOGIC; 
  signal u_reg_data_1_CLKINV_493 : STD_LOGIC; 
  signal u_reg_data_1_CEINV_492 : STD_LOGIC; 
  signal u_reg_data_3_DXMUX_527 : STD_LOGIC; 
  signal u_reg_data_3_DYMUX_520 : STD_LOGIC; 
  signal u_reg_data_3_SRINV_518 : STD_LOGIC; 
  signal u_reg_data_3_CLKINV_517 : STD_LOGIC; 
  signal u_reg_data_3_CEINV_516 : STD_LOGIC; 
  signal u_reg_data_4_DYMUX_542 : STD_LOGIC; 
  signal u_reg_data_4_SRINV_540 : STD_LOGIC; 
  signal u_reg_data_4_CLKINV_539 : STD_LOGIC; 
  signal u_reg_data_4_CEINV_538 : STD_LOGIC; 
  signal STATE_FSM_FFd2_In8_582 : STD_LOGIC; 
  signal STATE_FSM_FFd3_REVUSED_571 : STD_LOGIC; 
  signal STATE_FSM_FFd3_DYMUX_570 : STD_LOGIC; 
  signal STATE_FSM_FFd3_In115 : STD_LOGIC; 
  signal STATE_FSM_FFd3_SRINV_561 : STD_LOGIC; 
  signal STATE_FSM_FFd3_CLKINV_560 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal u_flip2_data_DYMUX_618 : STD_LOGIC; 
  signal u_flip2_data_BYINV_617 : STD_LOGIC; 
  signal u_flip2_data_SRINV_616 : STD_LOGIC; 
  signal u_flip2_data_CLKINV_615 : STD_LOGIC; 
  signal u_flip2_data_CEINV_614 : STD_LOGIC; 
  signal u_reg_i_data_2_DXMUX_654 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal u_reg_i_data_2_SRINV_638 : STD_LOGIC; 
  signal u_reg_i_data_2_CLKINV_637 : STD_LOGIC; 
  signal u_reg_i_data_2_CEINV_636 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal u_rams_do_2_DXMUX_738 : STD_LOGIC; 
  signal u_rams_do_2_F5MUX_736 : STD_LOGIC; 
  signal u_rams_Mram_RAM3_F_734 : STD_LOGIC; 
  signal u_rams_do_2_DIF_MUX_722 : STD_LOGIC; 
  signal u_rams_Mram_RAM3_G_720 : STD_LOGIC; 
  signal u_rams_do_2_DIG_MUX_708 : STD_LOGIC; 
  signal u_rams_do_2_CLKINV_706 : STD_LOGIC; 
  signal u_rams_do_2_WSF : STD_LOGIC; 
  signal u_rams_do_2_WSG : STD_LOGIC; 
  signal u_rams_do_2_SRINV_700 : STD_LOGIC; 
  signal u_rams_do_2_SLICEWE0USED_698 : STD_LOGIC; 
  signal u_rams_do_2_BXINV_697 : STD_LOGIC; 
  signal u_rams_do_3_DXMUX_796 : STD_LOGIC; 
  signal u_rams_do_3_F5MUX_794 : STD_LOGIC; 
  signal u_rams_Mram_RAM4_F_792 : STD_LOGIC; 
  signal u_rams_do_3_DIF_MUX_780 : STD_LOGIC; 
  signal u_rams_Mram_RAM4_G_778 : STD_LOGIC; 
  signal u_rams_do_3_DIG_MUX_766 : STD_LOGIC; 
  signal u_rams_do_3_CLKINV_764 : STD_LOGIC; 
  signal u_rams_do_3_WSF : STD_LOGIC; 
  signal u_rams_do_3_WSG : STD_LOGIC; 
  signal u_rams_do_3_SRINV_758 : STD_LOGIC; 
  signal u_rams_do_3_SLICEWE0USED_756 : STD_LOGIC; 
  signal u_rams_do_3_BXINV_755 : STD_LOGIC; 
  signal u_rams_do_0_DXMUX_854 : STD_LOGIC; 
  signal u_rams_do_0_F5MUX_852 : STD_LOGIC; 
  signal u_rams_Mram_RAM1_F_850 : STD_LOGIC; 
  signal u_rams_do_0_DIF_MUX_838 : STD_LOGIC; 
  signal u_rams_Mram_RAM1_G_836 : STD_LOGIC; 
  signal u_rams_do_0_DIG_MUX_824 : STD_LOGIC; 
  signal u_rams_do_0_CLKINV_822 : STD_LOGIC; 
  signal u_rams_do_0_WSF : STD_LOGIC; 
  signal u_rams_do_0_WSG : STD_LOGIC; 
  signal u_rams_do_0_SRINV_816 : STD_LOGIC; 
  signal u_rams_do_0_SLICEWE0USED_814 : STD_LOGIC; 
  signal u_rams_do_0_BXINV_813 : STD_LOGIC; 
  signal u_rams_do_1_DXMUX_912 : STD_LOGIC; 
  signal u_rams_do_1_F5MUX_910 : STD_LOGIC; 
  signal u_rams_Mram_RAM2_F_908 : STD_LOGIC; 
  signal u_rams_do_1_DIF_MUX_896 : STD_LOGIC; 
  signal u_rams_Mram_RAM2_G_894 : STD_LOGIC; 
  signal u_rams_do_1_DIG_MUX_882 : STD_LOGIC; 
  signal u_rams_do_1_CLKINV_880 : STD_LOGIC; 
  signal u_rams_do_1_WSF : STD_LOGIC; 
  signal u_rams_do_1_WSG : STD_LOGIC; 
  signal u_rams_do_1_SRINV_874 : STD_LOGIC; 
  signal u_rams_do_1_SLICEWE0USED_872 : STD_LOGIC; 
  signal u_rams_do_1_BXINV_871 : STD_LOGIC; 
  signal nueva_clave_1_INBUF : STD_LOGIC; 
  signal nueva_clave_2_INBUF : STD_LOGIC; 
  signal nueva_clave_3_INBUF : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal fin_O : STD_LOGIC; 
  signal fin_OUTPUT_OFF_O1INV_955 : STD_LOGIC; 
  signal fin_OUTPUT_OFF_OSR_USED_958 : STD_LOGIC; 
  signal u_flip1_data_960 : STD_LOGIC; 
  signal fin_OUTPUT_OTCLK1INV_951 : STD_LOGIC; 
  signal clave_0_INBUF : STD_LOGIC; 
  signal dir_0_O : STD_LOGIC; 
  signal clave_1_INBUF : STD_LOGIC; 
  signal dir_1_O : STD_LOGIC; 
  signal clave_2_INBUF : STD_LOGIC; 
  signal dir_2_O : STD_LOGIC; 
  signal clave_3_INBUF : STD_LOGIC; 
  signal dir_3_O : STD_LOGIC; 
  signal dir_4_O : STD_LOGIC; 
  signal ini_INBUF : STD_LOGIC; 
  signal error_o_O : STD_LOGIC; 
  signal escribir_INBUF : STD_LOGIC; 
  signal rst_n_INBUF : STD_LOGIC; 
  signal nueva_clave_0_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal u_reg_i_data_4_DXMUX_1093 : STD_LOGIC; 
  signal N13_pack_2 : STD_LOGIC; 
  signal u_reg_i_data_4_SRINV_1077 : STD_LOGIC; 
  signal u_reg_i_data_4_CLKINV_1076 : STD_LOGIC; 
  signal u_reg_i_data_4_CEINV_1075 : STD_LOGIC; 
  signal u_reg_i_data_3_DXMUX_1129 : STD_LOGIC; 
  signal i_din_3_SW1_O_pack_2 : STD_LOGIC; 
  signal u_reg_i_data_3_SRINV_1114 : STD_LOGIC; 
  signal u_reg_i_data_3_CLKINV_1113 : STD_LOGIC; 
  signal u_reg_i_data_3_CEINV_1112 : STD_LOGIC; 
  signal u_reg_i_data_5_DXMUX_1165 : STD_LOGIC; 
  signal i_din_5_SW0_O_pack_2 : STD_LOGIC; 
  signal u_reg_i_data_5_SRINV_1150 : STD_LOGIC; 
  signal u_reg_i_data_5_CLKINV_1149 : STD_LOGIC; 
  signal u_reg_i_data_5_CEINV_1148 : STD_LOGIC; 
  signal STATE_FSM_FFd2_In311_SW0_O_pack_1 : STD_LOGIC; 
  signal STATE_FSM_FFd2_REVUSED_1195 : STD_LOGIC; 
  signal STATE_FSM_FFd2_DYMUX_1194 : STD_LOGIC; 
  signal STATE_FSM_FFd2_In72 : STD_LOGIC; 
  signal STATE_FSM_FFd2_SRINV_1185 : STD_LOGIC; 
  signal STATE_FSM_FFd2_CLKINV_1184 : STD_LOGIC; 
  signal STATE_FSM_FFd3_In60_1229 : STD_LOGIC; 
  signal STATE_FSM_FFd3_In60_SW1_O_pack_1 : STD_LOGIC; 
  signal STATE_FSM_FFd3_In66_1253 : STD_LOGIC; 
  signal STATE_FSM_FFd3_In21_O_pack_1 : STD_LOGIC; 
  signal u_reg_i_data_1_DXMUX_1292 : STD_LOGIC; 
  signal u_reg_i_data_1_DYMUX_1278 : STD_LOGIC; 
  signal u_reg_i_data_1_SRINV_1270 : STD_LOGIC; 
  signal u_reg_i_data_1_CLKINV_1269 : STD_LOGIC; 
  signal u_reg_i_data_1_CEINV_1268 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM4_F_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM3_F_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM2_F_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_G_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_G_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_G_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_G_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_G_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_G_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_G_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_G_WADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_F_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_F_RADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_F_RADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_F_RADR4 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_F_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_F_WADR2 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_F_WADR3 : STD_LOGIC; 
  signal NlwBufferSignal_u_rams_Mram_RAM1_F_WADR4 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_u_rams_Mram_RAM3_F_WE_WSGAND_WE0 : STD_LOGIC; 
  signal NlwInverterSignal_u_rams_Mram_RAM4_F_WE_WSGAND_WE0 : STD_LOGIC; 
  signal NlwInverterSignal_u_rams_Mram_RAM1_F_WE_WSGAND_WE0 : STD_LOGIC; 
  signal NlwInverterSignal_u_rams_Mram_RAM2_F_WE_WSGAND_WE0 : STD_LOGIC; 
  signal u_rams_do : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal u_reg_i_data : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal u_reg_data : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal i_din : STD_LOGIC_VECTOR ( 5 downto 0 ); 
begin
  reg_dir_load_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X32Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => reg_dir_load,
      O => reg_dir_load_0
    );
  STATE_FSM_Out31 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X32Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => STATE_FSM_FFd2_327,
      ADR2 => STATE_FSM_FFd1_326,
      ADR3 => STATE_FSM_FFd3_328,
      O => reg_dir_load
    );
  N111_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => N111,
      O => N111_0
    );
  N111_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => N20,
      O => N20_0
    );
  STATE_FSM_FFd1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd1_In,
      O => STATE_FSM_FFd1_DXMUX_456
    );
  STATE_FSM_FFd1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => rams_we,
      O => rams_we_0
    );
  STATE_FSM_FFd1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => STATE_FSM_FFd1_SRINV_439
    );
  STATE_FSM_FFd1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => STATE_FSM_FFd1_CLKINV_438
    );
  STATE_FSM_FFd3_In112_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd2_In69,
      O => STATE_FSM_FFd2_In69_0
    );
  STATE_FSM_Out41 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X31Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => STATE_FSM_FFd2_327,
      ADR3 => STATE_FSM_FFd3_328,
      O => STATE_FSM_FFd2_In69
    );
  u_reg_data_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => u_reg_data_1_DXMUX_503
    );
  u_reg_data_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => u_reg_data_1_DYMUX_496
    );
  u_reg_data_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => u_reg_data_1_SRINV_494
    );
  u_reg_data_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_reg_data_1_CLKINV_493
    );
  u_reg_data_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => reg_dir_load_0,
      O => u_reg_data_1_CEINV_492
    );
  u_reg_data_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => u_reg_data_3_DXMUX_527
    );
  u_reg_data_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X33Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => u_reg_data_3_DYMUX_520
    );
  u_reg_data_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => u_reg_data_3_SRINV_518
    );
  u_reg_data_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_reg_data_3_CLKINV_517
    );
  u_reg_data_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => reg_dir_load_0,
      O => u_reg_data_3_CEINV_516
    );
  u_reg_data_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y90",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(4),
      O => u_reg_data_4_DYMUX_542
    );
  u_reg_data_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y90",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => u_reg_data_4_SRINV_540
    );
  u_reg_data_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y90",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_reg_data_4_CLKINV_539
    );
  u_reg_data_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y90",
      PATHPULSE => 526 ps
    )
    port map (
      I => reg_dir_load_0,
      O => u_reg_data_4_CEINV_538
    );
  STATE_FSM_FFd3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd2_In8_582,
      O => STATE_FSM_FFd2_In8_0
    );
  STATE_FSM_FFd3_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd3_In112_482,
      O => STATE_FSM_FFd3_REVUSED_571
    );
  STATE_FSM_FFd3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd3_In115,
      O => STATE_FSM_FFd3_DYMUX_570
    );
  STATE_FSM_FFd3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => STATE_FSM_FFd3_SRINV_561
    );
  STATE_FSM_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => STATE_FSM_FFd3_CLKINV_560
    );
  N17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  N17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => N131,
      O => N131_0
    );
  u_flip2_data_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y90",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_flip2_data_BYINV_617,
      O => u_flip2_data_DYMUX_618
    );
  u_flip2_data_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y90",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => u_flip2_data_BYINV_617
    );
  u_flip2_data_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y90",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => u_flip2_data_SRINV_616
    );
  u_flip2_data_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y90",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_flip2_data_CLKINV_615
    );
  u_flip2_data_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y90",
      PATHPULSE => 526 ps
    )
    port map (
      I => ff_error_load,
      O => u_flip2_data_CEINV_614
    );
  u_reg_i_data_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y82",
      PATHPULSE => 526 ps
    )
    port map (
      I => i_din(2),
      O => u_reg_i_data_2_DXMUX_654
    );
  u_reg_i_data_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y82",
      PATHPULSE => 526 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  u_reg_i_data_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y82",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => u_reg_i_data_2_SRINV_638
    );
  u_reg_i_data_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y82",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_reg_i_data_2_CLKINV_637
    );
  u_reg_i_data_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y82",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd2_In69_0,
      O => u_reg_i_data_2_CEINV_636
    );
  N12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  N12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  u_rams_do_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_2_F5MUX_736,
      O => u_rams_do_2_DXMUX_738
    );
  u_rams_do_2_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y87"
    )
    port map (
      IA => u_rams_Mram_RAM3_G_720,
      IB => u_rams_Mram_RAM3_F_734,
      SEL => u_rams_do_2_BXINV_697,
      O => u_rams_do_2_F5MUX_736
    );
  u_rams_do_2_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_2_DIG_MUX_708,
      O => u_rams_do_2_DIF_MUX_722
    );
  u_rams_do_2_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(4),
      O => u_rams_do_2_BXINV_697
    );
  u_rams_do_2_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => nueva_clave_2_INBUF,
      O => u_rams_do_2_DIG_MUX_708
    );
  u_rams_do_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => rams_we_0,
      O => u_rams_do_2_SRINV_700
    );
  u_rams_do_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_rams_do_2_CLKINV_706
    );
  u_rams_do_2_SLICEWE0USED : X_BUF
    generic map(
      LOC => "SLICE_X28Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_2_BXINV_697,
      O => u_rams_do_2_SLICEWE0USED_698
    );
  u_rams_Mram_RAM4_G : X_RAMD16
    generic map(
      INIT => X"1F80",
      LOC => "SLICE_X28Y88"
    )
    port map (
      RADR0 => NlwBufferSignal_u_rams_Mram_RAM4_G_RADR1,
      RADR1 => NlwBufferSignal_u_rams_Mram_RAM4_G_RADR2,
      RADR2 => NlwBufferSignal_u_rams_Mram_RAM4_G_RADR3,
      RADR3 => NlwBufferSignal_u_rams_Mram_RAM4_G_RADR4,
      WADR0 => NlwBufferSignal_u_rams_Mram_RAM4_G_WADR1,
      WADR1 => NlwBufferSignal_u_rams_Mram_RAM4_G_WADR2,
      WADR2 => NlwBufferSignal_u_rams_Mram_RAM4_G_WADR3,
      WADR3 => NlwBufferSignal_u_rams_Mram_RAM4_G_WADR4,
      I => u_rams_do_3_DIG_MUX_766,
      CLK => u_rams_do_3_CLKINV_764,
      WE => u_rams_do_3_WSG,
      O => u_rams_Mram_RAM4_G_778
    );
  u_rams_Mram_RAM4_F : X_RAMD16
    generic map(
      INIT => X"83F0",
      LOC => "SLICE_X28Y88"
    )
    port map (
      RADR0 => NlwBufferSignal_u_rams_Mram_RAM4_F_RADR1,
      RADR1 => NlwBufferSignal_u_rams_Mram_RAM4_F_RADR2,
      RADR2 => NlwBufferSignal_u_rams_Mram_RAM4_F_RADR3,
      RADR3 => NlwBufferSignal_u_rams_Mram_RAM4_F_RADR4,
      WADR0 => NlwBufferSignal_u_rams_Mram_RAM4_F_WADR1,
      WADR1 => NlwBufferSignal_u_rams_Mram_RAM4_F_WADR2,
      WADR2 => NlwBufferSignal_u_rams_Mram_RAM4_F_WADR3,
      WADR3 => NlwBufferSignal_u_rams_Mram_RAM4_F_WADR4,
      I => u_rams_do_3_DIF_MUX_780,
      CLK => u_rams_do_3_CLKINV_764,
      WE => u_rams_do_3_WSF,
      O => u_rams_Mram_RAM4_F_792
    );
  u_rams_do_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_3_F5MUX_794,
      O => u_rams_do_3_DXMUX_796
    );
  u_rams_do_3_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y88"
    )
    port map (
      IA => u_rams_Mram_RAM4_G_778,
      IB => u_rams_Mram_RAM4_F_792,
      SEL => u_rams_do_3_BXINV_755,
      O => u_rams_do_3_F5MUX_794
    );
  u_rams_do_3_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_3_DIG_MUX_766,
      O => u_rams_do_3_DIF_MUX_780
    );
  u_rams_do_3_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(4),
      O => u_rams_do_3_BXINV_755
    );
  u_rams_do_3_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => nueva_clave_3_INBUF,
      O => u_rams_do_3_DIG_MUX_766
    );
  u_rams_do_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => rams_we_0,
      O => u_rams_do_3_SRINV_758
    );
  u_rams_do_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_rams_do_3_CLKINV_764
    );
  u_rams_do_3_SLICEWE0USED : X_BUF
    generic map(
      LOC => "SLICE_X28Y88",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_3_BXINV_755,
      O => u_rams_do_3_SLICEWE0USED_756
    );
  u_rams_do_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_0_F5MUX_852,
      O => u_rams_do_0_DXMUX_854
    );
  u_rams_do_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y89"
    )
    port map (
      IA => u_rams_Mram_RAM1_G_836,
      IB => u_rams_Mram_RAM1_F_850,
      SEL => u_rams_do_0_BXINV_813,
      O => u_rams_do_0_F5MUX_852
    );
  u_rams_do_0_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_0_DIG_MUX_824,
      O => u_rams_do_0_DIF_MUX_838
    );
  u_rams_do_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(4),
      O => u_rams_do_0_BXINV_813
    );
  u_rams_do_0_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => nueva_clave_0_INBUF,
      O => u_rams_do_0_DIG_MUX_824
    );
  u_rams_do_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => rams_we_0,
      O => u_rams_do_0_SRINV_816
    );
  u_rams_do_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_rams_do_0_CLKINV_822
    );
  u_rams_do_0_SLICEWE0USED : X_BUF
    generic map(
      LOC => "SLICE_X28Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_0_BXINV_813,
      O => u_rams_do_0_SLICEWE0USED_814
    );
  u_rams_Mram_RAM2_G : X_RAMD16
    generic map(
      INIT => X"5E62",
      LOC => "SLICE_X28Y86"
    )
    port map (
      RADR0 => NlwBufferSignal_u_rams_Mram_RAM2_G_RADR1,
      RADR1 => NlwBufferSignal_u_rams_Mram_RAM2_G_RADR2,
      RADR2 => NlwBufferSignal_u_rams_Mram_RAM2_G_RADR3,
      RADR3 => NlwBufferSignal_u_rams_Mram_RAM2_G_RADR4,
      WADR0 => NlwBufferSignal_u_rams_Mram_RAM2_G_WADR1,
      WADR1 => NlwBufferSignal_u_rams_Mram_RAM2_G_WADR2,
      WADR2 => NlwBufferSignal_u_rams_Mram_RAM2_G_WADR3,
      WADR3 => NlwBufferSignal_u_rams_Mram_RAM2_G_WADR4,
      I => u_rams_do_1_DIG_MUX_882,
      CLK => u_rams_do_1_CLKINV_880,
      WE => u_rams_do_1_WSG,
      O => u_rams_Mram_RAM2_G_894
    );
  u_rams_do_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_1_F5MUX_910,
      O => u_rams_do_1_DXMUX_912
    );
  u_rams_do_1_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y86"
    )
    port map (
      IA => u_rams_Mram_RAM2_G_894,
      IB => u_rams_Mram_RAM2_F_908,
      SEL => u_rams_do_1_BXINV_871,
      O => u_rams_do_1_F5MUX_910
    );
  u_rams_do_1_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_1_DIG_MUX_882,
      O => u_rams_do_1_DIF_MUX_896
    );
  u_rams_do_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(4),
      O => u_rams_do_1_BXINV_871
    );
  u_rams_do_1_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => nueva_clave_1_INBUF,
      O => u_rams_do_1_DIG_MUX_882
    );
  u_rams_do_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => rams_we_0,
      O => u_rams_do_1_SRINV_874
    );
  u_rams_do_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_rams_do_1_CLKINV_880
    );
  u_rams_do_1_SLICEWE0USED : X_BUF
    generic map(
      LOC => "SLICE_X28Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_rams_do_1_BXINV_871,
      O => u_rams_do_1_SLICEWE0USED_872
    );
  nueva_clave_1_IBUF : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 526 ps
    )
    port map (
      I => nueva_clave(1),
      O => nueva_clave_1_INBUF
    );
  nueva_clave_2_IBUF : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 526 ps
    )
    port map (
      I => nueva_clave(2),
      O => nueva_clave_2_INBUF
    );
  nueva_clave_3_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 526 ps
    )
    port map (
      I => nueva_clave(3),
      O => nueva_clave_3_INBUF
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD246",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  fin_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => fin_O,
      O => fin
    );
  u_flip1_data : X_SFF
    generic map(
      LOC => "PAD51",
      INIT => '0'
    )
    port map (
      I => fin_OUTPUT_OFF_O1INV_955,
      CE => VCC,
      CLK => fin_OUTPUT_OTCLK1INV_951,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => fin_OUTPUT_OFF_OSR_USED_958,
      O => u_flip1_data_960
    );
  fin_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => fin_OUTPUT_OFF_O1INV_955
    );
  fin_OUTPUT_OFF_OSR_USED : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => fin_OUTPUT_OFF_OSR_USED_958
    );
  fin_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_flip1_data_960,
      O => fin_O
    );
  fin_OUTPUT_OTCLK1INV : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => fin_OUTPUT_OTCLK1INV_951
    );
  clave_0_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 526 ps
    )
    port map (
      I => clave(0),
      O => clave_0_INBUF
    );
  dir_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => dir_0_O,
      O => dir(0)
    );
  clave_1_IBUF : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 526 ps
    )
    port map (
      I => clave(1),
      O => clave_1_INBUF
    );
  dir_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => dir_1_O,
      O => dir(1)
    );
  clave_2_IBUF : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 526 ps
    )
    port map (
      I => clave(2),
      O => clave_2_INBUF
    );
  dir_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD45"
    )
    port map (
      I => dir_2_O,
      O => dir(2)
    );
  clave_3_IBUF : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 526 ps
    )
    port map (
      I => clave(3),
      O => clave_3_INBUF
    );
  clave_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 526 ps
    )
    port map (
      I => clave_3_INBUF,
      O => clave_3_IBUF_333
    );
  dir_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => dir_3_O,
      O => dir(3)
    );
  dir_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD46"
    )
    port map (
      I => dir_4_O,
      O => dir(4)
    );
  ini_IBUF : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 526 ps
    )
    port map (
      I => ini,
      O => ini_INBUF
    );
  error_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => error_o_O,
      O => error_o
    );
  escribir_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 526 ps
    )
    port map (
      I => escribir,
      O => escribir_INBUF
    );
  rst_n_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n,
      O => rst_n_INBUF
    );
  nueva_clave_0_IBUF : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 526 ps
    )
    port map (
      I => nueva_clave(0),
      O => nueva_clave_0_INBUF
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  i_din_5_21 : X_LUT4
    generic map(
      INIT => X"4040",
      LOC => "SLICE_X28Y83"
    )
    port map (
      ADR0 => STATE_FSM_FFd2_327,
      ADR1 => STATE_FSM_FFd1_326,
      ADR2 => STATE_FSM_FFd3_328,
      ADR3 => VCC,
      O => N13_pack_2
    );
  i_din_4_1 : X_LUT4
    generic map(
      INIT => X"C060",
      LOC => "SLICE_X28Y83"
    )
    port map (
      ADR0 => u_reg_i_data(3),
      ADR1 => u_reg_i_data(4),
      ADR2 => N13,
      ADR3 => N15_0,
      O => i_din(4)
    );
  u_reg_i_data_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y83",
      PATHPULSE => 526 ps
    )
    port map (
      I => i_din(4),
      O => u_reg_i_data_4_DXMUX_1093
    );
  u_reg_i_data_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y83",
      PATHPULSE => 526 ps
    )
    port map (
      I => N13_pack_2,
      O => N13
    );
  u_reg_i_data_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y83",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => u_reg_i_data_4_SRINV_1077
    );
  u_reg_i_data_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y83",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_reg_i_data_4_CLKINV_1076
    );
  u_reg_i_data_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y83",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd2_In69_0,
      O => u_reg_i_data_4_CEINV_1075
    );
  u_reg_i_data_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y82",
      PATHPULSE => 526 ps
    )
    port map (
      I => i_din(3),
      O => u_reg_i_data_3_DXMUX_1129
    );
  u_reg_i_data_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y82",
      PATHPULSE => 526 ps
    )
    port map (
      I => i_din_3_SW1_O_pack_2,
      O => i_din_3_SW1_O
    );
  u_reg_i_data_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y82",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => u_reg_i_data_3_SRINV_1114
    );
  u_reg_i_data_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y82",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_reg_i_data_3_CLKINV_1113
    );
  u_reg_i_data_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y82",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd2_In69_0,
      O => u_reg_i_data_3_CEINV_1112
    );
  u_reg_i_data_5 : X_SFF
    generic map(
      LOC => "SLICE_X28Y84",
      INIT => '0'
    )
    port map (
      I => u_reg_i_data_5_DXMUX_1165,
      CE => u_reg_i_data_5_CEINV_1148,
      CLK => u_reg_i_data_5_CLKINV_1149,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_i_data_5_SRINV_1150,
      O => u_reg_i_data(5)
    );
  u_reg_i_data_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y84",
      PATHPULSE => 526 ps
    )
    port map (
      I => i_din(5),
      O => u_reg_i_data_5_DXMUX_1165
    );
  u_reg_i_data_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y84",
      PATHPULSE => 526 ps
    )
    port map (
      I => i_din_5_SW0_O_pack_2,
      O => i_din_5_SW0_O
    );
  u_reg_i_data_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y84",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => u_reg_i_data_5_SRINV_1150
    );
  u_reg_i_data_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y84",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_reg_i_data_5_CLKINV_1149
    );
  u_reg_i_data_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y84",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd2_In69_0,
      O => u_reg_i_data_5_CEINV_1148
    );
  STATE_FSM_FFd2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd2_In311_SW0_O_pack_1,
      O => STATE_FSM_FFd2_In311_SW0_O
    );
  STATE_FSM_FFd2_REVUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd2_In69_0,
      O => STATE_FSM_FFd2_REVUSED_1195
    );
  STATE_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd2_In72,
      O => STATE_FSM_FFd2_DYMUX_1194
    );
  STATE_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => STATE_FSM_FFd2_SRINV_1185
    );
  STATE_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y89",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => STATE_FSM_FFd2_CLKINV_1184
    );
  STATE_FSM_FFd3_In60_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd3_In60_1229,
      O => STATE_FSM_FFd3_In60_0
    );
  STATE_FSM_FFd3_In60_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y86",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd3_In60_SW1_O_pack_1,
      O => STATE_FSM_FFd3_In60_SW1_O
    );
  STATE_FSM_FFd3_In66_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd3_In66_1253,
      O => STATE_FSM_FFd3_In66_0
    );
  STATE_FSM_FFd3_In66_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y87",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd3_In21_O_pack_1,
      O => STATE_FSM_FFd3_In21_O
    );
  u_reg_i_data_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y83",
      PATHPULSE => 526 ps
    )
    port map (
      I => i_din(1),
      O => u_reg_i_data_1_DXMUX_1292
    );
  u_reg_i_data_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y83",
      PATHPULSE => 526 ps
    )
    port map (
      I => i_din(0),
      O => u_reg_i_data_1_DYMUX_1278
    );
  u_reg_i_data_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y83",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_IBUF_338,
      O => u_reg_i_data_1_SRINV_1270
    );
  u_reg_i_data_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y83",
      PATHPULSE => 526 ps
    )
    port map (
      I => clk_BUFGP,
      O => u_reg_i_data_1_CLKINV_1269
    );
  u_reg_i_data_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y83",
      PATHPULSE => 526 ps
    )
    port map (
      I => STATE_FSM_FFd2_In69_0,
      O => u_reg_i_data_1_CEINV_1268
    );
  u_rams_do_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y89",
      INIT => '0'
    )
    port map (
      I => u_rams_do_0_DXMUX_854,
      CE => VCC,
      CLK => u_rams_do_0_CLKINV_822,
      SET => GND,
      RST => GND,
      O => u_rams_do(0)
    );
  STATE_FSM_FFd3_In112 : X_LUT4
    generic map(
      INIT => X"0F0C",
      LOC => "SLICE_X31Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ini_IBUF_340,
      ADR2 => STATE_FSM_FFd2_327,
      ADR3 => STATE_FSM_FFd3_328,
      O => STATE_FSM_FFd3_In112_482
    );
  STATE_FSM_Out01 : X_LUT4
    generic map(
      INIT => X"0300",
      LOC => "SLICE_X32Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => STATE_FSM_FFd2_327,
      ADR2 => STATE_FSM_FFd1_326,
      ADR3 => STATE_FSM_FFd3_328,
      O => ff_error_load
    );
  STATE_FSM_FFd2_In311_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"7DBE",
      LOC => "SLICE_X30Y88"
    )
    port map (
      ADR0 => clave_3_IBUF_333,
      ADR1 => u_rams_do(0),
      ADR2 => clave_0_IBUF_331,
      ADR3 => u_rams_do(3),
      O => N20
    );
  STATE_FSM_FFd2_In31 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X30Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => u_rams_do(0),
      ADR2 => VCC,
      ADR3 => clave_0_IBUF_331,
      O => N111
    );
  STATE_FSM_Out21 : X_LUT4
    generic map(
      INIT => X"0500",
      LOC => "SLICE_X29Y89"
    )
    port map (
      ADR0 => STATE_FSM_FFd3_328,
      ADR1 => VCC,
      ADR2 => STATE_FSM_FFd2_327,
      ADR3 => STATE_FSM_FFd1_326,
      O => rams_we
    );
  STATE_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"F550",
      LOC => "SLICE_X29Y89"
    )
    port map (
      ADR0 => STATE_FSM_FFd3_328,
      ADR1 => VCC,
      ADR2 => STATE_FSM_FFd2_327,
      ADR3 => STATE_FSM_FFd1_326,
      O => STATE_FSM_FFd1_In
    );
  STATE_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X29Y89",
      INIT => '0'
    )
    port map (
      I => STATE_FSM_FFd1_DXMUX_456,
      CE => VCC,
      CLK => STATE_FSM_FFd1_CLKINV_438,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => STATE_FSM_FFd1_SRINV_439,
      O => STATE_FSM_FFd1_326
    );
  u_reg_data_0 : X_SFF
    generic map(
      LOC => "SLICE_X32Y89",
      INIT => '0'
    )
    port map (
      I => u_reg_data_1_DYMUX_496,
      CE => u_reg_data_1_CEINV_492,
      CLK => u_reg_data_1_CLKINV_493,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_data_1_SRINV_494,
      O => u_reg_data(0)
    );
  u_reg_data_1 : X_SFF
    generic map(
      LOC => "SLICE_X32Y89",
      INIT => '0'
    )
    port map (
      I => u_reg_data_1_DXMUX_503,
      CE => u_reg_data_1_CEINV_492,
      CLK => u_reg_data_1_CLKINV_493,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_data_1_SRINV_494,
      O => u_reg_data(1)
    );
  u_reg_data_2 : X_SFF
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => '0'
    )
    port map (
      I => u_reg_data_3_DYMUX_520,
      CE => u_reg_data_3_CEINV_516,
      CLK => u_reg_data_3_CLKINV_517,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_data_3_SRINV_518,
      O => u_reg_data(2)
    );
  u_reg_data_3 : X_SFF
    generic map(
      LOC => "SLICE_X33Y88",
      INIT => '0'
    )
    port map (
      I => u_reg_data_3_DXMUX_527,
      CE => u_reg_data_3_CEINV_516,
      CLK => u_reg_data_3_CLKINV_517,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_data_3_SRINV_518,
      O => u_reg_data(3)
    );
  u_reg_data_4 : X_SFF
    generic map(
      LOC => "SLICE_X30Y90",
      INIT => '0'
    )
    port map (
      I => u_reg_data_4_DYMUX_542,
      CE => u_reg_data_4_CEINV_538,
      CLK => u_reg_data_4_CLKINV_539,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_data_4_SRINV_540,
      O => u_reg_data(4)
    );
  STATE_FSM_FFd3_In1151 : X_LUT4
    generic map(
      INIT => X"F070",
      LOC => "SLICE_X30Y87"
    )
    port map (
      ADR0 => STATE_FSM_FFd3_328,
      ADR1 => escribir_IBUF_354,
      ADR2 => STATE_FSM_FFd1_326,
      ADR3 => STATE_FSM_FFd3_In66_0,
      O => STATE_FSM_FFd3_In115
    );
  STATE_FSM_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X30Y87",
      INIT => '0'
    )
    port map (
      I => STATE_FSM_FFd3_DYMUX_570,
      CE => VCC,
      CLK => STATE_FSM_FFd3_CLKINV_560,
      SET => GND,
      RST => GND,
      SSET => STATE_FSM_FFd3_REVUSED_571,
      SRST => STATE_FSM_FFd3_SRINV_561,
      O => STATE_FSM_FFd3_328
    );
  STATE_FSM_FFd2_In8 : X_LUT4
    generic map(
      INIT => X"030F",
      LOC => "SLICE_X30Y87"
    )
    port map (
      ADR0 => VCC,
      ADR1 => u_reg_i_data(5),
      ADR2 => STATE_FSM_FFd1_326,
      ADR3 => STATE_FSM_FFd3_328,
      O => STATE_FSM_FFd2_In8_582
    );
  STATE_FSM_FFd3_In21_SW0 : X_LUT4
    generic map(
      INIT => X"7755",
      LOC => "SLICE_X29Y86"
    )
    port map (
      ADR0 => clave_1_IBUF_358,
      ADR1 => clave_2_IBUF_357,
      ADR2 => VCC,
      ADR3 => u_rams_do(2),
      O => N131
    );
  STATE_FSM_FFd3_In60_SW0 : X_LUT4
    generic map(
      INIT => X"FFB7",
      LOC => "SLICE_X29Y86"
    )
    port map (
      ADR0 => clave_1_IBUF_358,
      ADR1 => clave_2_IBUF_357,
      ADR2 => u_rams_do(1),
      ADR3 => u_rams_do(2),
      O => N17
    );
  u_flip2_data : X_SFF
    generic map(
      LOC => "SLICE_X34Y90",
      INIT => '0'
    )
    port map (
      I => u_flip2_data_DYMUX_618,
      CE => u_flip2_data_CEINV_614,
      CLK => u_flip2_data_CLKINV_615,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_flip2_data_SRINV_616,
      O => u_flip2_data_364
    );
  i_din_3_111 : X_LUT4
    generic map(
      INIT => X"77FF",
      LOC => "SLICE_X28Y82"
    )
    port map (
      ADR0 => u_reg_i_data(1),
      ADR1 => u_reg_i_data(0),
      ADR2 => VCC,
      ADR3 => u_reg_i_data(2),
      O => N15
    );
  i_din_2_1 : X_LUT4
    generic map(
      INIT => X"7080",
      LOC => "SLICE_X28Y82"
    )
    port map (
      ADR0 => u_reg_i_data(1),
      ADR1 => u_reg_i_data(0),
      ADR2 => N13,
      ADR3 => u_reg_i_data(2),
      O => i_din(2)
    );
  u_reg_i_data_2 : X_SFF
    generic map(
      LOC => "SLICE_X28Y82",
      INIT => '0'
    )
    port map (
      I => u_reg_i_data_2_DXMUX_654,
      CE => u_reg_i_data_2_CEINV_636,
      CLK => u_reg_i_data_2_CLKINV_637,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_i_data_2_SRINV_638,
      O => u_reg_i_data(2)
    );
  u_comp_s311 : X_LUT4
    generic map(
      INIT => X"30B2",
      LOC => "SLICE_X31Y86"
    )
    port map (
      ADR0 => clave_2_IBUF_357,
      ADR1 => u_rams_do(3),
      ADR2 => clave_3_IBUF_333,
      ADR3 => u_rams_do(2),
      O => N10
    );
  u_comp_s321 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X31Y86"
    )
    port map (
      ADR0 => VCC,
      ADR1 => clave_2_IBUF_357,
      ADR2 => VCC,
      ADR3 => u_rams_do(2),
      O => N12
    );
  u_rams_Mram_RAM3_G : X_RAMD16
    generic map(
      INIT => X"807C",
      LOC => "SLICE_X28Y87"
    )
    port map (
      RADR0 => NlwBufferSignal_u_rams_Mram_RAM3_G_RADR1,
      RADR1 => NlwBufferSignal_u_rams_Mram_RAM3_G_RADR2,
      RADR2 => NlwBufferSignal_u_rams_Mram_RAM3_G_RADR3,
      RADR3 => NlwBufferSignal_u_rams_Mram_RAM3_G_RADR4,
      WADR0 => NlwBufferSignal_u_rams_Mram_RAM3_G_WADR1,
      WADR1 => NlwBufferSignal_u_rams_Mram_RAM3_G_WADR2,
      WADR2 => NlwBufferSignal_u_rams_Mram_RAM3_G_WADR3,
      WADR3 => NlwBufferSignal_u_rams_Mram_RAM3_G_WADR4,
      I => u_rams_do_2_DIG_MUX_708,
      CLK => u_rams_do_2_CLKINV_706,
      WE => u_rams_do_2_WSG,
      O => u_rams_Mram_RAM3_G_720
    );
  u_rams_Mram_RAM3_F : X_RAMD16
    generic map(
      INIT => X"F00F",
      LOC => "SLICE_X28Y87"
    )
    port map (
      RADR0 => NlwBufferSignal_u_rams_Mram_RAM3_F_RADR1,
      RADR1 => NlwBufferSignal_u_rams_Mram_RAM3_F_RADR2,
      RADR2 => NlwBufferSignal_u_rams_Mram_RAM3_F_RADR3,
      RADR3 => NlwBufferSignal_u_rams_Mram_RAM3_F_RADR4,
      WADR0 => NlwBufferSignal_u_rams_Mram_RAM3_F_WADR1,
      WADR1 => NlwBufferSignal_u_rams_Mram_RAM3_F_WADR2,
      WADR2 => NlwBufferSignal_u_rams_Mram_RAM3_F_WADR3,
      WADR3 => NlwBufferSignal_u_rams_Mram_RAM3_F_WADR4,
      I => u_rams_do_2_DIF_MUX_722,
      CLK => u_rams_do_2_CLKINV_706,
      WE => u_rams_do_2_WSF,
      O => u_rams_Mram_RAM3_F_734
    );
  u_rams_do_2 : X_FF
    generic map(
      LOC => "SLICE_X28Y87",
      INIT => '0'
    )
    port map (
      I => u_rams_do_2_DXMUX_738,
      CE => VCC,
      CLK => u_rams_do_2_CLKINV_706,
      SET => GND,
      RST => GND,
      O => u_rams_do(2)
    );
  u_rams_do_3 : X_FF
    generic map(
      LOC => "SLICE_X28Y88",
      INIT => '0'
    )
    port map (
      I => u_rams_do_3_DXMUX_796,
      CE => VCC,
      CLK => u_rams_do_3_CLKINV_764,
      SET => GND,
      RST => GND,
      O => u_rams_do(3)
    );
  u_rams_Mram_RAM2_F : X_RAMD16
    generic map(
      INIT => X"0BEC",
      LOC => "SLICE_X28Y86"
    )
    port map (
      RADR0 => NlwBufferSignal_u_rams_Mram_RAM2_F_RADR1,
      RADR1 => NlwBufferSignal_u_rams_Mram_RAM2_F_RADR2,
      RADR2 => NlwBufferSignal_u_rams_Mram_RAM2_F_RADR3,
      RADR3 => NlwBufferSignal_u_rams_Mram_RAM2_F_RADR4,
      WADR0 => NlwBufferSignal_u_rams_Mram_RAM2_F_WADR1,
      WADR1 => NlwBufferSignal_u_rams_Mram_RAM2_F_WADR2,
      WADR2 => NlwBufferSignal_u_rams_Mram_RAM2_F_WADR3,
      WADR3 => NlwBufferSignal_u_rams_Mram_RAM2_F_WADR4,
      I => u_rams_do_1_DIF_MUX_896,
      CLK => u_rams_do_1_CLKINV_880,
      WE => u_rams_do_1_WSF,
      O => u_rams_Mram_RAM2_F_908
    );
  u_rams_Mram_RAM1_G : X_RAMD16
    generic map(
      INIT => X"2151",
      LOC => "SLICE_X28Y89"
    )
    port map (
      RADR0 => NlwBufferSignal_u_rams_Mram_RAM1_G_RADR1,
      RADR1 => NlwBufferSignal_u_rams_Mram_RAM1_G_RADR2,
      RADR2 => NlwBufferSignal_u_rams_Mram_RAM1_G_RADR3,
      RADR3 => NlwBufferSignal_u_rams_Mram_RAM1_G_RADR4,
      WADR0 => NlwBufferSignal_u_rams_Mram_RAM1_G_WADR1,
      WADR1 => NlwBufferSignal_u_rams_Mram_RAM1_G_WADR2,
      WADR2 => NlwBufferSignal_u_rams_Mram_RAM1_G_WADR3,
      WADR3 => NlwBufferSignal_u_rams_Mram_RAM1_G_WADR4,
      I => u_rams_do_0_DIG_MUX_824,
      CLK => u_rams_do_0_CLKINV_822,
      WE => u_rams_do_0_WSG,
      O => u_rams_Mram_RAM1_G_836
    );
  u_rams_Mram_RAM1_F : X_RAMD16
    generic map(
      INIT => X"440A",
      LOC => "SLICE_X28Y89"
    )
    port map (
      RADR0 => NlwBufferSignal_u_rams_Mram_RAM1_F_RADR1,
      RADR1 => NlwBufferSignal_u_rams_Mram_RAM1_F_RADR2,
      RADR2 => NlwBufferSignal_u_rams_Mram_RAM1_F_RADR3,
      RADR3 => NlwBufferSignal_u_rams_Mram_RAM1_F_RADR4,
      WADR0 => NlwBufferSignal_u_rams_Mram_RAM1_F_WADR1,
      WADR1 => NlwBufferSignal_u_rams_Mram_RAM1_F_WADR2,
      WADR2 => NlwBufferSignal_u_rams_Mram_RAM1_F_WADR3,
      WADR3 => NlwBufferSignal_u_rams_Mram_RAM1_F_WADR4,
      I => u_rams_do_0_DIF_MUX_838,
      CLK => u_rams_do_0_CLKINV_822,
      WE => u_rams_do_0_WSF,
      O => u_rams_Mram_RAM1_F_850
    );
  u_rams_do_1 : X_FF
    generic map(
      LOC => "SLICE_X28Y86",
      INIT => '0'
    )
    port map (
      I => u_rams_do_1_DXMUX_912,
      CE => VCC,
      CLK => u_rams_do_1_CLKINV_880,
      SET => GND,
      RST => GND,
      O => u_rams_do(1)
    );
  clave_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 526 ps
    )
    port map (
      I => clave_0_INBUF,
      O => clave_0_IBUF_331
    );
  clave_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 526 ps
    )
    port map (
      I => clave_1_INBUF,
      O => clave_1_IBUF_358
    );
  clave_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD50",
      PATHPULSE => 526 ps
    )
    port map (
      I => clave_2_INBUF,
      O => clave_2_IBUF_357
    );
  ini_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 526 ps
    )
    port map (
      I => ini_INBUF,
      O => ini_IBUF_340
    );
  escribir_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 526 ps
    )
    port map (
      I => escribir_INBUF,
      O => escribir_IBUF_354
    );
  rst_n_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 526 ps
    )
    port map (
      I => rst_n_INBUF,
      O => rst_n_IBUF_338
    );
  u_reg_i_data_4 : X_SFF
    generic map(
      LOC => "SLICE_X28Y83",
      INIT => '0'
    )
    port map (
      I => u_reg_i_data_4_DXMUX_1093,
      CE => u_reg_i_data_4_CEINV_1075,
      CLK => u_reg_i_data_4_CLKINV_1076,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_i_data_4_SRINV_1077,
      O => u_reg_i_data(4)
    );
  i_din_3_SW1 : X_LUT4
    generic map(
      INIT => X"807F",
      LOC => "SLICE_X29Y82"
    )
    port map (
      ADR0 => u_reg_i_data(2),
      ADR1 => u_reg_i_data(1),
      ADR2 => u_reg_i_data(0),
      ADR3 => u_reg_i_data(3),
      O => i_din_3_SW1_O_pack_2
    );
  i_din_3_Q : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X29Y82"
    )
    port map (
      ADR0 => STATE_FSM_FFd1_326,
      ADR1 => STATE_FSM_FFd3_328,
      ADR2 => i_din_3_SW1_O,
      ADR3 => STATE_FSM_FFd2_327,
      O => i_din(3)
    );
  u_reg_i_data_3 : X_SFF
    generic map(
      LOC => "SLICE_X29Y82",
      INIT => '0'
    )
    port map (
      I => u_reg_i_data_3_DXMUX_1129,
      CE => u_reg_i_data_3_CEINV_1112,
      CLK => u_reg_i_data_3_CLKINV_1113,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_i_data_3_SRINV_1114,
      O => u_reg_i_data(3)
    );
  i_din_5_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "SLICE_X28Y84"
    )
    port map (
      ADR0 => u_reg_i_data(1),
      ADR1 => u_reg_i_data(3),
      ADR2 => u_reg_i_data(0),
      ADR3 => u_reg_i_data(2),
      O => i_din_5_SW0_O_pack_2
    );
  i_din_5_Q : X_LUT4
    generic map(
      INIT => X"8828",
      LOC => "SLICE_X28Y84"
    )
    port map (
      ADR0 => N13,
      ADR1 => u_reg_i_data(5),
      ADR2 => u_reg_i_data(4),
      ADR3 => i_din_5_SW0_O,
      O => i_din(5)
    );
  i_din_0_1 : X_LUT4
    generic map(
      INIT => X"0008",
      LOC => "SLICE_X29Y83"
    )
    port map (
      ADR0 => STATE_FSM_FFd1_326,
      ADR1 => STATE_FSM_FFd3_328,
      ADR2 => u_reg_i_data(0),
      ADR3 => STATE_FSM_FFd2_327,
      O => i_din(0)
    );
  STATE_FSM_FFd2_In721 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X31Y89"
    )
    port map (
      ADR0 => STATE_FSM_FFd2_In311_SW0_O,
      ADR1 => STATE_FSM_FFd2_In8_0,
      ADR2 => STATE_FSM_FFd2_327,
      ADR3 => N12_0,
      O => STATE_FSM_FFd2_In72
    );
  STATE_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X31Y89",
      INIT => '0'
    )
    port map (
      I => STATE_FSM_FFd2_DYMUX_1194,
      CE => VCC,
      CLK => STATE_FSM_FFd2_CLKINV_1184,
      SET => GND,
      RST => GND,
      SSET => STATE_FSM_FFd2_REVUSED_1195,
      SRST => STATE_FSM_FFd2_SRINV_1185,
      O => STATE_FSM_FFd2_327
    );
  STATE_FSM_FFd2_In311_SW0 : X_LUT4
    generic map(
      INIT => X"1001",
      LOC => "SLICE_X31Y89"
    )
    port map (
      ADR0 => N20_0,
      ADR1 => STATE_FSM_FFd3_328,
      ADR2 => clave_1_IBUF_358,
      ADR3 => u_rams_do(1),
      O => STATE_FSM_FFd2_In311_SW0_O_pack_1
    );
  STATE_FSM_FFd3_In60_SW1 : X_LUT4
    generic map(
      INIT => X"8421",
      LOC => "SLICE_X30Y86"
    )
    port map (
      ADR0 => u_rams_do(2),
      ADR1 => clave_1_IBUF_358,
      ADR2 => clave_2_IBUF_357,
      ADR3 => u_rams_do(1),
      O => STATE_FSM_FFd3_In60_SW1_O_pack_1
    );
  STATE_FSM_FFd3_In60 : X_LUT4
    generic map(
      INIT => X"F6B2",
      LOC => "SLICE_X30Y86"
    )
    port map (
      ADR0 => u_rams_do(3),
      ADR1 => clave_3_IBUF_333,
      ADR2 => N17_0,
      ADR3 => STATE_FSM_FFd3_In60_SW1_O,
      O => STATE_FSM_FFd3_In60_1229
    );
  STATE_FSM_FFd3_In21 : X_LUT4
    generic map(
      INIT => X"FFF4",
      LOC => "SLICE_X31Y87"
    )
    port map (
      ADR0 => clave_3_IBUF_333,
      ADR1 => u_rams_do(3),
      ADR2 => N131_0,
      ADR3 => u_rams_do(1),
      O => STATE_FSM_FFd3_In21_O_pack_1
    );
  STATE_FSM_FFd3_In66 : X_LUT4
    generic map(
      INIT => X"BA00",
      LOC => "SLICE_X31Y87"
    )
    port map (
      ADR0 => N111_0,
      ADR1 => N10_0,
      ADR2 => STATE_FSM_FFd3_In21_O,
      ADR3 => STATE_FSM_FFd3_In60_0,
      O => STATE_FSM_FFd3_In66_1253
    );
  u_reg_i_data_0 : X_SFF
    generic map(
      LOC => "SLICE_X29Y83",
      INIT => '0'
    )
    port map (
      I => u_reg_i_data_1_DYMUX_1278,
      CE => u_reg_i_data_1_CEINV_1268,
      CLK => u_reg_i_data_1_CLKINV_1269,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_i_data_1_SRINV_1270,
      O => u_reg_i_data(0)
    );
  i_din_1_1 : X_LUT4
    generic map(
      INIT => X"4848",
      LOC => "SLICE_X29Y83"
    )
    port map (
      ADR0 => u_reg_i_data(1),
      ADR1 => N13,
      ADR2 => u_reg_i_data(0),
      ADR3 => VCC,
      O => i_din(1)
    );
  u_reg_i_data_1 : X_SFF
    generic map(
      LOC => "SLICE_X29Y83",
      INIT => '0'
    )
    port map (
      I => u_reg_i_data_1_DXMUX_1292,
      CE => u_reg_i_data_1_CEINV_1268,
      CLK => u_reg_i_data_1_CLKINV_1269,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => u_reg_i_data_1_SRINV_1270,
      O => u_reg_i_data(1)
    );
  u_rams_Mram_RAM3_F_WE_WSFAND : X_AND2
    generic map(
      LOC => "SLICE_X28Y87"
    )
    port map (
      I0 => u_rams_do_2_SLICEWE0USED_698,
      I1 => u_rams_do_2_SRINV_700,
      O => u_rams_do_2_WSF
    );
  u_rams_Mram_RAM3_F_WE_WSGAND : X_AND2
    generic map(
      LOC => "SLICE_X28Y87"
    )
    port map (
      I0 => NlwInverterSignal_u_rams_Mram_RAM3_F_WE_WSGAND_WE0,
      I1 => u_rams_do_2_SRINV_700,
      O => u_rams_do_2_WSG
    );
  u_rams_Mram_RAM4_F_WE_WSFAND : X_AND2
    generic map(
      LOC => "SLICE_X28Y88"
    )
    port map (
      I0 => u_rams_do_3_SLICEWE0USED_756,
      I1 => u_rams_do_3_SRINV_758,
      O => u_rams_do_3_WSF
    );
  u_rams_Mram_RAM4_F_WE_WSGAND : X_AND2
    generic map(
      LOC => "SLICE_X28Y88"
    )
    port map (
      I0 => NlwInverterSignal_u_rams_Mram_RAM4_F_WE_WSGAND_WE0,
      I1 => u_rams_do_3_SRINV_758,
      O => u_rams_do_3_WSG
    );
  u_rams_Mram_RAM1_F_WE_WSFAND : X_AND2
    generic map(
      LOC => "SLICE_X28Y89"
    )
    port map (
      I0 => u_rams_do_0_SLICEWE0USED_814,
      I1 => u_rams_do_0_SRINV_816,
      O => u_rams_do_0_WSF
    );
  u_rams_Mram_RAM1_F_WE_WSGAND : X_AND2
    generic map(
      LOC => "SLICE_X28Y89"
    )
    port map (
      I0 => NlwInverterSignal_u_rams_Mram_RAM1_F_WE_WSGAND_WE0,
      I1 => u_rams_do_0_SRINV_816,
      O => u_rams_do_0_WSG
    );
  u_rams_Mram_RAM2_F_WE_WSFAND : X_AND2
    generic map(
      LOC => "SLICE_X28Y86"
    )
    port map (
      I0 => u_rams_do_1_SLICEWE0USED_872,
      I1 => u_rams_do_1_SRINV_874,
      O => u_rams_do_1_WSF
    );
  u_rams_Mram_RAM2_F_WE_WSGAND : X_AND2
    generic map(
      LOC => "SLICE_X28Y86"
    )
    port map (
      I0 => NlwInverterSignal_u_rams_Mram_RAM2_F_WE_WSGAND_WE0,
      I1 => u_rams_do_1_SRINV_874,
      O => u_rams_do_1_WSG
    );
  dir_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_data(0),
      O => dir_0_O
    );
  dir_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_data(1),
      O => dir_1_O
    );
  dir_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_data(2),
      O => dir_2_O
    );
  dir_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_data(3),
      O => dir_3_O
    );
  dir_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_data(4),
      O => dir_4_O
    );
  error_o_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 526 ps
    )
    port map (
      I => u_flip2_data_364,
      O => error_o_O
    );
  NlwBufferBlock_u_rams_Mram_RAM4_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM4_G_RADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM4_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM4_G_RADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM4_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM4_G_RADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM4_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM4_G_RADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM4_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM4_G_WADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM4_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM4_G_WADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM4_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM4_G_WADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM4_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM4_G_WADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM4_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM4_F_RADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM4_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM4_F_RADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM4_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM4_F_RADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM4_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM4_F_RADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM4_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM4_F_WADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM4_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM4_F_WADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM4_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM4_F_WADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM4_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM4_F_WADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM2_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM2_G_RADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM2_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM2_G_RADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM2_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM2_G_RADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM2_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM2_G_RADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM2_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM2_G_WADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM2_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM2_G_WADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM2_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM2_G_WADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM2_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM2_G_WADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM3_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM3_G_RADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM3_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM3_G_RADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM3_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM3_G_RADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM3_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM3_G_RADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM3_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM3_G_WADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM3_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM3_G_WADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM3_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM3_G_WADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM3_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM3_G_WADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM3_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM3_F_RADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM3_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM3_F_RADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM3_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM3_F_RADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM3_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM3_F_RADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM3_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM3_F_WADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM3_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM3_F_WADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM3_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM3_F_WADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM3_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM3_F_WADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM2_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM2_F_RADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM2_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM2_F_RADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM2_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM2_F_RADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM2_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM2_F_RADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM2_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM2_F_WADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM2_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM2_F_WADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM2_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM2_F_WADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM2_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM2_F_WADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM1_G_RADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM1_G_RADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM1_G_RADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM1_G_RADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM1_G_RADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM1_G_RADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM1_G_RADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM1_G_RADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM1_G_WADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM1_G_WADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM1_G_WADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM1_G_WADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM1_G_WADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM1_G_WADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM1_G_WADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM1_G_WADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM1_F_RADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM1_F_RADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM1_F_RADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM1_F_RADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM1_F_RADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM1_F_RADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM1_F_RADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM1_F_RADR4
    );
  NlwBufferBlock_u_rams_Mram_RAM1_F_WADR1 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(0),
      O => NlwBufferSignal_u_rams_Mram_RAM1_F_WADR1
    );
  NlwBufferBlock_u_rams_Mram_RAM1_F_WADR2 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(1),
      O => NlwBufferSignal_u_rams_Mram_RAM1_F_WADR2
    );
  NlwBufferBlock_u_rams_Mram_RAM1_F_WADR3 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(2),
      O => NlwBufferSignal_u_rams_Mram_RAM1_F_WADR3
    );
  NlwBufferBlock_u_rams_Mram_RAM1_F_WADR4 : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => u_reg_i_data(3),
      O => NlwBufferSignal_u_rams_Mram_RAM1_F_WADR4
    );
  NlwBlock_asm_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_asm_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_u_rams_Mram_RAM3_F_WE_WSGAND_WE0 : X_INV
    port map (
      I => u_rams_do_2_SLICEWE0USED_698,
      O => NlwInverterSignal_u_rams_Mram_RAM3_F_WE_WSGAND_WE0
    );
  NlwInverterBlock_u_rams_Mram_RAM4_F_WE_WSGAND_WE0 : X_INV
    port map (
      I => u_rams_do_3_SLICEWE0USED_756,
      O => NlwInverterSignal_u_rams_Mram_RAM4_F_WE_WSGAND_WE0
    );
  NlwInverterBlock_u_rams_Mram_RAM1_F_WE_WSGAND_WE0 : X_INV
    port map (
      I => u_rams_do_0_SLICEWE0USED_814,
      O => NlwInverterSignal_u_rams_Mram_RAM1_F_WE_WSGAND_WE0
    );
  NlwInverterBlock_u_rams_Mram_RAM2_F_WE_WSGAND_WE0 : X_INV
    port map (
      I => u_rams_do_1_SLICEWE0USED_872,
      O => NlwInverterSignal_u_rams_Mram_RAM2_F_WE_WSGAND_WE0
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

