#include <msp430.h>
#include <stdint.h>
#include <stdbool.h>

#define P1_NEIGHBORS    0b11111100
#define P2_NEIGHBORS    0b11111111
#define P1_CLOCK        0b00000010
#define P1_BCAST        0b00000001

uint8_t live_neighbors_port(uint8_t port, uint8_t mask) {
    uint8_t n = 0;
    for (port &= mask; port; port >>= 1) {
        n += port & (uint8_t)1;
    }
    return n;
}

int main(void) {
    // stop watchdog timer or the the mcu will keep resetting.
    WDTCTL = WDTPW | WDTHOLD;

    // Setup Port 1
    //     Pin 0:    Broadcast state
    //     Pin 1:    Read clock input
    //     Pin 2-7:  Read neighbor states
    P1DIR = P1_BCAST; // only output the broadcast pin
    P1OUT = 0x0;
    P1REN = P1_NEIGHBORS | P1_CLOCK;

    // Setup Port 2
    //     Pin 0-7:  Read neighbor states
    P2DIR = 0x0;
    P2OUT = 0x0;
    P2REN = P2_NEIGHBORS;

    uint8_t my_state = INIT_STATE;
    uint8_t clk = 0;
    for (;;) {
        if ((clk = P1IN & P1_CLOCK)) {

            uint8_t ln = live_neighbors_port(P1IN, P1_NEIGHBORS)
                       + live_neighbors_port(P2IN, P2_NEIGHBORS);

            while ((clk = P1IN & P1_CLOCK)); // wait for clock to fall

            if (my_state)
                switch (ln) {
                    case 0:
                    case 1:
                    case 4:
                    case 8:
                        break;
                    default:
                        my_state = 0;
                }
            else
                switch (ln) {
                    case 1:
                    case 3:
                    case 5:
                    case 6:
                        my_state = 1;
                }

            if (my_state) {
                P1OUT |= P1_BCAST;
            } else {
                P1OUT &= ~P1_BCAST;
            }

        }
    }
}
