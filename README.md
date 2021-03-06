# 0 to 99 counter with Atmega328p and 7 segment displays

![0-99counter-atmega328p] (atmega328p-0-99-counter-7-segment-breadboard.jpeg)

Code for a 0 to 99 counter using an Atmega328p and two 7-segment displays, including push buttons to reset the counter, increment and decrement it.

Check this video to see it in action: https://www.youtube.com/watch?v=xIt7RiY2nQ8

### Prerequisites

*PDF for the schematics of the circuit is available, see `atmega-two-7-segment-counter.pdf`*

Parts needed:

- 1x Atmega328p microcontroller
- 1x SN74HC14N (74HC14) Hex Schmitt-Trigger Inverter
- 2x 7-segment display with common cathode
- 2x 2N2222 transistor
- 2x 220Ω resistor
- 4x push button
- 4x 3.3µF electrolytic capacitor
- 4x 2.2kΩ resistor
- 4x 5.1kΩ resistor
- 1x 20Mhz crystal
- 2x 22pF ceramic capacitor
- 14x 1kΩ resistor
- 1x 7805 voltage regulator
- 2x 1µF electrolytic capacitor
- 4x 0.1µF ceramic capacitor
- 1x Green LED
- 1x 220Ω resistor
- 22 AWG solid hook-up wire (Black, Red, Yellow, Green)

## Deployment

All work was done on a Mac. Check here for easy steps to install `avr-gcc` and `avrdude` tools on your Mac: http://maxembedded.com/2015/06/setting-up-avr-gcc-toolchain-on-linux-and-mac-os-x/

I deployed it using a USBASP ISP programmer. Check `file one-line-compile-program-OSX.txt` for one line command to compile and program it on your Atmega328p.

*KiCad file for the schematics of the circuit are in the `atmega-7-segment-0-99-counter` folder*

## Authors

* **Axel Caspard** -  [singsonn](https://github.com/singsonn)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
