# Assembly through ATMEGA328P - Blinking LED using Timer1 normal mode
## Overview
This assembly program is designed for the ATmega328P microcontroller to demonstrate a simple LED blinking pattern with a defined delay using a Timer1 count.
The code utilizes the Timer1 module to introduce a delay of approximately 200ms between LED state changes.
## Functionality
The program accomplishes the following tasks:

1. Sets all bits of PORTD as output.
2. Enters a loop where it turns ON and OFF the first bit (bit 0) of PORTD, creating a blinking effect.
3. Implements a delay using the Timer1 module to control the time between LED state changes.
4. The delay_timer subroutine is used to introduce a delay of approximately 200ms.

## Software
1. Microchip Studio
2. Proteus
