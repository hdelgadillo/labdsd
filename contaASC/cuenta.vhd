library ieee;
use ieee.std_logic_1164.all;


entity cuenta is

    Port ( relog, reset : in  STD_LOGIC;
					 salcuenta: out STD_LOGIC_VECTOR(1 downto 0);
					 x : in std_LOGIC);

end cuenta;

architecture arqcuenta of cuenta is

	subtype estado is STD_LOGIC_VECTOR(1 downto 0);
  signal q, qmas1: estado;

	constant e0: estado:="00";
	constant e1: estado:="01";
	constant e2: estado:="10";
	constant e3: estado:="11";
	
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
		if x = '1' then
			case q is
				when e0=> qmas1 <=e1;
				when e1=> qmas1 <=e2;
				when e2=> qmas1 <=e3;
				when e3=> qmas1 <=e0;
				when others=> qmas1 <=e0;
			end case;
		else
	case q is
				when e0=> qmas1 <=e3;
				when e3=> qmas1 <=e2;
				when e2=> qmas1 <=e1;
				when e1=> qmas1 <=e0;
				when others=> qmas1 <=e0;
			end case;
end if;
	salcuenta<=q;

end process;
end arqcuenta;