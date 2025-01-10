# Image Creator
The following script can be used to load a picture, resize it, and save the pixels values to a `.txt` file comprehensible by the `did-display/vgaDataCreator` block.
The output file contains one pixel per line, under a 3bpp RGB format.

## Changelog
v1.1
- ADD: version + welcome message
- ADD: BMP image generation

v1.0:
- Initial release

## How-to
### Size consideration
The `vgaDataCreator` block takes the generated `.txt` image to further display it. Since the memory is not big enough on the FPGAs, we need to resize it:
- Xilinx XC3S500E (EBS2) : 73 Kib
- Xilinx XC3S1200E (EBS2) : 136 Kib
- Lattice LFE5U-25F (EBS3) : 1008 Kib

A 640\*480 image with 3bpp takes a place of 921'600 bits.

The `vgaDataCreator` creates super pixels of size `c_pixelBoxRidge`^2 (i.e. a pixel is repeated `c_pixelBoxRidge` times in X and `c_pixelBoxRidge` in Y).

__The given `c_pixelBoxRidge` must follow those conditions:__
- __It is a power of two (2, 4, 8 ...)__
- __The image length (640 and 480) divided by `c_pixelBoxRidge`^2 must give an integer value.__

The final image size is `ReducedSize = FullSize/(c_pixelBoxRidge^2) = 921'600/(2(default)^2) = 230'400 bits`.

It fits the LFE5U-25F FPGA only. To target the Xilinx ones, modify `c_pixelBoxRidge` to 4, which gives a final size of 57'600 bits, but a much worse resolution.

### Generate BRAM content
1. Run the `imagecreator.exe` 
1. Input new width (i.e. baseWidth / `c_pixelBoxRidge` => 320 by default)
1. Input new height (i.e. baseHeight / `c_pixelBoxRidge` => 240 by default)
1. Target the `Simulation` dir and save as a **.txt** file
1. Go inside the `vgaDataCreator` block and modify the `bramBinAsciiInit` block generic `initFile` to `"$SIMULATION_DIR/myNewImage.txt"`

Done

### Technical details
#### Resizing the image
The base image is resized through __Pillow__ library.
Such transform may bring out some artifacts (e.g. texts are blocky and with extra pixels around them).

#### Transforming to 1BPP
The transform to 1BPP simply iterate all pixels and for each channel, if its value is over 127, it is set to 255, else to 0.
Due to the previous resizing method, some pixels may suddenly be a different color than the surrounding ones.

#### Checking result
Since all those artifacts may or not be due to the transform method of this tool, a __.bmp__ file is also generated, which can be used to check the generated image.

If displayed through a viewer which does not super-sample the image, the result should be the same as the one displayed on the VGA screen.
