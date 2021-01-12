-- File: pins.adb
-- Date: Tue 12 Jan 2021 10:16:11 AM +08
-- Author: WRY wruslandr@gmail.com

-- For NUCLEO-144 PINS

with registers;

package body pins is

	procedure Enable_Output (Pin : in Pin_ID) is
	use type Registers.Word;
	begin
		Registers.RCC_AHB1ENR := Registers.RCC_AHB1ENR or 2#1#;
		
		case Pin is
		when Pin_11 =>
			Registers.GPIOA_MODER := (Registers.GPIOA_MODER
			and 2#1111_1111_1111_1111_0011_1111_1111_1111#)
			or 2#0000_0000_0000_0000_0100_0000_0000_0000#;
		when Pin_12 =>
			Registers.GPIOA_MODER := (Registers.GPIOA_MODER
			and 2#1111_1111_1111_1111_1100_1111_1111_1111#)
			or 2#0000_0000_0000_0000_0001_0000_0000_0000#;
		end case;
	end Enable_Output;
	
	procedure Write (Pin : in Pin_ID; State : Boolean) is
	begin
		case Pin is
		when Pin_11 =>
			if State then
				Registers.GPIOA_BSRR := 2#1000_0000#;
			else
				Registers.GPIOA_BSRR :=
				2#1000_0000_0000_0000_0000_0000#;
			end if;
		when Pin_12 =>
			if State then
				Registers.GPIOA_BSRR := 2#100_0000#;
			else
				Registers.GPIOA_BSRR :=
				2#100_0000_0000_0000_0000_0000#;
			end if;
		end case;
	end Write;
	
end pins;
