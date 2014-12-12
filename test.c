    #include <avr/io.h>

    int main(void)
    {
    // Set Port D pins as all outputs
    DDRD = 0xff;

    // Set all Port D pins as HIGH
    PORTD = 0xFF;

    return 1;
    }
