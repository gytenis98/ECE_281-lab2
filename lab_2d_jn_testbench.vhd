--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:25:34 02/09/2014
-- Design Name:   lab_2d_jn_testbench
-- Module Name:   C:/Users/C16Gytenis.Borusas.l/Documents/ISE projects/LAB_2_ADDER/lab_2d_jn_testbench.vhd
-- Project Name:  LAB_2_ADDER
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab_2d_jn
-- 
-- Dependencies:
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY lab_2d_jn_testbench IS
END lab_2d_jn_testbench;
 
ARCHITECTURE behavior OF lab_2d_jn_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab_2d_jn
    PORT(
         Ain : IN  std_logic;
         Bin : IN  std_logic;
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic := '0';
   signal Bin : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal S : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab_2d_jn PORT MAP (
          Ain => Ain,
          Bin => Bin,
          Cin => Cin,
          Cout => Cout,
          S => S
        );

   -- Clock process definitions
 --  <clock>_process :process
  -- begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
  -- end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      Ain <= '0';
		Bin <= '0';
		Cin <= '0';		
		wait for 100 ns;	
		Ain <= '0';
		Bin <= '0';
		Cin <= '1';		
		wait for 100 ns;	
		
		Ain <= '0';
		Bin <= '1';
		Cin <= '0';		
		wait for 100 ns;	
	
	
Ain <= '0';
		Bin <= '1';
		Cin <= '1';		
		wait for 100 ns;	
		
		Ain <= '1';
		Bin <= '0';
		Cin <= '0';		
		wait for 100 ns;	
		
		Ain <= '1';
		Bin <= '0';
		Cin <= '1';		
		wait for 100 ns;	
		
		Ain <= '1';
		Bin <= '1';
		Cin <= '0';		
		wait for 100 ns;	
		Ain <= '1';
		Bin <= '1';
		Cin <= '1';		
		wait for 100 ns;	
		
		

  --    wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
