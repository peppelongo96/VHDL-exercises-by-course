----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2018 23:17:00
-- Design Name: 
-- Module Name: carry_select_4bit - my_carry_select_4bit
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

entity carry_select_4bit is
    port ( A,B : in STD_LOGIC_VECTOR ( 3 downto 0 );
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR ( 3 downto 0 ) );
end carry_select_4bit;

architecture my_carry_select_4bit of carry_select_4bit is
    signal C1,C2,C3,C4,C5,C6 : STD_LOGIC;
    signal Stemp : STD_LOGIC_VECTOR ( 3 downto 0 );
    component full_adder
        port ( A,B,Cin : in STD_LOGIC;
               S,Cout : out STD_LOGIC );
    end component;
    component multiplexer_2in
        port ( I0,I1,sel : in STD_LOGIC;
               O : out STD_LOGIC );
    end component;
    begin
        FA1 : full_adder
        port map ( A(0),B(0),Cin,S(0),C1 );
        FA2 : full_adder
        port map ( A(1),B(1),C1,S(1),C2 );
        FA3 : full_adder
        port map ( A(2),B(2),'1',Stemp(0),C3 );
        FA4 : full_adder
        port map ( A(3),B(3),C3,Stemp(1),C4 );
        FA5 : full_adder
        port map ( A(2),B(2),'0',Stemp(2),C5 );
        FA6 : full_adder
        port map ( A(3),B(3),C5,Stemp(3),C6 );
        MUX1 : multiplexer_2in
        port map ( Stemp(2),Stemp(0),C2,S(2) );
        MUX2 : multiplexer_2in
        port map ( Stemp(3),Stemp(1),C2,S(3) );
        MUX3 : multiplexer_2in
        port map ( C6,C4,C2,Cout );
end my_carry_select_4bit;
