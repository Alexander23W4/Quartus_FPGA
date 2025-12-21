library ieee;
use ieee.std_logic_1164.all;

entity latch_4bit_fixed is
    port (
        clk      : in std_logic;   -- 时钟
        set      : in std_logic;   -- 置位
        clear    : in std_logic;   -- 清零
        
        din0     : in std_logic;
        din1     : in std_logic;
        din2     : in std_logic;
        din3     : in std_logic;
        
        dout0    : out std_logic;
        dout1    : out std_logic;
        dout2    : out std_logic;
        dout3    : out std_logic
    );
end entity;

architecture behavioral of latch_4bit_fixed is
    signal reg0, reg1, reg2, reg3 : std_logic := '0';
    signal fb0, fb1, fb2, fb3 : std_logic;
begin
    -- feedback：输入或已锁存
    fb0 <= din0 or reg0;
    fb1 <= din1 or reg1;
    fb2 <= din2 or reg2;
    fb3 <= din3 or reg3;

    -- 位0触发器
    process(clk, clear)
    begin
        if clear = '1' then
            reg0 <= '0';
        elsif rising_edge(clk) then
            if set = '1' then
                reg0 <= fb0;
            end if;
        end if;
    end process;

    -- 位1触发器
    process(clk, clear)
    begin
        if clear = '1' then
            reg1 <= '0';
        elsif rising_edge(clk) then
            if set = '1' then
                reg1 <= fb1;
            end if;
        end if;
    end process;

    -- 位2触发器
    process(clk, clear)
    begin
        if clear = '1' then
            reg2 <= '0';
        elsif rising_edge(clk) then
            if set = '1' then
                reg2 <= fb2;
            end if;
        end if;
    end process;

    -- 位3触发器
    process(clk, clear)
    begin
        if clear = '1' then
            reg3 <= '0';
        elsif rising_edge(clk) then
            if set = '1' then
                reg3 <= fb3;
            end if;
        end if;
    end process;

    -- 输出
    dout0 <= reg0;
    dout1 <= reg1;
    dout2 <= reg2;
    dout3 <= reg3;
end architecture;
