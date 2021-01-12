-- File: registers.ads
-- Date: Tue 12 Jan 2021 10:16:11 AM +08
-- Author: WRY wruslandr@gmail.com

-- For NUCLEO-144 REGISTERS
-- Note that there is no need for registers.adb file

package registers is
	type Word is mod 2**32;
	
	RCC_AHB1ENR : Word;
	pragma Volatile (RCC_AHB1ENR);
	pragma Import (C, RCC_AHB1ENR, "RCC_AHB1ENR");
	
	GPIOA_MODER : Word;
	pragma Volatile (GPIOA_MODER);
	pragma Import (C, GPIOA_MODER, "GPIOA_MODER");
	
	GPIOA_BSRR : Word;
	pragma Volatile (GPIOA_BSRR);
	pragma Import (C, GPIOA_BSRR, "GPIOA_BSRR");
end registers;

