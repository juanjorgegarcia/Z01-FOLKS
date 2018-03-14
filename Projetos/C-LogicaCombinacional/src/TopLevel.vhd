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
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		Q: out std_logic
	);
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of TopLevel is

component nand_z01
   port(
          a : in  std_logic;
	      b : in  std_logic;
	      q : out std_logic
   );
end component;

component Or8Way
	port (
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			e:   in  STD_LOGIC;
			f:   in  STD_LOGIC;
			g:   in  STD_LOGIC;
			h:   in  STD_LOGIC;
			q:   out STD_LOGIC);
end component;


--------------
-- signals
--------------
signal s1 : std_logic:='0';
---------------
-- implementacao
---------------
begin
	Nono: nand_z01 port map(a=>A,b=>A,q=>s1);
	Orzin: Or8Way port map (a=>B,b=>C,c=>s1,d=>'0',e=>'0',f=>'0',g=>'0',h=>'0',q=>Q);


end rtl;
