-- Elementos de Sistemas
-- by Luciano Soares
-- Register16.vhd

Library ieee; 
use ieee.std_logic_1164.all;
  
entity Register16 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Register16 is

component Register8 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(7 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(7 downto 0)
	);
end component;

signal r1out, r2out : STD_LOGIC_VECTOR(7 downto 0);

begin

	R8_1 : Register8 port map (clock, input(7 downto 0), load, r1out);
	R8_2 : Register8 port map (clock, input(15 downto 8), load, r2out);

	output <= r2out & r1out;

end rtl;
