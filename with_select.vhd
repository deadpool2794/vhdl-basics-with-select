library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity with_select is 
port (
		a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		d : in std_logic;
		control : in std_logic_vector(1 downto 0);
		z : out std_logic
		);
end with_select;

architecture behavioural of with_select is
signal control_signal : std_logic_vector(1 downto 0);
begin
	control_signal <= control;
	with control_signal select 
		z <= a when "00",
			  b when "01",
			  c when "10",
			  d when "11",
			  '0' when others;

end behavioural;
