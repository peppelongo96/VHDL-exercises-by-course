----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2018 01:01:40
-- Design Name: 
-- Module Name: carry_look_ahead_4bit_adder - my_cla_4bit_adder
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

entity carry_look_ahead_4bit_adder is
    port ( A,B : in STD_LOGIC_VECTOR ( 3 downto 0 );
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR ( 3 downto 0 ) );
end carry_look_ahead_4bit_adder;

architecture my_cla_4bit_adder of carry_look_ahead_4bit_adder is
    signal terra : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal C1,C2,C3 : STD_LOGIC;
    component full_adder 
       port ( A,B,Cin : in STD_LOGIC;
               S,Cout : out STD_LOGIC );  
    end component;
    component carry_look_ahead_4bit
        port ( A,B : in STD_LOGIC_VECTOR ( 3 downto 0 );
               Cin : in STD_LOGIC;
               C1,C2,C3,Cout : out STD_LOGIC );
    end component;
    begin
        CLA: carry_look_ahead_4bit
        port map ( A,B,Cin,C1,C2,C3,Cout );
        FA0 : full_adder
        port map ( A(0), B(0), Cin, S(0), terra(0) );
        FA1 : full_adder
        port map ( A(1), B(1), C1, S(1), terra(1) );
        FA2 : full_adder
        port map ( A(2), B(2), C2, S(2), terra(2) );
        FA3 : full_adder
        port map ( A(3), B(3), C3, S(3), terra(3) );
end my_cla_4bit_adder;
