library ieee;
use ieee.std_logic_1164.all;

entity pago_tb is
end pago_tb;

architecture behavior of pago_tb is
    -- Declaración de la entidad a probar (UUT)
    component pago
        port(
            a: in std_logic_vector( 2 downto 0 );
            luz_roja: out std_logic;
            luz_verde: out std_logic
        );
    end component;

    -- Señales internas para conectar al componente
    signal a : std_logic_vector(2 downto 0) := "000";
    signal luz_roja : std_logic;
    signal luz_verde : std_logic;

begin
    -- Instanciar el diseño principal
    uut: pago port map (
        a => a,
        luz_roja => luz_roja,
        luz_verde => luz_verde
    );

    -- Proceso que aplica las combinaciones de los jueces
    stim_proc: process
    begin
        a <= "000"; wait for 20 ns;
        a <= "001"; wait for 20 ns;
        a <= "010"; wait for 20 ns;
        a <= "011"; wait for 20 ns;
        a <= "100"; wait for 20 ns;
        a <= "101"; wait for 20 ns;
        a <= "110"; wait for 20 ns;
        a <= "111"; wait for 20 ns;
        wait; -- Detener la simulación
    end process;
end behavior;