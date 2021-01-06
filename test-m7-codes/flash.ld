OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
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
