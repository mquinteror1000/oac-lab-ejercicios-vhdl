library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity pago is
	port(
		a: in std_logic_vector( 2 downto 0 );
		luz_roja: out std_logic;
		luz_verde: out std_logic
	);
end pago;

architecture behavioral of pago is
begin
	process ( a )
	begin
		case a is
			when "000" =>
				luz_roja <= '0';
				luz_verde <= '1';
			when "001" => 
				luz_roja <= '0';
				luz_verde <= '1';
			when "010" =>
				luz_roja <= '0';
				luz_verde <= '1';
			when "011" => 
				luz_roja <= '0';
				luz_verde <= '1';
			when "100" => 
				luz_roja <= '0';
				luz_verde <= '1';
			when "101" => 
				luz_roja <= '1';
				luz_verde <= '0';
			when "110" =>
				luz_roja <= '1';
				luz_verde <= '0';
			when "111" => 
				luz_roja <= '1';
				luz_verde <= '0';
		end  case;
	end process;
end behavioral;