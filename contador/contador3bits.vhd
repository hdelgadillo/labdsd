library ieee;
use ieee.std_logic_1164.all;


entity contador3bits is

    Port ( relog, reset : in  STD_LOGIC;
					 salcuenta: out STD_LOGIC_VECTOR(3 downto 0));

end contador3bits;

architecture arqcontador3bits of contador3bits is

	subtype estado is STD_LOGIC_VECTOR(3 downto 0);
  signal q, qmas1: estado;

	constant e0: estado:="0000";
	constant e1: estado:="0001";
	constant e2: estado:="0010";
	constant e3: estado:="0011";
	constant e4: estado:="0100";
	constant e5: estado:="0101";
	constant e6: estado:="0110";
	constant e7: estado:="0111";
	constant e8: estado:="1000";
	constant e9: estado:="1001";
	constant e10: estado:="1010";
	constant e11: estado:="1011";
	constant e12: estado:="1100";
	constant e13: estado:="1101";
	constant e14: estado:="1110";
	constant e15: estado:="1111";

begin

	process(relog)
			begin
				if rising_edge(relog) then
					if (reset='1') then
						q<=e0;
					else
						q<=qmas1;
					end if;
				end if;
			end process;

	process(q)
		begin
			case q is
				when e0=> qmas1 <=e1;
				when e1=> qmas1 <=e2;
				when e2=> qmas1 <=e3;
				when e3=> qmas1 <=e4;
				when e4=> qmas1 <=e5;
				when e5=> qmas1 <=e6;
				when e6=> qmas1 <=e7;
				when e7=> qmas1 <=e8;
				when e8=> qmas1 <=e9;
				when e9=> qmas1 <=e10;
				when e10=> qmas1 <=e11;
				when e11=> qmas1 <=e12;
				when e12=> qmas1 <=e13;
				when e13=> qmas1 <=e14;
				when e14=> qmas1 <=e15;
				when e15=> qmas1 <=e0;
				
				
				when others=> qmas1 <=e0;
			end case;
		end process;

	salcuenta<=q;

end arqcontador3bits;
