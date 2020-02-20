# Christmas tree

A lighted Christmas tree with shiny fairy lights and star.  

![Christmas tree picture 1](https://github.com/RICCIARDI-Adrien/Christmas_Tree/blob/master/Resources/Picture_1.jpg)
![Christmas tree picture 2](https://github.com/RICCIARDI-Adrien/Christmas_Tree/blob/master/Resources/Picture_2.jpg)

Here are all needed parts to build the Christmas tree :  
![Christmas tree picture 3](https://github.com/RICCIARDI-Adrien/Christmas_Tree/blob/master/Resources/Picture_3.jpg)

## Hardware

Board has been designed with KiCaD 5.1.4.
* PCB production files and Bill of materials are available in [releases](https://github.com/RICCIARDI-Adrien/Christmas_Tree/releases) section.
* When manufacturing the PCB, select a black top and bottom solder mask to highlight the leds.
* Board is powered by an USB-B connector. Use a 2A (or more) standard USB power supply, like [this one](https://fr.rs-online.com/web/p/adaptateurs-ac-dc/1242193/).

## Software

Software is written in C for Microchip XC8 compiler. It works with free compiler version.

To build the firmware, go to `Software` directory and type `make`.

## Casing

Casing and supports are made of 3mm-thick galvanized steel. A DXF file is provided in [releases](https://github.com/RICCIARDI-Adrien/Christmas_Tree/releases) section for laser cutting.
