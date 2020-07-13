----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2018 00:10:03
-- Design Name: 
-- Module Name: latch_positivo - my_latch_p
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

entity latch_positivo is
    port ( D, clk : in STD_LOGIC;
           Q : out STD_LOGIC );
end latch_positivo;

architecture my_latch_p of latch_positivo is 
    begin
        process(D,clk)
            begin
                if clk='1' then
                    Q <= D;
                end if;
        end process;
end my_latch_p;
