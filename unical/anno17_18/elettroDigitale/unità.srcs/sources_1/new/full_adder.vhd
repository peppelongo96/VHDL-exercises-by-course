----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2018 16:22:56
-- Design Name: 
-- Module Name: full_adder - 
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

entity full_adder is
    port ( A,B,Cin : in STD_LOGIC;
           S,Cout : out STD_LOGIC );    
end full_adder;

architecture my_full_adder_B of full_adder is
    signal p,g: STD_LOGIC;-- C0 = g+p*Cin; p = A xor B ; g = A and B; S = p xor Cin; 
    begin
        p <= A xor B;
        g <= A and B;
        S <= p xor Cin;
        Cout <= g or (p and Cin);       
end ;

architecture my_full_adder_S of full_adder is
    signal S_temp,C_temp_1,C_temp_2 : STD_LOGIC;
    component half_adder
        port ( A,B : in STD_LOGIC;
               S,Cout : out STD_LOGIC);
    end component;
    begin
        HA1: half_adder
        port map (A,B,S_temp,C_temp_1);
        HA2: half_adder
        port map (S_temp,Cin,S,C_temp_2);
        Cout <= C_temp_1 or C_temp_2; 
end my_full_adder_S;
     
    
