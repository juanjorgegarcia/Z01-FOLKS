-- Elementos de Sistemas
-- by Luciano Soares
-- Register64.vhd

Library ieee; 
use ieee.std_logic_1164.all;
  
entity Register64 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(63 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(63 downto 0)
	);
end entity;

architecture rtl of Register64 is

component Register32 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(31 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(31 downto 0)
	);
end component;

signal r1out, r2out : STD_LOGIC_VECTOR(31 downto 0);

begin

	R32_1 : Register32 port map (clock, input(31 downto 0), load, r1out);
	R32_2 : Register32 port map (clock, input(63 downto 32), load, r2out);

	output <= r1out & r2out;
	
end rtl;


