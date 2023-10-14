library ieee;
use ieee.std_logic_1164.all;

entity grayCode_tb is
end entity grayCode_tb;

architecture testbench of grayCode_tb is
  signal input_tb       :       std_logic_vector(3 downto 0) := "0000";
  signal gray_tb        :       std_logic_vector(3 downto 0);
begin
  input_tb <= "0001" after 200 ns,
              "0010" after 400 ns,
              "0011" after 600 ns,
              "0100" after 800 ns.
              "0101" after 1000 ns,
              "0110" after 1200 ns,
              "0111" after 1400 ns,
              "1000" after 1600 ns,
              "1001" after 1800 ns,
              "1010" after 2000 ns,
              "1011" after 2200 ns,
              "1100" after 2400 ns,
              "1101" after 2600 ns,
              "1110" after 2800 ns,
              "1111" after 3000 ns;

  DUT: entity work.grayCode
    port map(
      input     =>      input_tb,
      gray      =>      gray_tb
      );
  
end architecture testbench;
