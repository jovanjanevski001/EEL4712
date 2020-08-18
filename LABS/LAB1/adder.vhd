-- Jovan Janevski
-- UF-ID: 8591-9111
-- University of Florida

-- This is a structural model of a 4 bit ripple-carry adder
--	using 4 1-bit full adders

library ieee;
use ieee.std_logic_1164.all;

entity adder is
	port (
		input1		:	in	std_logic_vector(3 downto 0);
		input2		:	in	std_logic_vector(3 downto 0);
		carry_in	:	in	std_logic;
		
		sum			:	out	std_logic_vector(3 downto 0);
		carry_out	:	out	std_logic
	);
end adder;


architecture STR of adder is

signal fa0_carry, fa1_carry, fa2_carry	:	std_logic;

begin
	-- For the LSB
	U_FA0: entity work.fa
		port map (
			input1		=>	input1(0),
			input2		=>	input2(0),
			carry_in	=>	carry_in,
			
			sum			=>	sum(0),
			carry_out	=>	fa0_carry
		);

	-- For the 2nd bit
	U_FA1: entity work.fa
		port map (
			input1		=>	input1(1),
			input2		=>	input2(1),
			carry_in	=>	fa0_carry,
			
			sum			=>	sum(1),
			carry_out	=>	fa1_carry
		);

	-- For the 3rd bit
	U_FA2: entity work.fa
		port map (
			input1		=>	input1(2),
			input2		=>	input2(2),
			carry_in	=>	fa1_carry,
			
			sum			=>	sum(2),
			carry_out	=>	fa2_carry
		);

	-- For the MSB
	U_FA3: entity work.fa
		port map (
			input1		=>	input1(3),
			input2		=>	input2(3),
			carry_in	=>	fa2_carry,
			
			sum			=>	sum(3),
			carry_out	=>	carry_out
		);
		
end STR;