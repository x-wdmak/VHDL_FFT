LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY vectorGenerator IS

    PORT (
        dut_a : OUT STD_LOGIC;
        dut_b : OUT STD_LOGIC;
        dut_c_in : OUT STD_LOGIC;
        dut_sum : IN STD_LOGIC;
        dut_c_out : IN STD_LOGIC
    );
    
END ENTITY vectorGenerator;

ARCHITECTURE rtl OF vectorGenerator IS

BEGIN

    PROCESS

    BEGIN
        dut_a <= '1';
        dut_b <= '1';
        dut_c_in <= '1';

        WAIT FOR 10 ns;

        dut_a <= '0';
        dut_b <= '1';
        dut_c_in <= '1';

        WAIT FOR 10 ns;

        dut_a <= '1';
        dut_b <= '1';
        dut_c_in <= '1';

        WAIT FOR 10 ns;

        WAIT ;
    END PROCESS;


END ARCHITECTURE;