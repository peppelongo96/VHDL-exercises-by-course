----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2018 19:30:36
-- Design Name: 
-- Module Name: esame_5_3_18 - my_esame
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

entity sommatore is 
    port ( A,B : in STD_LOGIC_VECTOR ( 4 downto 0 );
           Cin : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR ( 5 downto 0 ));
end sommatore;

architecture my_sommatore of sommatore is
    signal carry : STD_LOGIC_VECTOR ( 5 downto 0);
    signal p,g : STD_LOGIC_VECTOR ( 4 downto 0 );
    begin
        p <= A xor B;
        g <= A and B;
        carry(0) <= Cin;
        carry( 5 downto 1) <= g or p and "00000"&Cin;
        O ( 4 downto 0 ) <= p xor carry ( 4 downto 0 );
        O (5) <= carry(5);
end my_sommatore;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity esame_5_3_18 is
    port ( A,B : in STD_LOGIC_VECTOR ( 3 downto 0 );
           C : in STD_LOGIC_VECTOR ( 1 downto 0 );
           O : out STD_LOGIC_VECTOR ( 5 downto 0));  
end esame_5_3_18;

architecture my_esame of esame_5_3_18 is
    signal Aa, Bb : STD_LOGIC_VECTOR ( 4 downto 0 );
    signal O1,O2,O3,O4 : STD_LOGIC_VECTOR ( 5 downto 0);
    component sommatore 
        port ( A,B : in STD_LOGIC_VECTOR ( 4 downto 0 );
               Cin : in STD_LOGIC;
               O : out STD_LOGIC_VECTOR ( 5 downto 0 ));
    end component;
    begin 
        Aa(4) <= A ( 3);
        Aa ( 3 downto 0 ) <= A;
        Bb(4) <= B ( 3);
        Bb ( 3 downto 0 ) <= B;
        with C select
            O <= S0: sommatore
                    port map ( Aa, Bb, '0', O0);
                 O0 when "00",
                 S1: sommatore
                    port map ( Aa, not Bb, '1', O1);
                 O1 when "01",
                 S2: sommatore
                    port map ( not Aa, Bb, '1', O2);
                 O2 when "10",
                 S2: sommatore
                    port map ( not Aa, not Bb, '1', O2);
                 not O3 when "11";
end my_esame;
