-- File: pins.adb
-- Date: Tue 12 Jan 2021 10:16:11 AM +08
-- Author: WRY wruslandr@gmail.com

with Pins;
with Utils;

package body program is
	procedure Run is
	begin
		Pins.Enable_Output (Pins.Pin_11);
		Pins.Enable_Output (Pins.Pin_12);

		Pins.Write (Pins.Pin_11, True);
		Pins.Write (Pins.Pin_12, False);

		Utils.Spin_Indefinitely;
	end Run;
end program;

