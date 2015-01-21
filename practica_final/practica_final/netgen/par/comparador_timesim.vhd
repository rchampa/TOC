--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.15xf
--  \   \         Application: netgen
--  /   /         Filename: comparador_timesim.vhd
-- /___/   /\     Timestamp: Wed Jan 21 18:51:53 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf comparador.pcf -rpw 100 -tpw 0 -ar Structure -tm comparador -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim comparador.ncd comparador_timesim.vhd 
-- Device	: 3s1000ft256-5 (PRODUCTION 1.39 2012-04-23)
-- Input file	: comparador.ncd
-- Output file	: C:\hlocal\TOC\practica_final\practica_final\netgen\par\comparador_timesim.vhd
-- # of Entities	: 1
-- Design Name	: comparador
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

entity comparador is
  port (
    c : in STD_LOGIC := 'X'; 
    s : out STD_LOGIC; 
    x : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    y : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end comparador;

architecture Structure of comparador is
  signal x_0_IBUF_61 : STD_LOGIC; 
  signal x_1_IBUF_62 : STD_LOGIC; 
  signal x_2_IBUF_63 : STD_LOGIC; 
  signal x_3_IBUF_64 : STD_LOGIC; 
  signal y_0_IBUF_65 : STD_LOGIC; 
  signal y_1_IBUF_66 : STD_LOGIC; 
  signal y_2_IBUF_67 : STD_LOGIC; 
  signal c_IBUF_69 : STD_LOGIC; 
  signal s124_0 : STD_LOGIC; 
  signal s_bdd0_0 : STD_LOGIC; 
  signal s_bdd3_0 : STD_LOGIC; 
  signal s_bdd4 : STD_LOGIC; 
  signal s_O : STD_LOGIC; 
  signal x_0_INBUF : STD_LOGIC; 
  signal x_1_INBUF : STD_LOGIC; 
  signal x_2_INBUF : STD_LOGIC; 
  signal x_3_INBUF : STD_LOGIC; 
  signal y_0_INBUF : STD_LOGIC; 
  signal y_1_INBUF : STD_LOGIC; 
  signal y_2_INBUF : STD_LOGIC; 
  signal y_3_INBUF : STD_LOGIC; 
  signal c_INBUF : STD_LOGIC; 
  signal s_OBUF_F5MUX_159 : STD_LOGIC; 
  signal s177 : STD_LOGIC; 
  signal s_OBUF_BXINV_152 : STD_LOGIC; 
  signal s1771_150 : STD_LOGIC; 
  signal s_bdd3 : STD_LOGIC; 
  signal s_bdd0 : STD_LOGIC; 
  signal s_bdd4_pack_1 : STD_LOGIC; 
  signal s124_206 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  s_OBUF : X_OBUF
    generic map(
      LOC => "PAD241"
    )
    port map (
      I => s_O,
      O => s
    );
  x_0_IBUF : X_BUF
    generic map(
      LOC => "PAD242",
      PATHPULSE => 658 ps
    )
    port map (
      I => x(0),
      O => x_0_INBUF
    );
  x_1_IBUF : X_BUF
    generic map(
      LOC => "PAD246",
      PATHPULSE => 658 ps
    )
    port map (
      I => x(1),
      O => x_1_INBUF
    );
  x_2_IBUF : X_BUF
    generic map(
      LOC => "PAD238",
      PATHPULSE => 658 ps
    )
    port map (
      I => x(2),
      O => x_2_INBUF
    );
  x_3_IBUF : X_BUF
    generic map(
      LOC => "PAD236",
      PATHPULSE => 658 ps
    )
    port map (
      I => x(3),
      O => x_3_INBUF
    );
  y_0_IBUF : X_BUF
    generic map(
      LOC => "PAD245",
      PATHPULSE => 658 ps
    )
    port map (
      I => y(0),
      O => y_0_INBUF
    );
  y_1_IBUF : X_BUF
    generic map(
      LOC => "PAD244",
      PATHPULSE => 658 ps
    )
    port map (
      I => y(1),
      O => y_1_INBUF
    );
  y_2_IBUF : X_BUF
    generic map(
      LOC => "PAD243",
      PATHPULSE => 658 ps
    )
    port map (
      I => y(2),
      O => y_2_INBUF
    );
  y_3_IBUF : X_BUF
    generic map(
      LOC => "PAD240",
      PATHPULSE => 658 ps
    )
    port map (
      I => y(3),
      O => y_3_INBUF
    );
  c_IBUF : X_BUF
    generic map(
      LOC => "PAD239",
      PATHPULSE => 658 ps
    )
    port map (
      I => c,
      O => c_INBUF
    );
  s_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X45Y0"
    )
    port map (
      IA => s1771_150,
      IB => s177,
      SEL => s_OBUF_BXINV_152,
      O => s_OBUF_F5MUX_159
    );
  s_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X45Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => y_3_INBUF,
      O => s_OBUF_BXINV_152
    );
  s_bdd3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X45Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => s_bdd3,
      O => s_bdd3_0
    );
  s_bdd0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => s_bdd0,
      O => s_bdd0_0
    );
  s_bdd0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y1",
      PATHPULSE => 658 ps
    )
    port map (
      I => s_bdd4_pack_1,
      O => s_bdd4
    );
  s124_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X44Y0",
      PATHPULSE => 658 ps
    )
    port map (
      I => s124_206,
      O => s124_0
    );
  x_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD242",
      PATHPULSE => 658 ps
    )
    port map (
      I => x_0_INBUF,
      O => x_0_IBUF_61
    );
  x_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD246",
      PATHPULSE => 658 ps
    )
    port map (
      I => x_1_INBUF,
      O => x_1_IBUF_62
    );
  x_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD238",
      PATHPULSE => 658 ps
    )
    port map (
      I => x_2_INBUF,
      O => x_2_IBUF_63
    );
  x_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD236",
      PATHPULSE => 658 ps
    )
    port map (
      I => x_3_INBUF,
      O => x_3_IBUF_64
    );
  y_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD245",
      PATHPULSE => 658 ps
    )
    port map (
      I => y_0_INBUF,
      O => y_0_IBUF_65
    );
  y_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD244",
      PATHPULSE => 658 ps
    )
    port map (
      I => y_1_INBUF,
      O => y_1_IBUF_66
    );
  y_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD243",
      PATHPULSE => 658 ps
    )
    port map (
      I => y_2_INBUF,
      O => y_2_IBUF_67
    );
  c_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD239",
      PATHPULSE => 658 ps
    )
    port map (
      I => c_INBUF,
      O => c_IBUF_69
    );
  s1772 : X_LUT4
    generic map(
      INIT => X"0202",
      LOC => "SLICE_X45Y0"
    )
    port map (
      ADR0 => c_IBUF_69,
      ADR1 => x_3_IBUF_64,
      ADR2 => s_bdd0_0,
      ADR3 => VCC,
      O => s1771_150
    );
  s1771 : X_LUT4
    generic map(
      INIT => X"2A08",
      LOC => "SLICE_X45Y0"
    )
    port map (
      ADR0 => c_IBUF_69,
      ADR1 => x_3_IBUF_64,
      ADR2 => s_bdd0_0,
      ADR3 => s124_0,
      O => s177
    );
  s41 : X_LUT4
    generic map(
      INIT => X"FDDF",
      LOC => "SLICE_X45Y1"
    )
    port map (
      ADR0 => y_1_IBUF_66,
      ADR1 => x_1_IBUF_62,
      ADR2 => y_0_IBUF_65,
      ADR3 => x_0_IBUF_61,
      O => s_bdd3
    );
  s61 : X_LUT4
    generic map(
      INIT => X"9009",
      LOC => "SLICE_X44Y1"
    )
    port map (
      ADR0 => x_0_IBUF_61,
      ADR1 => y_0_IBUF_65,
      ADR2 => x_1_IBUF_62,
      ADR3 => y_1_IBUF_66,
      O => s_bdd4_pack_1
    );
  s21 : X_LUT4
    generic map(
      INIT => X"FD64",
      LOC => "SLICE_X44Y1"
    )
    port map (
      ADR0 => y_2_IBUF_67,
      ADR1 => x_2_IBUF_63,
      ADR2 => s_bdd4,
      ADR3 => s_bdd3_0,
      O => s_bdd0
    );
  s124 : X_LUT4
    generic map(
      INIT => X"3FCF",
      LOC => "SLICE_X44Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => y_2_IBUF_67,
      ADR2 => s_bdd4,
      ADR3 => x_2_IBUF_63,
      O => s124_206
    );
  s_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD241",
      PATHPULSE => 658 ps
    )
    port map (
      I => s_OBUF_F5MUX_159,
      O => s_O
    );
  NlwBlock_comparador_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

