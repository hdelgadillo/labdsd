library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity sum2 is
   Port (
      a    : in STD_LOGIC;
      b    : in STD_LOGIC;
      cin  : in STD_LOGIC;
      f    : out STD_LOGIC;
      cout : out STD_LOGIC);
end sum2;
 
architecture arqsum2 of sum2 is
begin
 
   f <= a xor b xor cin;
   cout <= (a and b) or (cin and (a xor b));
 
end arqsum2;