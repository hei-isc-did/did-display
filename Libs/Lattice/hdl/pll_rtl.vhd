-- VHDL netlist generated by SCUBA Diamond (64-bit) 3.12.1.454
-- Module  Version: 5.7
--C:\lscc\diamond\3.12\ispfpga\bin\nt64\scuba.exe -w -n pll -lang vhdl -synth synplify -bus_exp 7 -bb -arch sa5p00 -type pll -fin 100.00 -fclkop 60 -fclkop_tol 10.0 -fclkos 75 -fclkos_tol 10.0 -phases 0 -fclkos2 50 -fclkos2_tol 10.0 -phases2 0 -fclkos3 10 -fclkos3_tol 10.0 -phases3 0 -phase_cntl STATIC -enable_s -enable_s2 -enable_s3 -pllLocked -fb_mode 1 -fdc C:/temp/clocker/pll/pll.fdc 

-- Offers 10MHz, 50MHz, 60MHz and 75MHz clocks

library IEEE;
  use IEEE.std_logic_1164.all;
library ECP5U;
  use ECP5U.components.all;

ENTITY pll IS
    PORT( 
        clkIn100M : IN     std_ulogic;
        en75M     : IN     std_ulogic;
        en50M     : IN     std_ulogic;
        en10M     : IN     std_ulogic;
        clk60MHz  : OUT    std_ulogic;
        clk75MHz  : OUT    std_ulogic;
        clk50MHz  : OUT    std_ulogic;
        clk10MHz  : OUT    std_ulogic;
        pllLocked : OUT    std_ulogic
    );

-- Declarations

END pll ;

architecture rtl of pll is

    -- internal signal declarations
    signal REFCLK: std_logic;
    signal CLKOS3_t: std_logic;
    signal CLKOS2_t: std_logic;
    signal CLKOS_t: std_logic;
    signal CLKOP_t: std_logic;
    signal scuba_vhi: std_logic;
    signal scuba_vlo: std_logic;

    attribute FREQUENCY_PIN_CLKOS3 : string; 
    attribute FREQUENCY_PIN_CLKOS2 : string; 
    attribute FREQUENCY_PIN_CLKOS : string; 
    attribute FREQUENCY_PIN_CLKOP : string; 
    attribute FREQUENCY_PIN_CLKI : string; 
    attribute ICP_CURRENT : string; 
    attribute LPF_RESISTOR : string; 
    attribute FREQUENCY_PIN_CLKOS3 of PLLInst_0 : label is "10.000000";
    attribute FREQUENCY_PIN_CLKOS2 of PLLInst_0 : label is "50.000000";
    attribute FREQUENCY_PIN_CLKOS of PLLInst_0 : label is "75.000000";
    attribute FREQUENCY_PIN_CLKOP of PLLInst_0 : label is "60.000000";
    attribute FREQUENCY_PIN_CLKI of PLLInst_0 : label is "100.000000";
    attribute ICP_CURRENT of PLLInst_0 : label is "5";
    attribute LPF_RESISTOR of PLLInst_0 : label is "16";
    attribute syn_keep : boolean;
    attribute NGD_DRC_MASK : integer;
    attribute NGD_DRC_MASK of rtl : architecture is 1;

begin
    -- component instantiation statements
    scuba_vhi_inst: VHI
        port map (Z=>scuba_vhi);

    scuba_vlo_inst: VLO
        port map (Z=>scuba_vlo);

    PLLInst_0: EHXPLLL
        generic map (PLLRST_ENA=> "DISABLED", INTFB_WAKE=> "DISABLED", 
        STDBY_ENABLE=> "DISABLED", DPHASE_SOURCE=> "DISABLED", 
        CLKOS3_FPHASE=>  0, CLKOS3_CPHASE=>  59, CLKOS2_FPHASE=>  0, 
        CLKOS2_CPHASE=>  11, CLKOS_FPHASE=>  0, CLKOS_CPHASE=>  7, 
        CLKOP_FPHASE=>  0, CLKOP_CPHASE=>  9, PLL_LOCK_MODE=>  0, 
        CLKOS_TRIM_DELAY=>  0, CLKOS_TRIM_POL=> "FALLING", 
        CLKOP_TRIM_DELAY=>  0, CLKOP_TRIM_POL=> "FALLING", 
        OUTDIVIDER_MUXD=> "DIVD", CLKOS3_ENABLE=> "DISABLED", 
        OUTDIVIDER_MUXC=> "DIVC", CLKOS2_ENABLE=> "DISABLED", 
        OUTDIVIDER_MUXB=> "DIVB", CLKOS_ENABLE=> "DISABLED", 
        OUTDIVIDER_MUXA=> "DIVA", CLKOP_ENABLE=> "ENABLED", CLKOS3_DIV=>  60, 
        CLKOS2_DIV=>  12, CLKOS_DIV=>  8, CLKOP_DIV=>  10, CLKFB_DIV=>  3, 
        CLKI_DIV=>  5, FEEDBK_PATH=> "CLKOP")
        port map (CLKI=>clkIn100M, CLKFB=>CLKOP_t, PHASESEL1=>scuba_vlo, 
            PHASESEL0=>scuba_vlo, PHASEDIR=>scuba_vlo, 
            PHASESTEP=>scuba_vlo, PHASELOADREG=>scuba_vlo, 
            STDBY=>scuba_vlo, PLLWAKESYNC=>scuba_vlo, RST=>scuba_vlo, 
            ENCLKOP=>scuba_vlo, ENCLKOS=>en75M, ENCLKOS2=>en50M, 
            ENCLKOS3=>en10M, CLKOP=>CLKOP_t, CLKOS=>CLKOS_t, 
            CLKOS2=>CLKOS2_t, CLKOS3=>CLKOS3_t, LOCK=>pllLocked, 
            INTLOCK=>open, REFCLK=>REFCLK, CLKINTFB=>open);

    clk10MHz <= CLKOS3_t;
    clk50MHz <= CLKOS2_t;
    clk75MHz <= CLKOS_t;
    clk60MHz <= CLKOP_t;
end rtl;