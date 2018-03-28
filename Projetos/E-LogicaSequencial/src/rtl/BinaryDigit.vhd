-- Elementos de Sistemas
-- by Luciano Soares
-- BinaryDigit.vhd

Library ieee; 
use ieee.std_logic_1164.all;
  
entity BinaryDigit is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC;
		load:    in STD_LOGIC;
		output: out STD_LOGIC
	);
end entity;

-- Elementos de Sistemas
-- by Luciano Soares
-- BinaryDigit.vhd

Library ieee; 
use ieee.std_logic_1164.all;
  
entity BinaryDigit is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC;
		load:    in STD_LOGIC;
		output: out STD_LOGIC
	);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of BinaryDigit is

--------------
-- signals
--------------
  signal clear, set ,s1,s2: std_logic;

--------------
-- components
--------------

component FlipFlopD is
	port(
		clock:  in std_logic;
		d:      in std_logic;
		clear:  in std_logic;
		preset: in std_logic;
		q:      out std_logic
	);
end component;

component Mux2Way is
	port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			sel: in  STD_LOGIC;
			q:   out STD_LOGIC
			);
end component;


---------------
-- implementacao
---------------
begin

	muxao: Mux2Way port map (
			a => s2,
			b =>  input,
			sel => load,
			q => s1
			);


	flipzin: FlipFlopD port map (
		clock    => clock,
		d        => s1,
		clear    => clear,
		preset   => set,
		q        => s2
	);
	
	output <= s2;

	
end rtl;