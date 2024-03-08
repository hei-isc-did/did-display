-- Count the Y value once each two lines
-- Counts X once every two pixels
-- Make 4 pixels out of each BRAM data
ARCHITECTURE rtl OF pixelsTwiceXTwiceY IS

  constant c_shiftValue : positive :=
    requiredBitNb(g_pixelSquarePixelLength-1);
  signal lvec_hoffset : unsigned(g_posXYBitNb-1 downto 0);
  signal lvec_oldY : unsigned(g_posYBitNb-1 downto 0);
  
BEGIN
  
  hoff : process(rst, clk)
  begin
    if rst = '1' then
      lvec_hoffset <= (others=>'0');
      lvec_oldY <= (others=>'0');
    elsif rising_edge(clk) then
      lvec_oldY <= posY;
      if lvec_oldY /= posY then
        if posY = 0 then
          lvec_hoffset <= (others=>'0');
        elsif (posY mod g_pixelSquarePixelLength) = 0 then
          lvec_hoffset <= lvec_hoffset + to_unsigned(
            g_vgaHResolution/g_pixelSquarePixelLength, lvec_hoffset'length
          );
        end if;
      end if;
    end if;
  end process hoff;
  
  address <= std_ulogic_vector(
    resize(shift_right(posX,c_shiftValue) + lvec_hoffset, address'length)
  );

END ARCHITECTURE rtl;
