LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY adder IS
    PORT (
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        c_in : IN STD_LOGIC;
        sum : OUT STD_LOGIC;
        c_out : OUT STD_LOGIC
    );

END ENTITY adder;
ARCHITECTURE behavioral OF adder IS
    SIGNAL sum_vec : STD_LOGIC_VECTOR (2 DOWNTO 0);
    SIGNAL i_sum, i_c_out : STD_LOGIC;
BEGIN
    sum_vec <= a & b & c_in;
    sum <= i_sum;
    c_out <= i_c_out;

    sum_process : PROCESS (a, b, c_in, i_sum, i_c_out)
    BEGIN
        CASE sum_vec IS
            WHEN "000" =>
                i_sum <= '0';
                i_c_out <= '0';
            WHEN "001" | "010" | "100" =>
                i_sum <= '1';
                i_c_out <= '0';
            WHEN "011" | "101" | "110" =>
                i_sum <= '0';
                i_c_out <= '1';
            WHEN "111" =>
                i_sum <= '1';
                i_c_out <= '1';
            WHEN OTHERS =>
                i_sum <= '0';
                i_c_out <= '0';
        END CASE;
    END PROCESS sum_process;

END ARCHITECTURE;