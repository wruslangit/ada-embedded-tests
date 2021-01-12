-- File: pins.ads
-- Date: Tue 12 Jan 2021 10:16:11 AM +08
-- Author: WRY wruslandr@gmail.com

-- For ARDUINO DUE PINS

package pins is
	type Pin_ID is ( Pin_11, Pin_12 );
	procedure Enable_Output (Pin : in Pin_ID);
	procedure Write (Pin : in Pin_ID; State : in Boolean);
end pins;

