----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2018 00:16:22
-- Design Name: 
-- Module Name: flip_flop - my_ff
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

entity flip_flop_4bit is
    port ( D : in STD_LOGIC_VECTOR ( 3 downto 0 );
           clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR ( 3 downto 0 ) );
end flip_flop_4bit;

architecture my_ff of flip_flop_4bit is
    begin
        process(clk)
            begin
                if ( clk'event and clk='1' ) then
                    Q <= D;
                end if;  
        end process;
end my_ff;
