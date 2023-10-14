library ieee;
use ieee.std_logic_1164.all;

entity grayCode is
  port(
    input       :       in      std_logic_vector(3 downto 0);
    gray        :       out     std_logic_vector(3 downto 0);
    );
end entity grayCode;

architecture rtl of grayCode is
begin
  gray <= "0000" when (input="0000") else
          "0001" when (input="0001") else
          "0011" when (input="0010") else
          "0010" when (input="0011") else
          "0110" when (input="0100") else
          "0111" when (input="0101") else
          "0101" when (input="0110") else
          "0100" when (input="0111") else
          "1100" when (input="1000") else
          "1101" when (input="1001") else
          "1111" when (input="1010") else
          "1110" when (input="1011") else
          "1010" when (input="1100") else
          "1011" when (input="1101") else
          "1001" when (input="1110") else
          "1000";
end architecture rtl;
