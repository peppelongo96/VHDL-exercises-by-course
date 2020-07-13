----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2018 00:26:06
-- Design Name: 
-- Module Name: carry_look_ahead_4bit - carry_look_ahead
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

entity carry_look_ahead_adder_4bit is
    port ( A,B : in STD_LOGIC_VECTOR ( 3 downto 0 );
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC ;
           S : out STD_LOGIC_VECTOR ( 3 downto 0 ));
end carry_look_ahead_adder_4bit;

architecture my_arch of carry_look_ahead_adder_4bit is
    signal p,g : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal carry : STD_LOGIC_VECTOR ( 3 downto 0 );
    begin
        p <= A xor B;
        g <= A and B;
        carry(0) <= Cin;
        carry(1) <= g(0) or (p(0) and Cin);
        carry(2) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and Cin);
        carry(3) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) or (p(2) and p(1) and p(0) and Cin);
        Cout <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0)) or (p(3) and p(2) and p(1) and p(0) and Cin);
        S <= p xor carry;
end my_arch;
