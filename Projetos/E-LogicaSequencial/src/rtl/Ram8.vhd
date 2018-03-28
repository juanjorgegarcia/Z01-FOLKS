-- Elementos de Sistemas
-- by Luciano Soares
-- Ram8.vhd

Library ieee; 
use ieee.std_logic_1164.all;
  
entity Ram8 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Ram8 is

component DMux8Way is
	port (
			a:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q0:  out STD_LOGIC;
			q1:  out STD_LOGIC;
			q2:  out STD_LOGIC;
			q3:  out STD_LOGIC;
			q4:  out STD_LOGIC;
			q5:  out STD_LOGIC;
			q6:  out STD_LOGIC;
			q7:  out STD_LOGIC);
end component;

component Mux8Way16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			c:   in  STD_LOGIC_VECTOR(15 downto 0);
			d:   in  STD_LOGIC_VECTOR(15 downto 0);
			e:   in  STD_LOGIC_VECTOR(15 downto 0);
			f:   in  STD_LOGIC_VECTOR(15 downto 0);
			g:   in  STD_LOGIC_VECTOR(15 downto 0);
			h:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end component;

component Register16 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;

signal q0, q1, q2, q3, q4, q5, q6, q7 : STD_LOGIC;
signal reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7 : STD_LOGIC_VECTOR(15 downto 0);

begin

	DMux0 : DMux8Way port map (load, address, q0, q1, q2, q3, q4, q5, q6, q7);

	Regis0 : Register16 port map (clock, input, q0, reg0);
	Regis1 : Register16 port map (clock, input, q1, reg1);
	Regis2 : Register16 port map (clock, input, q2, reg2);
	Regis3 : Register16 port map (clock, input, q3, reg3);
	Regis4 : Register16 port map (clock, input, q4, reg4);
	Regis5 : Register16 port map (clock, input, q5, reg5);
	Regis6 : Register16 port map (clock, input, q6, reg6);
	Regis7 : Register16 port map (clock, input, q7, reg7);

	Mux0 : Mux8Way16 port map (reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, address, output);

end rtl;









