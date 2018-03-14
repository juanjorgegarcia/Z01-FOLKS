library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4Way is
	port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(1 downto 0);
			q:   out STD_LOGIC);
end entity;

architecture Mux4way_FOLKS of Mux4way is
begin
process (a,b,sel) is
begin
   if (sel = "00") then
q<=a;
	elsif (sel = "01") then
	q<=b;
	elsif (sel = "10") then
	q<=c;
	else 
	q<=d;
	end if;
end process;
end Mux4way_FOLKS;