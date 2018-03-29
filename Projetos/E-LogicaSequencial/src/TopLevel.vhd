--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
	    CLOCK_50: in  std_logic;
		KEY     : in  std_logic_vector(3 downto 0);
		SW      : in  std_logic_vector(9 downto 0);
		LEDR    : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------
  signal Clock: std_logic;
  signal ledzin : STD_LOGIC_VECTOR(15 downto 0);

--------------
-- components
--------------

component Ram8 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;


---------------
-- implementacao
---------------
begin


Clock <= not KEY(0); -- os botoes quando nao apertado vale 1
                     -- e apertado 0, essa logica inverte isso

u0 : Ram8 port map (
		clock    => Clock,
		input        => "0000000000" & SW(5 downto 0) ,
		load    => SW(9),
		address   => SW(8 downto 6),
		output        =>  ledzin
	);
LEDR <= ledzin(9 downto 0);
end rtl;
