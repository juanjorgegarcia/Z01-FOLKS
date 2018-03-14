library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Not16 is
	port (
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture Not16_FOLKS of Not16 is
begin
   q <= not(a);
end Not16_FOLKS;