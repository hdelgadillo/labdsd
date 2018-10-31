--------------------------------------------------------------------------------
--
--   FileName:         hw_image_generator.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 05/10/2013 Scott Larson
--     Initial Public Release
--    
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY hw_image_generator IS
  PORT(
    disp_ena :   IN  STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
    row      :   IN  INTEGER;    --row pixel coordinate
    column   :   IN  INTEGER;    --column pixel coordinate
	 btn_arriba :  IN STD_LOGIC; -- botones para agregar desplazamiento al cuadrado
	 btn_abajo :  IN STD_LOGIC;
	 btn_izquierdo :  IN STD_LOGIC;
	 btn_derecho :  IN STD_LOGIC;
    red      :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
    green    :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
    blue     :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
constant LENTITUD : integer := 200; -- Un parámetro para indicar que tan lento se mueve el cuadrado
constant MOV_BTN : integer := 5; -- Que tanto se mueve al presionar los botones
signal test_cuenta : integer range 0 to LENTITUD := 0;
signal botones : std_LOGIC_VECTOR (3 downto 0) := "0000";
BEGIN
  botones <= btn_arriba & btn_abajo & btn_derecho & btn_izquierdo;
  PROCESS(disp_ena, row, column, botones)
  variable pos_x : integer := 310;
  variable pos_y : integer := 230;
  variable mov_x : integer := 1;
  variable mov_y : integer := 1; 
  variable desp_x : integer := 0;
  variable desp_y : integer := 0;
  BEGIN
   IF(disp_ena = '1') THEN        --display time
			if((column>pos_x and column<(pos_x+20)) and (row > (pos_y) and row < (pos_y+20))) then
				red	<= (OTHERS => '1');
				green	<= (OTHERS => '1');
				blue	<= (OTHERS => '1');
			else		
				red	<= (OTHERS => '0');  --es el fondo
				green	<= (OTHERS => '0');
				blue	<= (OTHERS => '0');
			end if;
------------------------------------------------------------------------------	
--			ORIGINAL - Dibuja 5 cuadrados de colores		
--			if ((row > 200 and row <250) and (column>100 and column<150)) THEN
--				red	<= (OTHERS => '0');
--				green	<= (OTHERS => '0');
--				blue	<= (OTHERS => '1');
--			elsif ((row > 200 and row <250) and (column>200 and column<250)) THEN
--				red	<= (OTHERS => '0');
--				green	<= (OTHERS => '1');
--				blue	<= (OTHERS => '0');
--			elsif ((row > 200 and row <250) and (column>300 and column<350)) THEN
--				red	<= (OTHERS => '1');
--				green	<= (OTHERS => '0');
--				blue	<= (OTHERS => '0');
--			elsif ((row > 200 and row <250) and (column>400 and column<450)) THEN
--				red	<= (OTHERS => '1');
--				green	<= (OTHERS => '1');
--				blue	<= (OTHERS => '1');
--			elsif ((row > 200 and row <250) and (column>500 and column<550)) THEN
--				red	<= (OTHERS => '1');
--				green	<= (OTHERS => '0');
--				blue	<= (OTHERS => '0');		
--			else		
--				red	<= (OTHERS => '0');  --es el fondo
--				green	<= (OTHERS => '0');
--				blue	<= (OTHERS => '0');
--			end if;
-------------------------------------------------------------------------------	

   ELSE                           --blanking time
      red   <= (OTHERS => '0');
      green <= (OTHERS => '0');
      blue  <= (OTHERS => '0');		
		
    END IF;
	
	-- Usando la cuenta de lentitud y el indicador de display time, controlo 
	-- la velocidad de movimiento del cuadrado
	if(falling_edge(disp_ena)) then 
		if(test_cuenta>(LENTITUD-1)) then
			test_cuenta <= 0;			
			case botones(1 downto 0) is
				when "01" => desp_x := -MOV_BTN;
				when "10" => desp_x := MOV_BTN;
				when others => desp_x := 0;				
			end case;
			
			case botones(3 downto 2) is
				when "01" => desp_y := MOV_BTN;
				when "10" => desp_y := -MOV_BTN;
				when others => desp_y := 0;				
			end case;
			-- Cuando llega a las orillas, cambia el sentido del movimiento						
			if (pos_y>459) then
				pos_y := 460;
				mov_y := -1;
			end if;
			if (pos_x>619) then
				pos_x := 620;
				mov_x := -1;
			end if;
			if (pos_y<1) then
				pos_y := 0;
				mov_y := 1;
			end if;
			if (pos_x <1) then
				pos_x := 0;
				mov_x := 1;
			end if;
			-- Mueve el cuadrado en la direccion correspondiente
			pos_x := pos_x + mov_x + desp_x;
			pos_y := pos_y + mov_y + desp_y;
		else
			test_cuenta <= test_cuenta+1;
		end if;
	end if;	 
		
		
  
  END PROCESS;
END behavior;