-- File: ada_bismillah.adb
-- Date: Tue 05 Jan 2021 11:34:09 AM +08
-- Chapter-03-01

-- COMPILATION
-- Ub2004-rt38:~/github/ada-embedded$ arm-linux-gnueabi-gnatgcc -S -mcpu=cortex-m0 -mthumb -mfloat-abi=soft ada_bismillah.adb
-- Ub2004-rt38:~/github/ada-embedded$ arm-linux-gnueabi-gnatgcc -S -mcpu=cortex-m3 -mthumb ada_bismillah.adb
-- Ub2004-rt38:~/github/ada-embedded$ arm-linux-gnueabi-gnatgcc -S -mcpu=cortex-m7 -mthumb ada_bismillah.adb

with Ada.Text_IO;

package body ada_bismillah is


procedure Run_bismillah is
begin
    for N in 1 .. 5 loop
        Ada.Text_IO.Put_Line ("Bismillah 3 times WRY");
        -- null;
    end loop;
end Run_bismillah;

end ada_bismillah;
