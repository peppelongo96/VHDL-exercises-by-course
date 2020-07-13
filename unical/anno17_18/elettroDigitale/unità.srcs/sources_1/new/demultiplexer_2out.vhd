----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2018 19:29:59
-- Design Name: 
-- Module Name: demultiplexer_2out - my_demultiplexer
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

entity demultiplexer_2out is
    port ( I0,I1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
           sel : in STD_LOGIC;
           S : out STD_LOGIC_VECTOr ( 3 downto 0 ) );           
end demultiplexer_2out;

architecture my_demultiplexer of demultiplexer_2out is
begin
    S <= I0 when sel = '0' else
         I1;
end my_demultiplexer;
