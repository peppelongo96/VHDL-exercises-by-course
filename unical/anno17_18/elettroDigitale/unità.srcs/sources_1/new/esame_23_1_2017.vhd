----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.02.2018 19:27:10
-- Design Name: 
-- Module Name: esame_23_1_2017 - my_version
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

entity esame_23_1_2018 is
    port ( A,B : in STD_LOGIC_VECTOR ( 3 downto 0 );
           C,clk : in STD_LOGIC;
           Cout : out STD_LOGIC;
           Ris : out STD_LOGIC_VECTOR ( 3 downto 0 ) );
end esame_23_1_2018;

architecture my_version of esame_23_1_2018 is
    signal Bnegato, scelto, somma : STD_LOGIC_VECTOR ( 3 downto 0 );
    component not_gate_4bit
        port ( I : in STD_LOGIC_VECTOR ( 3 downto 0 );
               O : out STD_LOGIC_VECTOR ( 3 downto 0 ) );
    end component;
    component carry_look_ahead_4bit_adder
        port ( A,B : in STD_LOGIC_VECTOR ( 3 downto 0 );
               Cin : in STD_LOGIC;
               Cout : out STD_LOGIC;
               S : out STD_LOGIC_VECTOR ( 3 downto 0 ) );
    end component;
    component demultiplexer_2out
        port ( I0,I1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
               sel : in STD_LOGIC;
               S : out STD_LOGIC_VECTOr ( 3 downto 0 ) );           
    end component;
    component flip_flop_4bit
        port ( D : in STD_LOGIC_VECTOR ( 3 downto 0 );
               clk : in STD_LOGIC;
               Q : out STD_LOGIC_VECTOR ( 3 downto 0 ) );
    end component;
    begin
        NOTGATE : not_gate_4bit
            port map ( B, Bnegato) ;
        DEMUX : demultiplexer_2out
            port map ( Bnegato, B, C, scelto );
        SOMMATORE : carry_look_ahead_4bit_adder
            port map ( A, scelto, C, Cout, somma );
        REGISTRO : flip_flop_4bit
            port map ( somma, clk, Ris );
end my_version;
