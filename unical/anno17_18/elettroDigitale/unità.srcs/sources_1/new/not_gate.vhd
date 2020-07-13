----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2018 19:28:54
-- Design Name: 
-- Module Name: not_gate - my_not_gate
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

entity not_gate_4bit is
    port ( I : in STD_LOGIC_VECTOR ( 3 downto 0 );
           O : out STD_LOGIC_VECTOR ( 3 downto 0 ) );
end not_gate_4bit;

architecture my_not_gate of not_gate_4bit is
    begin
        O <= not I;
end my_not_gate;
