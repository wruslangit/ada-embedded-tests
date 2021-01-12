OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)
SECTIONS
{
	RCC_AHB1ENR = 0x40023830;
	GPIOA_MODER = 0x40020000;
	GPIOA_BSRR  = 0x40020018;
	
	.vectors 0x08000000 :
	{
		LONG(0x20010000)
		LONG(run + 1)
		FILL(0)
	}
	
	.text 0x08000200 :
	{
		*(.text)
	}
}

