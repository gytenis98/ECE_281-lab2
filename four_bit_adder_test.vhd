--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C GYTENIS BORUSAS
--
-- Create Date:   20:44:51 02/13/2014
-- Design Name:   4 BIT ADDER TESTBENCH
-- Module Name:   C:/Users/C16Gytenis.Borusas.l/Documents/ISE projects/LAB_2_ADDER/four_bit_adder_test.vhd
-- Project Name:  LAB_2_ADDER
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_adder
-- 

-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_adder_test IS
END four_bit_adder_test;
 
ARCHITECTURE behavior OF four_bit_adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_adder
    PORT(
         Ain : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(3 downto 0);
         Mygtukas : IN  std_logic;
         overflow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');
   signal Mygtukas : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal overflow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 ---  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_adder PORT MAP (
          Ain => Ain,
          Bin => Bin,
          S => S,
          Mygtukas => Mygtukas,
          overflow => overflow
        );

   -- Clock process definitions
 ---  <clock>_process :process
 ---  begin
	---	<clock> <= '0';
	--	wait for <clock>_period/2;
---<clock> <= '1';
	---	wait for <clock>_period/2;
 --  end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
      
		wait for 1 ns;	
		
		Ain <= "0000";
		Bin <= "0000";
		Mygtukas <= '0';
		
		
				for I in 0 to 15 loop
						for J in 0 to 15 loop
								
								wait for 1 ns;
								
								assert (S = Ain + Bin) report "Expected A + B = " &
										integer'image(to_integer(signed((Ain+Bin)))) & " for A = " &
										integer'image(to_integer(signed((Ain)))) & " for B = " &
										integer'image(to_integer(signed((Bin)))) & ", got " &
										integer'image(to_integer(signed((S)))) severity ERROR;
										
								Ain <= Ain + "0001";
								
						end loop;
						
				Ain <= "0000";
				Bin <= Bin + "0001";
				
				end loop;
				
		Ain <= "0000";
		Bin <= "0000";
		Mygtukas <= '1';
							
				for I in 0 to 15 loop
						for J in 0 to 15 loop
								
								wait for 1 ns;
								
								assert (S = Ain - Bin) report "Expected A - B = " &
										integer'image(to_integer(signed((Ain+Bin)))) & " for A = " &
										integer'image(to_integer(signed((Ain)))) & " for B = " &
										integer'image(to_integer(signed((Bin)))) & ", got " &
										integer'image(to_integer(signed((S)))) severity ERROR;
										
								Ain <= Ain + "0001";
								
						end loop;
						
				Ain <= "0000";
				Bin <= Bin + "0001";
				
				end loop;
							
							
				report "Testas baigtas!";
---      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
