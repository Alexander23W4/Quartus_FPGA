library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_mult4x4 is
    port(
        a, b : in  std_logic_vector(3 downto 0);  -- 4位输入
        bcd2 : out std_logic_vector(3 downto 0);  -- 百位BCD (0-2)
        bcd1 : out std_logic_vector(3 downto 0);  -- 十位BCD (0-9)
        bcd0 : out std_logic_vector(3 downto 0)   -- 个位BCD (0-9)
    );
end entity;

architecture behavioral of bcd_mult4x4 is
    signal product : unsigned(7 downto 0);  -- 原始乘积
    signal temp    : unsigned(7 downto 0);  -- 转换用临时变量
begin
    -- 计算乘积
    product <= unsigned(a) * unsigned(b);
    
    -- 二进制转BCD (双精法)
    process(product)
        variable bcd_temp : unsigned(11 downto 0);  -- 3个BCD码共12位
    begin
        -- 初始化
        bcd_temp := (others => '0');
        bcd_temp(7 downto 0) := product;
        
        -- 循环8次，每次移位并调整BCD
        for i in 0 to 7 loop
            -- 检查百位是否>=5
            if bcd_temp(11 downto 8) >= 5 then
                bcd_temp(11 downto 8) := bcd_temp(11 downto 8) + 3;
            end if;
            
            -- 检查十位是否>=5
            if bcd_temp(7 downto 4) >= 5 then
                bcd_temp(7 downto 4) := bcd_temp(7 downto 4) + 3;
            end if;
            
            -- 检查个位是否>=5
            if bcd_temp(3 downto 0) >= 5 then
                bcd_temp(3 downto 0) := bcd_temp(3 downto 0) + 3;
            end if;
            
            -- 左移一位
            bcd_temp := bcd_temp(10 downto 0) & '0';
        end loop;
        
        -- 输出BCD码
        bcd2 <= std_logic_vector(bcd_temp(11 downto 8));  -- 百位
        bcd1 <= std_logic_vector(bcd_temp(7 downto 4));   -- 十位
        bcd0 <= std_logic_vector(bcd_temp(3 downto 0));   -- 个位
    end process;
end architecture;

-- 简化版（如果范围只是0-99，不需要百位）：
architecture simple of bcd_mult4x4 is
    signal product : integer range 0 to 255;
begin
    product <= to_integer(unsigned(a)) * to_integer(unsigned(b));
    
    bcd2 <= "0000" when product < 100 else  -- 百位总是0或1
            "0001" when product < 200 else
            "0010";
    
    bcd1 <= std_logic_vector(to_unsigned((product / 10) mod 10, 4));
    bcd0 <= std_logic_vector(to_unsigned(product mod 10, 4));
end architecture;