----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2018 19:04:35
-- Design Name: 
-- Module Name: encoder_8in - my_enc
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

entity encoder_8bit is
    port ( I : in STD_LOGIC_VECTOR ( 7 downto 0 );
           O : out STD_LOGIC_VECTOR ( 2 downto 0 ) );
end encoder_8bit;

architecture my_enc of encoder_8bit is
--da rivedere con statement squenziali
begin
    O <= "000" when I="00000001" else
         "001" when I="00000010" else
         "010" when I="00000100" else
         "011" when I="00001000" else
         "100" when I="00010000" else
         "101" when I="00100000" else
         "110" when I="01000000" else
         "111" when I="10000000";
end my_enc;
