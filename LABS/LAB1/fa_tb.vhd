-- Jovan Janevski
-- UF-ID: 8591-9111
-- University of Florida

-- This testbench tests the functionality of fa.vhd

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fa_tb is
end fa_tb;

architecture TB of fa_tb is

signal	input1, input2, carry_in	:	std_logic;
signal	sum, carry_out				:	std_logic;

begin 

	UUT: entity work.fa
		port map (
			input1		=>	input1,
			input2		=>	input2,
			carry_in	=>	carry_in,
			
			sum			=>	sum,
			carry_out	=>	carry_out
		);

	process
		variable temp	:	std_logic_vector(2 downto 0);
	begin
		for i in 0 to 7 loop
			temp := std_logic_vector(to_unsigned(i, 3));
			
			input1		<=	temp(2);
			input2		<=	temp(1);
			carry_in	<=	temp(0);
			wait for 20 ns;
			
			assert (sum = (input1 XOR input2 XOR carry_in)) report "Incorrect Sum!" severity warning;
			assert (carry_out = ((input1 AND input2) OR (input1 AND carry_in) OR (input2 AND carry_in))) report "Incorrect carry_out!" severity warning;
		end loop;
		
		report "SIMULATION FINISHED!!!";
		wait;
		
	end process;
end TB;