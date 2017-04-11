----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/11/2017 12:53:10 AM
-- Design Name: 
-- Module Name: CR_to_MITM - Behavioral
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

entity CR_to_MITM is
    Port ( 
           i_cr_RTS : in STD_LOGIC;
           i_cr_TX : in STD_LOGIC;
           i_mitm_CTS : in STD_LOGIC;
           o_mitm_RX : out STD_LOGIC);
end CR_to_MITM;

architecture Behavioral of CR_to_MITM is

begin

    process
    
        if (i_cr_RTS = '0' and i_mitm_CTS = '0') then
        
            o_mitm_RX <= i_cr_TX;
        
        end if;

    end process;
    
end Behavioral;
