-- File: registers.ads
-- Date: Tue 12 Jan 2021 10:16:11 AM +08
-- Author: WRY wruslandr@gmail.com

-- For ARDUINO DUE REGISTERS
-- Note that there is no need for registers.adb file

package Registers is
	type Word is mod 2**32;
	
	PIOD_PER : Word;
	pragma Volatile (PIOD_PER);
	pragma Import (C, PIOD_PER, "PIOD_PER");
	
	PIOD_OER : Word;
	pragma Volatile (PIOD_OER);
	pragma Import (C, PIOD_OER, "PIOD_OER");
	
	PIOD_SODR : Word;
	pragma Volatile (PIOD_SODR);
	pragma Import (C, PIOD_SODR, "PIOD_SODR");
	
	PIOD_CODR : Word;
	pragma Volatile (PIOD_CODR);
	pragma Import (C, PIOD_CODR, "PIOD_CODR");
	
end registers;

