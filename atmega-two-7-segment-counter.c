#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <util/delay.h>
#include <stdint.h>

#define F_CPU 20000000UL // speed on mcu crystal (20Mhz)
#define FREQ 20000000


//USART BAUD rate setup
#define BAUD 9600                                   // define baud
#define BAUDRATE ((F_CPU)/(BAUD*16UL)-1)            // set baud rate value for UBRR

int8_t EEMEM number = 0;

//volatile int8_t units = 0;
volatile int8_t changed_timer = 0;

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
  changed_timer = 0;
  sei();
}

//Interrupt Service Routine for INT1
ISR(INT1_vect) {
//  decrease value -1;
  cli();
  int8_t number_int1 = eeprom_read_byte(&number);
  number_int1--;
  if (number_int1 < 0){
    number_int1 = 99;
  }
  eeprom_update_byte (&number,number_int1);
  changed_timer = 0;
  sei();
}

ISR(PCINT2_vect) {
  cli();
  if( (PIND & (1 << PIND4)) == 1 ) {
      eeprom_update_byte (&number,0);
  }
  else
  {
      /* HIGH to LOW pin change */
  }
  sei();
}

void display_digit(int8_t digit);
void display_segment(int8_t segment);
void uart_init (void);
void uart_transmit (uint8_t data);
uint8_t uart_receive (void);

int main(void) {

  DDRB = (1<<DDB1); // Set portB1 as output for g of 7 segment
  DDRC = 0b00111111; // Set PortC0-5 as output for a,b,c,d,e,f of 7 segment
  DDRD = (1<<DDD7); // Set dual 7 segment toggle pin PORTD7 as output pin
  DDRD &= ~(1<<PD4); // Set PD4 as input
//  PORTD &= ~(1<<PD4);
  PORTD |= (1<<PD4) // Enable pull-ups for PD4

  PORTC = 0b00000000; // Initialize PORTC at 0 (no led ON)
  PORTB = 0b00000000; // Initialize PORTB at 0 (no led ON)

  uint8_t toggle = 0;
  int16_t circle_delay =0;
  int8_t segment_loop = 0;

  int8_t decimals = 0;
  int8_t units = 0;

  EICRA |= (1 << ISC00) | (1 << ISC01) | (1 << ISC11) | (1 << ISC10);    // set INT0 to trigger on RISING EDGE logic change
  EIMSK |= (1 << INT0) | (1 << INT1);     // Turns on INT0 & INT1

  PCICR |= (1<<PCIE2);   // set PCIE2 to enable PCMSK2 scan
  PCMSK2 |= (1<<PCINT20); // set PCINT20 to trigger an interrupt on state change

  TCCR1B |= (1 << CS11); // Set up timer with prescaler Fcpu/8

  sei();				//Enable Global Interrupt

  while(1){
    if (TCNT1 >= 20000){
      if (changed_timer <= 240){
        if (toggle == 0){ // left display (decimals)
          int8_t number_decimals = eeprom_read_byte(&number);
          decimals = number_decimals / 10;
          PORTD |= (1<<PORTD7);
          display_digit(decimals);
          toggle = 1;
          TCNT1 = 0;
          changed_timer++;
        }else{ // right display (units)
          int8_t number_units = eeprom_read_byte(&number);
          units = number_units % 10;
          PORTD &= ~(1<<PORTD7);
          display_digit(units);
          toggle = 0;
          TCNT1 = 0;
          changed_timer++;
        }
      }else{
        if (toggle == 0){
          if (circle_delay <= 29250){
            circle_delay++;
          }else{
            if (segment_loop < 5){
              segment_loop++;
            }else{
              segment_loop = 0;
            }
          circle_delay = 0;
          }
          display_segment(segment_loop);
          PORTD |= (1<<PORTD7);
          toggle = 1;
        }else{
          PORTD &= ~(1<<PORTD7);
          toggle = 0;
        }
      }
    }
  }

  return 0;
}

void display_digit(int8_t digit) {
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

void display_segment(int8_t segment) {
  switch(segment){
    case 0:
      PORTC = 0b00000001;   // Display segment a
      PORTB = 0b00000000;
      break;
    case 1:
      PORTC = 0b00000010;   // Display segment b
      PORTB = 0b00000000;
      break;
    case 2:
      PORTC = 0b00000100;   // Display segment c
      PORTB = 0b00000000;
      break;
    case 3:
      PORTC = 0b00001000;   // Display segment d
      PORTB = 0b00000000;
      break;
    case 4:
      PORTC = 0b00010000;   // Display segment e
      PORTB = 0b00000000;
      break;
    case 5:
      PORTC = 0b00100000;   // Display segment f
      PORTB = 0b00000000;
      break;
    case 6:
      PORTC = 0b00000000;   // Display segment g
      PORTB = 0b00000010;
      break;
    default:
      PORTC = 0b00000000;   // Display segment g
      PORTB = 0b00000010;
      break;
  }
}

// function to initialize UART
void uart_init (void) {
  UBRRH = (BAUDRATE>>8);                      // shift the register right by 8 bits
  UBRRL = BAUDRATE;                           // set baud rate
  UCSRB|= (1<<TXEN)|(1<<RXEN);                // enable receiver and transmitter
  UCSRC|= (1<<URSEL)|(1<<UCSZ0)|(1<<UCSZ1);   // 8bit data format
}

// function to send data
void uart_transmit (uint8_t data) {
  while (!( UCSRA & (1<<UDRE)));                // wait while register is free
  UDR = data;                                   // load data in the register
}

// function to receive data
uint8_t uart_receive (void) {
  while(!(UCSRA) & (1<<RXC));                   // wait while data is being received
  return UDR;                                   // return 8-bit data
}
