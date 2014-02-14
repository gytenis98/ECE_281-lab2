----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C Borusas
-- 
-- Create Date:    19:31:03 02/13/2014 
-- Design Name: four bit adder
-- Module Name:    four_bit_adder - Structural 
-- Project Name: lab 2
-- Target Devices: FPGA

-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_adder is
    Port ( Ain : in  STD_LOGIC_VECTOR(3 downto 0);
           Bin : in  STD_LOGIC_VECTOR(3 downto 0);
           S : out  STD_LOGIC_VECTOR(3 downto 0);
           Mygtukas : in  STD_LOGIC;
           overflow : out  STD_LOGIC);
end four_bit_adder;

architecture Structural of four_bit_adder is

	component lab_2d_jn
		port( 	Ain : in  STD_LOGIC;
					Bin : in  STD_LOGIC;
					Cin : in STD_LOGIC;
					Cout : out STD_LOGIC;
					S : out STD_LOGIC);
	end component;
	
	component multiplexer
		port(   jungtukas      : in STD_LOGIC;
					komponentasA   : in STD_LOGIC_VECTOR(3 downto 0);
					komponentasB   : in STD_LOGIC_VECTOR(3 downto 0);
					isvestis			: out STD_LOGIC_VECTOR(3 downto 0));
	end component;
		signal Bin_not : STD_LOGIC_VECTOR(3 downto 0);
		signal muxout  : STD_LOGIC_VECTOR(3 downto 0);
		signal L1 : STD_LOGIC;
		signal L2 : STD_LOGIC;
		signal L3 : STD_LOGIC;
begin

		Bin_not <= not Bin;
		
		MUX: multiplexer PORT MAP
								(jungtukas => mygtukas,
								 komponentasA => Bin,
								 komponentasB =>Bin_not,
								 isvestis => muxout);
								 
		bit0: lab_2d_jn PORT MAP (	Ain => Ain(0),
									Bin => muxout(0),
									Cin => mygtukas,
									Cout => L1,
									S => S(0));
									
		bit1: lab_2d_jn PORT MAP (	Ain => Ain(1),
									Bin => muxout(1),
									Cin => L1,
									Cout => L2,
									S => S(1));
									
		bit2: lab_2d_jn PORT MAP (	Ain => Ain(2),
									Bin => muxout(2),
									Cin => L2,
									Cout => L3,
									S => S(2));
		bit3: lab_2d_jn PORT MAP (	Ain => Ain(3),
									Bin => muxout(3),
									Cin => L3,
									Cout => overflow,
									S => S(3));

end Structural;

