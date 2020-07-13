----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2018 17:18:03
-- Design Name: 
-- Module Name: multiplexer - my_mux
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer_8in is
    port ( I0,I1,I2,I3,I4,I5,I6,I7 : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR( 2 downto 0 );
           O : out STD_LOGIC );
end multiplexer_8in;

architecture my_mux_8in_when-els of multiplexer_8in is
    begin
        O <= I0 when sel="000" else
             I1 when sel="001" else
             I2 when sel="010" else
             I3 when sel="011" else
             I4 when sel="100" else
             I5 when sel="101" else
             I6 when sel="110" else
             I7 when sel="111" else
             'x' when others;
end my_mux_8in_when-els;

architecture my_mux_8in_with-sel of multiplexer_8in is
    begin 
        with sel select
        O <= I0 when "000",
             I1 when "001",
             I2 when "010",
             I3 when "011",
             I4 when "100",
             I5 when "101",
             I6 when "110",
             I7 when "111",
             'x' when others;
end my_mux_8in_with-sel;