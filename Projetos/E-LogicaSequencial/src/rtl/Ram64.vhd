-- Elementos de Sistemas
-- by Luciano Soares
-- Ram64.vhd

Library ieee; 
use ieee.std_logic_1164.all;
  
entity Ram64 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 5 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Ram64 is

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

  
component Ram8 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;


--signal q0, q1, q2, q3, q4, q5, q6, q7 : STD_LOGIC;
signal s : STD_LOGIC_VECTOR(7 downto 0);
signal out0, out1, out2, out3, out4, out5, out6, out7 : STD_LOGIC_VECTOR(15 downto 0);

begin

	DMux0 : DMux8Way port map (a => load, sel => address(5 downto 3), q0 => s(0), q1=> s(1), q2 => s(2),q3 => s(3), q4 => s(4), q5 => s(5),q6 =>  s(6), q7 => s(7));

	R0 : Ram8 port map (clock=>clock, input=>input,load => s(0),address => address(2 downto 0),output=> out0);
	R1 : Ram8 port map (clock=>clock, input=>input, load => s(1),address =>address(2 downto 0), output=>out1);
	R2 : Ram8  port map (clock=>clock, input=>input,load =>  s(2),address =>address(2 downto 0),output=> out2);
	R3 : Ram8  port map (clock=>clock, input=>input,load =>  s(3),address =>address(2 downto 0),output=> out3);
	R4 : Ram8  port map (clock=>clock, input=>input,load =>  s(4),address =>address(2 downto 0),output=> out4);
	R5 : Ram8  port map (clock=>clock, input=>input,load =>  s(5),address =>address(2 downto 0), output=>out5);
	R6 : Ram8  port map (clock=>clock, input=>input,load =>  s(6),address =>address(2 downto 0),output=> out6);
	R7 : Ram8  port map (clock=>clock, input=>input, load => s(7),address =>address(2 downto 0), output=>out7);

	Mux0 : Mux8Way16 port map (a=>out0, b=>out1, c=>out2,d=> out3,e=> out4,f=> out5,g=> out6,h=> out7, sel => address(5 downto 3),q=> output);


end rtl;
