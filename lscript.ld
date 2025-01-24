MEMORY
{
    FLASH (rx ) : ORIGIN = 0x08000000, LENGTH = 1K
    RAM   (rxw) : ORIGIN = 0x20000000, LENGTH = 0
}

__stack_start = ORIGIN(RAM) + LENGTH(RAM);
