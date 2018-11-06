
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hw_image_generator IS
  GENERIC(
    pixels_y :  INTEGER := 478;   --row that first color will persist until
    pixels_x :  INTEGER := 600);  --column that first color will persist until
  PORT(
    disp_ena :  IN   STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
    row      :  IN   INTEGER;    --row pixel coordinate
    column   :  IN   INTEGER;    --column pixel coordinate
    red      :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
    green    :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
    blue     :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
BEGIN
  PROCESS(disp_ena, row, column)
  BEGIN

   if ((row > 200 and row <250) and (column>100 and column<150)) THEN
			red	<= (OTHERS => '0');
				green	<= (OTHERS => '0');
			blue	<= (OTHERS => '1');
		elsif ((row > 200 and row <250) and (column>200 and column<250)) THEN
			red	<= (OTHERS => '0');
			green	<= (OTHERS => '1');
			blue	<= (OTHERS => '0');
		elsif ((row > 200 and row <250) and (column>300 and column<350)) THEN
		red	<= (OTHERS => '1');
		green	<= (OTHERS => '0');
			blue	<= (OTHERS => '0');
				red	<= (OTHERS => '1');
				green	<= (OTHERS => '1');
				blue	<= (OTHERS => '1');
		elsif ((row > 200 and row <250) and (column>500 and column<550)) THEN
				red	<= (OTHERS => '1');
				green	<= (OTHERS => '0');
				blue	<= (OTHERS => '0');		
		else		
				red	<= (OTHERS => '0');  --es el fondo
				green	<= (OTHERS => '0');
				blue	<= (OTHERS => '0');
			end if;
  
  END PROCESS;
END behavior;
