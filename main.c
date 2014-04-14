#include <msp430.h>
#include <stdint.h>
#include <stdbool.h>

#define P1_NEIGHBORS    0b11111100
#define P2_NEIGHBORS    0b11111111
#define P1_CLOCK        0b00000010
#define P1_BCAST        0b00000001

uint8_t neighbors_living_port(uint8_t port_state, uint8_t mask) {
    uint8_t n = 0;
    for (port_state &= mask; port_state; port_state >>= 1) {
        n += port_state & (uint8_t)1;
    }
    return n;
}

int main(void) {
    //volatile int i;

    // stop watchdog timer or the the mcu will keep resetting.
    WDTCTL = WDTPW | WDTHOLD;

    // Setup Port 1
    //     Pin 0:    Broadcast state
    //     Pin 1:    Read clock input
    //     Pin 2-7:  Read neighbor states
    P1DIR = P1_BCAST; // only output the broadcast pin
    P1OUT = 0x00;
    P1REN = P1_NEIGHBORS | P1_CLOCK;

    P2DIR = 0x0;
    P2OUT = 0x0;
    P2REN = P2_NEIGHBORS;

    uint8_t my_state = 0;
    uint8_t clk_old = 0x0;
    uint8_t clk = P1IN & P1_CLOCK;
    for (;;) {
        if (clk && clk != clk_old) {
            uint8_t lp1 = neighbors_living_port(P1IN, P1_NEIGHBORS);
            uint8_t lp2 = neighbors_living_port(P2IN, P2_NEIGHBORS);
            if (my_state) {
                switch (lp1+lp2) {
                    case 2:
                    case 3:
                        P1OUT |= P1_BCAST;
                        break;
                    default:
                        my_state = 0;
                        P1OUT &= ~P1_BCAST;
                }
            } else {
                switch (lp1+lp2) {
                    case 3:
                        P1OUT |= P1_BCAST;
                        break;
                    default:
                        my_state = 1;
                        P1OUT &= ~P1_BCAST;
                }
            }
        }
        clk_old = clk;
        clk = P1IN & P1_CLOCK;
    }
}
