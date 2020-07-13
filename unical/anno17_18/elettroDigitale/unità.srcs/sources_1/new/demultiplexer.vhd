----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2018 18:14:16
-- Design Name: 
-- Module Name: demultiplexer - my_demux_8out
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

entity demultiplexer is
    port ( I : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
           O0,O1,O2,O3,O4,O5,O6,O7 : out STD_LOGIC );
end demultiplexer;

architecture my_demux_8out of demultiplexer is
    begin
       with sel select
       O0 <= I when "000";
       with sel select
       O1 <= I when "001";
       with sel select
       O2 <= I when "010";
       with sel select
       O3 <= I when "011";
       with sel select
       O4 <= I when "100";
       with sel select
       O5 <= I when "101";
       with sel select
       O6 <= I when "110";
       with sel select
       O7 <= I when "111";
end my_demux_8out;
