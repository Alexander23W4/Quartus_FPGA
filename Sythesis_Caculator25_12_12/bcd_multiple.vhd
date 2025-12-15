library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- 修改实体名，避免与之前的multiplier_4x4冲突
entity bcd_multiplier is
    port(
        a, b : in  std_logic_vector(3 downto 0);  -- 4位输入
        bcd_hundreds : out std_logic_vector(3 downto 0);  -- 百位BCD (0-2)
        bcd_tens     : out std_logic_vector(3 downto 0);  -- 十位BCD (0-9)
        bcd_ones     : out std_logic_vector(3 downto 0)   -- 个位BCD (0-9)
    );
end entity;

architecture behavioral of bcd_multiplier is
    signal product : unsigned(7 downto 0);  -- 原始乘积
begin
    -- 计算乘积
    product <= unsigned(a) * unsigned(b);
    
    -- 二进制转BCD
    process(product)
        variable bcd_temp : unsigned(11 downto 0);  -- 3个BCD码共12位
    begin
        -- 初始化
        bcd_temp := (others => '0');
        bcd_temp(7 downto 0) := product;
        
        -- 双精法转换（8次循环）
        for i in 0 to 7 loop
            -- 百位调整
            if bcd_temp(11 downto 8) >= 5 then
                bcd_temp(11 downto 8) := bcd_temp(11 downto 8) + 3;
            end if;
            
            -- 十位调整
            if bcd_temp(7 downto 4) >= 5 then
                bcd_temp(7 downto 4) := bcd_temp(7 downto 4) + 3;
            end if;
            
            -- 个位调整
            if bcd_temp(3 downto 0) >= 5 then
                bcd_temp(3 downto 0) := bcd_temp(3 downto 0) + 3;
            end if;
            
            -- 左移
            bcd_temp := bcd_temp(10 downto 0) & '0';
        end loop;
        
        -- 输出BCD码
        bcd_hundreds <= std_logic_vector(bcd_temp(11 downto 8));  -- 百位
        bcd_tens     <= std_logic_vector(bcd_temp(7 downto 4));   -- 十位
        bcd_ones     <= std_logic_vector(bcd_temp(3 downto 0));   -- 个位
    end process;
end architecture;

-- 简化版（除法运算，更直观）
architecture simple of bcd_multiplier is
    signal product_int : integer range 0 to 255;
begin
    -- 计算乘积
    product_int <= to_integer(unsigned(a)) * to_integer(unsigned(b));
    
    -- 直接计算百位、十位、个位
    process(product_int)
        variable hundreds, tens, ones : integer range 0 to 9;
    begin
        -- 计算各位数字
        hundreds := product_int / 100;
        tens     := (product_int / 10) mod 10;
        ones     := product_int mod 10;
        
        -- 转换为二进制
        bcd_hundreds <= std_logic_vector(to_unsigned(hundreds, 4));
        bcd_tens     <= std_logic_vector(to_unsigned(tens, 4));
        bcd_ones     <= std_logic_vector(to_unsigned(ones, 4));
    end process;
end architecture;