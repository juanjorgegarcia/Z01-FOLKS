-- Elementos de Sistemas
-- by Luciano Soares
-- Register32.vhd

Library ieee; 
use ieee.std_logic_1164.all;
  
entity Register32 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(31 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(31 downto 0)
	);
end entity;

architecture rtl of Register32 is

component Register16 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;

signal r1out, r2out : STD_LOGIC_VECTOR(15 downto 0);

begin

	R8_1 : Register16 port map (clock, input(15 downto 0), load, r1out);
	R8_2 : Register16 port map (clock, input(31 downto 16), load, r2out);

	output <= r1out & r2out;
	
end rtl;

