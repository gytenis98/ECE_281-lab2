----------------------------------------------------------------------------------
-- Company: ECE 281
-- Engineer: Gytenis Borusas
-- 
-- Create Date:    14:22:02 02/09/2014 
-- Design Name:   lab 2
-- Module Name:    lab_2d_jn - Behavioral 
-- Project Name: project x
-- Target Devices: 
-- Tool versions: 
-- Description: lab 2
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab_2d_jn is
    Port ( Ain : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
			  Cin : in STD_LOGIC;
			  Cout : out STD_LOGIC;
			  S : out STD_LOGIC);
end lab_2d_jn;

architecture Behavioral of lab_2d_jn is

begin

S <= Ain XOR Bin XOR Cin;
Cout <= (Ain AND Bin AND NOT Cin) OR (NOT Ain AND Bin AND Cin) OR (Ain AND Cin);

end Behavioral;

