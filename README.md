## Ejercicios VHDL

#### Objetivo

El alumno aprenderá el manejo de una tabla de verdad dentro de la instrucción process y verificará que la lista de sensibilidad está dada por las entradas en todo el sistema condicional.

### Parte 1. Control de pago de multas

#### Especificaciones

Sí la luz roja se prende el infractor paga la multa y si la luz verde se prende no la paga, las luces no se pueden prender simultáneamente.

Este sistema tiene por entrada la decisión de un jurado compuesto por tres personas $A_1 A_2 A_3$ Cuyas opiniones valen: $A_1=35\%$, $A_2=30\%$, $A_0=15\%$.

Un $1$ lógico a la entrada significa que el juez desea que el el culpable pague la multa.

La multa se paga cuando el jurado quiere que sea pagada por un $50\%$ o más. La figura 4.1 muestra el diagrama de bloques.

<img src="images/2026-10-25-01-23-36-image.png" title="" alt="" width="800">



#### Crear el proyecto

![](images/2026-10-25-01-13-54-image.png)

Para la Cyclone IV

![](images/2026-10-25-01-15-13-image.png)

Se crea un nuevo archivo **control_pago_multas.vhd**



#### Implementación en VHDL

```vhdl
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
```

#### Compilación

El  archivo **pago.vhd** se
