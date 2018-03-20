-- Elementos de Sistemas
-- by Luciano Soares
-- Inc16.vhd

-- Incrementador de 16 bits
-- adiciona 1 ao valore de entrada (adição aritmética)

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Inc16 is
	port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Inc16 is

component HalfAdder is
	port(
		a,b:        in STD_LOGIC;   -- entradas
		soma,vaium: out STD_LOGIC   -- sum e carry
	);
end component;

signal c : STD_LOGIC_VECTOR(15 downto 0);

begin

	inc0 : Halfadder port map (a(0), '1', q(0), c(0));
	inc1 : Halfadder port map (a(1), c(0), q(1), c(1));
	inc2 : Halfadder port map (a(2), c(1), q(2), c(2));
	inc3 : Halfadder port map (a(3), c(2), q(3), c(3));
	inc4 : Halfadder port map (a(4), c(3), q(4), c(4));
	inc5 : Halfadder port map (a(5), c(4), q(5), c(5));
	inc6 : Halfadder port map (a(6), c(5), q(6), c(6));
	inc7 : Halfadder port map (a(7), c(6), q(7), c(7));
	inc8 : Halfadder port map (a(8), c(7), q(8), c(8));
	inc9 : Halfadder port map (a(9), c(8), q(9), c(9));
	inc10 : Halfadder port map (a(10), c(9), q(10), c(10));
	inc11 : Halfadder port map (a(11), c(10), q(11), c(11));
	inc12 : Halfadder port map (a(12), c(11), q(12), c(12));
	inc13 : Halfadder port map (a(13), c(12), q(13), c(13));
	inc14 : Halfadder port map (a(14), c(13), q(14), c(14));
	inc15 : Halfadder port map (a(15), c(14), q(15), c(15));

end architecture;
