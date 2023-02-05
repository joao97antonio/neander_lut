library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm is
    port(
    decoder : in std_logic_vector(3 downto 0);
    clock : in std_logic;
    reset : in std_logic;
    count_load : out std_logic;
    ula_sel : out std_logic_vector(1 downto 0);
    enable_ula : out std_logic;
    zero : in std_logic;
    negative : in std_logic
);
end fsm;

architecture behavior of fsm is
    type state_name is (lda, add, sub, rst, mult,jump,jz,jn);
    signal next_state  : state_name;

    begin
        process(reset, clock)
            begin
                if(reset = '1') then
                        next_state <= rst;
                elsif (rising_edge(clock)) then
                    case next_state is
                        when rst  =>
                            if(decoder = "0000") then
                                next_state <= lda;
                            elsif (decoder = "0001") then
                                next_state <= add;
                            elsif (decoder = "0010") then
                                next_state <= sub;
                            elsif (decoder = "0011") then
                                next_state <= mult;
                            elsif (decoder = "0100") then
                                next_state <= jump;
                            elsif (decoder = "0101") then
                                next_state <= jz;
                            elsif (decoder = "0110") then
                                next_state <= jn;
                            end if;
                        when add  => 
                            if(decoder = "0000") then
                                next_state <= lda;
                            elsif (decoder = "0001") then
                                next_state <= add;
                            elsif (decoder = "0010") then
                                next_state <= sub;
                            elsif (decoder = "0011") then
                                next_state <= mult;
                            elsif (decoder = "0100") then
                                next_state <= jump;
                            elsif (decoder = "0101") then
                                next_state <= jz;
                            elsif (decoder = "0110") then
                                next_state <= jn;
                            end if;
                        when sub  => 
                            if(decoder = "0000") then
                                next_state <= lda;
                            elsif (decoder = "0001") then
                                next_state <= add;
                            elsif (decoder = "0010") then
                                next_state <= sub;
                            elsif (decoder = "0011") then
                                next_state <= mult;
                            elsif (decoder = "0100") then
                                next_state <= jump;
                            elsif (decoder = "0101") then
                                next_state <= jz;
                            elsif (decoder = "0110") then
                                next_state <= jn;
                            end if;
                        when mult  => 
                            if(decoder = "0000") then
                                next_state <= lda;
                            elsif (decoder = "0001") then
                                next_state <= add;
                            elsif (decoder = "0010") then
                                next_state <= sub;
                            elsif (decoder = "0011") then
                                next_state <= mult;
                            elsif (decoder = "0100") then
                                next_state <= jump;
                            elsif (decoder = "0101") then
                                next_state <= jz;
                            elsif (decoder = "0110") then
                                next_state <= jn;
                            end if;
                        when lda  => 
                            if(decoder = "0000") then
                                next_state <= lda;
                            elsif (decoder = "0001") then
                                next_state <= add;
                            elsif (decoder = "0010") then
                                next_state <= sub;
                            elsif (decoder = "0011") then
                                next_state <= mult;
                            elsif (decoder = "0100") then
                                next_state <= jump;
                            elsif (decoder = "0101") then
                                next_state <= jz;
                            elsif (decoder = "0110") then
                                next_state <= jn;
                            end if;
                        when jump  => 
                            if(decoder = "0000") then
                                next_state <= lda;
                            elsif (decoder = "0001") then
                                next_state <= add;
                            elsif (decoder = "0010") then
                                next_state <= sub;
                            elsif (decoder = "0011") then
                                next_state <= mult;
                            elsif (decoder = "0100") then
                                next_state <= jump;
                            elsif (decoder = "0101") then
                                next_state <= jz;
                            elsif (decoder = "0110") then
                                next_state <= jn;
                            end if;
                        when jz  => 
                            if(decoder = "0000") then
                                next_state <= lda;
                            elsif (decoder = "0001") then
                                next_state <= add;
                            elsif (decoder = "0010") then
                                next_state <= sub;
                            elsif (decoder = "0011") then
                                next_state <= mult;
                            elsif (decoder = "0100") then
                                next_state <= jump;
                            elsif (decoder = "0101") then
                                next_state <= jz;
                            elsif (decoder = "0110") then
                                next_state <= jn;
                            end if;
                        when jn  => 
                            if(decoder = "0000") then
                                next_state <= lda;
                            elsif (decoder = "0001") then
                                next_state <= add;
                            elsif (decoder = "0010") then
                                next_state <= sub;
                            elsif (decoder = "0011") then
                                next_state <= mult;
                            elsif (decoder = "0100") then
                                next_state <= jump;
                            elsif (decoder = "0101") then
                                next_state <= jz;
                            elsif (decoder = "0110") then
                                next_state <= jn;
                            end if;
                    end case;
                end if;
        end process;
        process(next_state)
        begin
            case next_state is
                when rst  =>
                    enable_ula <= '1';
                    count_load <= '0';
                    ula_sel <= "00";
                when add =>
                    enable_ula <= '1';
                    count_load <= '1';
                    ula_sel <= "01";
                when sub =>
                    enable_ula <= '1';
                    count_load <= '1';
                    ula_sel <= "10";
                when mult =>
                    enable_ula <= '1';
                    count_load <= '1';
                    ula_sel <= "11";
                when lda =>
                    enable_ula <= '1';
                    count_load <= '1';
                    ula_sel <= "00";
                when jump =>
                    enable_ula <= '0';
                    count_load <= '0';
                    ula_sel <= "01";
                when jz =>
                    enable_ula <= '0';
                    count_load <= '0';
                    ula_sel <= "01";
                when jn =>
                    enable_ula <= '0';
                    count_load <= '0';
                    ula_sel <= "01";
            end case;
        end process;
end behavior;