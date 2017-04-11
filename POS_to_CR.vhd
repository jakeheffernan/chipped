----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2017 12:53:10 AM
-- Design Name: 
-- Module Name: POS_to_CR - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity POS_to_CR is
    Port ( i_pos_RTS : in STD_LOGIC;
           i_pos_TX : in STD_LOGIC;
           i_cr_CTS : in STD_LOGIC;
           o_cr_RX : out STD_LOGIC);
end POS_to_CR;

architecture Behavioral of POS_to_CR is

begin

 process
    
        if (i_pos_RTS = '0' and i_cr_CTS = '0') then
        
            o_cr_RX <= i_pos_TX;
        
        end if;

    end process;


end Behavioral;
