LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY testBench IS
END ENTITY testBench;

ARCHITECTURE rtl OF testBench IS
    COMPONENT adder IS
        PORT (
            a : IN STD_LOGIC;
            b : IN STD_LOGIC;
            c_in : IN STD_LOGIC;
            sum : OUT STD_LOGIC;
            c_out : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT vectorGenerator IS
        PORT (
            dut_a : OUT STD_LOGIC;
            dut_b : OUT STD_LOGIC;
            dut_c_in : OUT STD_LOGIC;
            dut_c_out : IN STD_LOGIC;
            dut_sum : IN STD_LOGIC
        );
    END COMPONENT;

    --segnali interni al testbench
    SIGNAL testbench_a, testbench_b, testbench_c_in, testbench_c_out, testbench_sum : STD_LOGIC;

BEGIN

    adder_1 : adder
    PORT MAP(
        a => testbench_a,
        b => testbench_b,
        c_in => testbench_c_in,
        c_out => testbench_c_out,
        sum => testbench_sum
        
    );

    vg1 : vectorGenerator
    PORT MAP(
        dut_a => testbench_a,
        dut_b => testbench_b,
        dut_c_in => testbench_c_in,
        dut_c_out => testbench_c_out,
        dut_sum => testbench_sum     

    );

END ARCHITECTURE;