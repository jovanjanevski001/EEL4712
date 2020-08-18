-- Jovan Janevski
-- UF-ID: 8591-9111
-- University of Florida

-- This is a behavioral model of a 1-Bit full adder with a carry.

library ieee;
use ieee.std_logic_1164.all;

entity fa is
	port (
		input1		:	in	std_logic;
		input2		:	in	std_logic;
		carry_in	:	in	std_logic;
		
		sum			:	out	std_logic;
		carry_out	:	out	std_logic
	);
end fa;


architecture BHV of fa is

begin
	
	sum <= input1 XOR input2 XOR carry_in;
	carry_out <= (input1 AND input2) OR (input1 AND carry_in) OR (input2 AND carry_in);
	
end BHV;