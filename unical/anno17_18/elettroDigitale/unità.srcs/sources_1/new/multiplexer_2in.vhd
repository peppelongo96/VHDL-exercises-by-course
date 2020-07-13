----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2018 23:38:15
-- Design Name: 
-- Module Name: multiplexer_2in - my_mux_2in
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

entity multiplexer is
    port ( I0,I1,sel : in STD_LOGIC;
           O : out STD_LOGIC );
end multiplexer;

architecture my_mux_2in of multiplexer is
begin
    with sel select
    O <= I0 when '0',
         I1 when '1',
         'X' when others;
end my_mux_2in;
