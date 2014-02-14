----------------------------------------------------------------------------------
-- Company: USAFA 
-- Engineer: c3c Borusas
-- 
-- Create Date:    19:58:49 02/13/2014 
-- Design Name: multiplexer
-- Module Name:    multiplexer - Behavioral 
-- Project Name: lab 2

-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer is
    Port ( jungtukas 	: in  STD_LOGIC;
           komponentasA : in  STD_LOGIC_VECTOR (3 downto 0);
           komponentasB : in  STD_LOGIC_VECTOR (3 downto 0);
           isvestis 		: out  STD_LOGIC_VECTOR (3 downto 0));
end multiplexer;

architecture Behavioral of multiplexer is

begin

with jungtukas select
isvestis <= komponentasA when '0', komponentasB when '1', "1111" when others;

end Behavioral;

