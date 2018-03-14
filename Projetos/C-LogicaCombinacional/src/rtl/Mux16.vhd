library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC;
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture Mux16_FOLKS of Mux16 is
begin
process (a,b,sel) is
begin
	if(sel = '0') then
	q<=a;
	else
	q<=b;
	end if;
end process;
end Mux16_FOLKS;