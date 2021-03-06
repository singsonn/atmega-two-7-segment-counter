#define F_CPU 20000000UL // speed on mcu crystal (20Mhz)
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <util/delay.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

//#define FREQ 20000000

void display_digit(int8_t digit);
void display_segment(int8_t segment);
void uart_init(void);
void uart_transmit(uint8_t data);
uint8_t uart_receive(void);
//void uart_transmit (uint8_t data, FILE *stream);
//uint8_t uart_receive (FILE *stream);
void interrupts_init(void);
void timer_init(void);
void ports_init(void);
int main(void);

//USART BAUD rate setup
#define BAUD 9600                                   // define baud
#define BAUDRATE ((F_CPU)/(BAUD*16UL)-1)            // set baud rate value for UBRR

uint8_t EEMEM number = 0;

//volatile int8_t units = 0;
volatile int8_t changed_timer = 0;

//Interrupt Service Routine for INT0
ISR(INT0_vect) {
//  increase value +1;
//  int8_t number_int0 = eeprom_read_byte(&number);
  uint8_t number_int0 = eeprom_read_byte(&number);
  number_int0++;
  if (number_int0 > 99){
    number_int0 = 0;
  }
  eeprom_update_byte(&number,number_int0);
  uart_transmit(number_int0);
//  printf("U");
  changed_timer = 0;
}

//Interrupt Service Routine for INT1
ISR(INT1_vect) {
//  decrease value -1;
//  int8_t number_int1 = eeprom_read_byte(&number);
  uint8_t number_int1 = eeprom_read_byte(&number);
  number_int1--;
  if (number_int1 < 0){
    number_int1 = 99;
  }
  eeprom_update_byte(&number,number_int1);
  uart_transmit(number_int1);
//  printf("D");
  changed_timer = 0;
}

ISR(PCINT2_vect) {
  if(PIND & (1 << PD4)) {
    eeprom_update_byte (&number,0);
  }
}

//FILE uart_output = FDEV_SETUP_STREAM(uart_transmit, NULL, _FDEV_SETUP_WRITE);
//FILE uart_input = FDEV_SETUP_STREAM(NULL, uart_receive, _FDEV_SETUP_READ);

//FILE uart_io FDEV_SETUP_STREAM(uart_transmit, uart_receive, _FDEV_SETUP_RW);


int main(void) {

  uint8_t toggle = 0;
  int16_t circle_delay =0;
  int8_t segment_loop = 0;

  int8_t decimals = 0;
  int8_t units = 0;

  interrupts_init();
  timer_init();
  ports_init();
  uart_init();
//  stdout = &uart_output;
//  stdin  = &uart_input;

  sei();				//Enable Global Interrupt

  while(1){
    if (TCNT1 >= 20000){
      if (changed_timer <= 120){
        if (toggle == 0){ // left display (decimals)
          uint8_t number_decimals = eeprom_read_byte(&number);
          decimals = number_decimals / 10;
          PORTD |= (1<<PORTD7);
          display_digit(decimals);
          toggle = 1;
          TCNT1 = 0;
          changed_timer++;
        }else{ // right display (units)
          uint8_t number_units = eeprom_read_byte(&number);
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
  UBRR0H = (BAUDRATE>>8);                      // shift the register right by 8 bits
  UBRR0L = BAUDRATE;                           // set baud rate
  UCSR0B|= (1<<TXEN0)|(1<<RXEN0);                // enable receiver and transmitter
  UCSR0C|= (1<<UCSZ00)|(1<<UCSZ01);   // 8bit data format
}

// function to send data
void uart_transmit (uint8_t data) {
//void uart_transmit (uint8_t data, FILE *stream) {
//  if (data == '\n') {
//    uart_transmit('\r', stream);
//  }
  while (!( UCSR0A & (1<<UDRE0)));                // wait while register is free
  UDR0 = data;                                   // load data in the register
}

// function to receive data
uint8_t uart_receive (void) {
//uint8_t uart_receive (FILE *stream) {
  while(!(UCSR0A) & (1<<RXC0));                   // wait while data is being received
  return UDR0;                                   // return 8-bit data
}

void interrupts_init(void){
  EICRA |= (1 << ISC00) | (1 << ISC01) | (1 << ISC11) | (1 << ISC10);    // set INT0 and INT1 to trigger on RISING EDGE logic change
  EIMSK |= (1 << INT0) | (1 << INT1);     // Turns on INT0 & INT1
  PCICR |= (1<<PCIE2);   // set PCIE2 to enable PCMSK2 scan
  PCMSK2 |= (1<<PCINT20); // set PCINT20 to trigger an interrupt on state change
}

void timer_init(void){
  TCCR1B |= (1 << CS11); // Set up timer with prescaler Fcpu/8
}

void ports_init(void){
  DDRB = (1<<DDB1); // Set portB1 as output for g of 7 segment
  DDRC = 0b00111111; // Set PortC0-5 as output for a,b,c,d,e,f of 7 segment
  DDRD = (1<<DDD7); // Set dual 7 segment toggle pin PORTD7 as output pin
  DDRD &= ~(1<<PD4); // Set PD4 as input
  PORTD &= ~(1<<PD4); // Tri state for PD4 (but pull down by input)
//  PORTD |= (1<<PORTD4); // Enable internal pull ups
  PORTC = 0b00000000; // Initialize PORTC at 0 (no led ON)
  PORTB = 0b00000000; // Initialize PORTB at 0 (no led ON)
}
