library ieee;
use ieee.std_logic_1164.all;

-- 4位自锁寄存器（引脚全部分开）
entity latch_4bit_separate is
    port (
        -- 时钟和使能
        clk      : in std_logic;        -- 时钟（不用时钟时可接高电平）
        set      : in std_logic;        -- 置位使能（高有效）
        clear    : in std_logic;        -- 清零（高有效）
        
        -- 4位输入（分开的引脚）
        din0     : in std_logic;        -- 输入位0
        din1     : in std_logic;        -- 输入位1  
        din2     : in std_logic;        -- 输入位2
        din3     : in std_logic;        -- 输入位3
        
        -- 4位输出（分开的引脚）
        dout0    : out std_logic;       -- 输出位0
        dout1    : out std_logic;       -- 输出位1
        dout2    : out std_logic;       -- 输出位2
        dout3    : out std_logic        -- 输出位3
    );
end entity latch_4bit_separate;

architecture behavioral of latch_4bit_separate is
    -- 内部寄存器位
    signal reg0, reg1, reg2, reg3 : std_logic := '0';
    
    -- 反馈信号
    signal fb0, fb1, fb2, fb3 : std_logic;
begin
    -- 反馈逻辑：输入或已锁存的值
    fb0 <= din0 or reg0;
    fb1 <= din1 or reg1;
    fb2 <= din2 or reg2;
    fb3 <= din3 or reg3;
    
    -- 4个独立的D触发器（相当于4个7474）
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
    
    -- 输出连接
    dout0 <= reg0;
    dout1 <= reg1;
    dout2 <= reg2;
    dout3 <= reg3;
end architecture behavioral;

-- 更简单的电平触发版本（不需要时钟）
architecture simple of latch_4bit_separate is
    signal q0, q1, q2, q3 : std_logic := '0';
begin
    -- 位0：一旦输入为1就锁存，直到清零
    process(set, clear, din0)
    begin
        if clear = '1' then
            q0 <= '0';
        elsif set = '1' and din0 = '1' then
            q0 <= '1';
        end if;
    end process;
    
    -- 位1
    process(set, clear, din1)
    begin
        if clear = '1' then
            q1 <= '0';
        elsif set = '1' and din1 = '1' then
            q1 <= '1';
        end if;
    end process;
    
    -- 位2
    process(set, clear, din2)
    begin
        if clear = '1' then
            q2 <= '0';
        elsif set = '1' and din2 = '1' then
            q2 <= '1';
        end if;
    end process;
    
    -- 位3
    process(set, clear, din3)
    begin
        if clear = '1' then
            q3 <= '0';
        elsif set = '1' and din3 = '1' then
            q3 <= '1';
        end if;
    end process;
    
    -- 输出
    dout0 <= q0;
    dout1 <= q1;
    dout2 <= q2;
    dout3 <= q3;
end architecture simple;

-- 使用示例
architecture usage_example of latch_4bit_separate is
begin
    -- 最简单的用法：clk接高电平，set常高
    -- 这样只要有输入为1就立即锁存
end architecture usage_example;