ARCHITECTURE test OF display_tester IS

  constant c_clockPeriod: time := 1.0/g_clockFrequency * 1 sec;
  constant c_vgaPixelClockPeriod: time := 1.0/g_vgaPixelClockFrequency * 1 sec;
  
  signal lsig_clk: std_uLogic := '1';
  signal lsig_vgaPixelClk: std_uLogic := '1';

  constant c_testModePulseWidth: time := 10 us;
  constant c_pulseWidth: time := 20 ms;

BEGIN
  ------------------------------------------------------------------------------
                                                              -- clock and reset
  rst <= '1', '0' after 4*c_clockPeriod;

  lsig_clk <= not lsig_clk after c_clockPeriod/2;
  clk <= transport lsig_clk after 9.0/10.0 * c_clockPeriod;
  
  lsig_vgaPixelClk <= not lsig_vgaPixelClk after c_vgaPixelClockPeriod/2;
  vgaPixelClk  <= transport lsig_vgaPixelClk after 9.0/10.0 * c_vgaPixelClockPeriod;

  ------------------------------------------------------------------------------
                                                                -- test sequence
  process
  begin
    ----------------------------------------------------------------------------
                                                                    -- test mode
    testMode <= '1';
    start    <= '0';
    stop     <= '0';
    button3  <= '0';
    button4  <= '0';


    wait for 10 us;
    start <=  '1', '0' after c_testModePulseWidth;

    wait for 40 us;
    stop <= '1', '0' after c_testModePulseWidth;

    wait for 50 us;
    button3 <= '1', '0' after c_testModePulseWidth;

    wait for 70 us;
    button4 <= '1', '0' after c_testModePulseWidth;

    wait for 2*c_testModePulseWidth;
    start <=  '1', '0' after c_testModePulseWidth;

    ----------------------------------------------------------------------------
                                                                   -- real speed
    testMode <= '0';

   wait for 1 ms - now;
    start <=  '1', '0' after c_pulseWidth;

    wait for 70 ms - now;
    stop <= '1', '0' after c_pulseWidth;

    wait for 100 ms - now;
    button3 <= '1', '0' after c_pulseWidth;

  wait for 120 ms - now;
    button4 <= '1', '0' after c_pulseWidth;
  wait;
  end process;

END ARCHITECTURE test;