#define F_CPU 20000000UL
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <util/delay.h>
#include <stdint.h>

int8_t EEMEM number = 0;

//volatile int8_t units = 0;
//volatile int8_t decimals = 0;

//Interrupt Service Routine for INT0
ISR(INT0_vect) {
//  increase value +1;
  cli();
  int8_t number_int0 = eeprom_read_byte(&number);
  number_int0++;
  if (number_int0 > 99){
    number_int0 = 0;
  }
  eeprom_update_byte (&number,number_int0);
  sei();
}

//Interrupt Service Routine for INT0
ISR(INT1_vect) {
//  decrease value -1;
  cli();
  int8_t number_int1 = eeprom_read_byte(&number);
  number_int1--;
  if (number_int1 < 0){
    number_int1 = 99;
  }
  eeprom_update_byte (&number,number_int1);
  sei();
}

void display_digit(int8_t digit);

int main(void) {

  DDRB = (1<<DDB1); // Set portB1 as output for g of 7 segment
  DDRC = 0b00111111; // Set PortC0-5 as output for a,b,c,d,e,f of 7 segment
  DDRD = (1<<DDD0); // Set dual 7 segment toggle pin as output pin

  PORTC = 0b00000000; // Initialize PORTC at 0 (no led ON)
  PORTB = 0b00000000; // Initialize PORTB at 0 (no led ON)

//  PORTD = ~(1<<PORTD0); // set 2nd 7segment at ON (other should be OFF)
//  PORTD |= (1<<PORTD0); // set First 7segment at ON (other should be OFF)

  uint8_t toggle = 0;

  int8_t decimals = 0;
  int8_t units = 0;

  EICRA |= (1 << ISC00) | (1 << ISC01) | (1 << ISC11) | (1 << ISC10);    // set INT0 to trigger on RISING EDGE logic change
  EIMSK |= (1 << INT0) | (1 << INT1);     // Turns on INT0 & INT1

  TCCR1B |= (1 << CS11); // Set up timer with prescaler Fcpu/8

  sei();				//Enable Global Interrupt

  while(1){
    if (TCNT1 >= 20000){
      if (toggle == 0){ // left display (decimals)
        int8_t number_decimals = eeprom_read_byte(&number);
        decimals = number_decimals / 10;
        PORTD |= (1<<PORTD0);
        display_digit(decimals);
        toggle = 1;
        TCNT1 = 0;
      }else{ // right display (units)
        int8_t number_units = eeprom_read_byte(&number);
        units = number_units % 10;
        PORTD &= ~(1<<PORTD0);
        display_digit(units);
        toggle = 0;
        TCNT1 = 0;
      }
    }
  }
  return 0;
}

void display_digit(int8_t digit){
  switch(digit){
    case 0:
      PORTC = 0b00111111;   // Display Number 0
      PORTB = 0b00000000;
      break;
    case 1:
      PORTC = 0b00000110;   // Display Number 1
      PORTB = 0b00000000;
      break;
    case 2:
      PORTC = 0b00011011;   // Display Number 2
      PORTB = 0b00000010;
      break;
    case 3:
      PORTC = 0b00001111;   // Display Number 3
      PORTB = 0b00000010;
      break;
    case 4:
      PORTC = 0b00100110;   // Display Number 4
      PORTB = 0b00000010;
      break;
    case 5:
      PORTC = 0b00101101;   // Display Number 5
      PORTB = 0b00000010;
      break;
    case 6:
      PORTC = 0b00111101;   // Display Number 6
      PORTB = 0b00000010;
      break;
    case 7:
      PORTC = 0b00000111;   // Display Number 7
      PORTB = 0b00000000;
      break;
    case 8:
      PORTC = 0b00111111;   // Display Number 8
      PORTB = 0b00000010;
      break;
    case 9:
      PORTC = 0b00101111;   // Display Number 9
      PORTB = 0b00000010;
      break;
    default:
      PORTC = 0b00111111;   // Display Number 8
      PORTB = 0b00000010;
      break;
  }
}
