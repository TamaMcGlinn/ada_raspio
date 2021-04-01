with Interfaces.C; use Interfaces.C;
with Ada.Unchecked_Conversion;

with bcm2835_h; use bcm2835_h;

package body Raspio.GPIO is

   function Get_Pin_Number
     (Pin_ID : Pin_ID_Type)
      return x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t;

   function Get_Mode_Number is new Ada.Unchecked_Conversion
     (Source => Mode_Type,
      Target => x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t);

   function Get_Resistor_Number is new Ada.Unchecked_Conversion
     (Source => Internal_Resistor_Type,
      Target => x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t);

   function Create
     (Pin_ID            : Pin_ID_Type; Mode : Mode_Type;
      Internal_Resistor : Internal_Resistor_Type) return Pin_Type
   is
      Pin_Number : constant x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t :=
        Get_Pin_Number (Pin_ID);
      Pin_Mode : constant x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t :=
        Get_Mode_Number (Mode);
      PUD : constant x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t :=
        Get_Resistor_Number (Internal_Resistor);
   begin
      bcm2835_h.bcm2835_gpio_fsel
        (Pin_Number, Pin_Mode); -- /usr/local/include/bcm2835.h:602
      bcm2835_h.bcm2835_gpio_set_pud (Pin_Number, PUD);
      return (Pin => Pin_Number, Mode => Pin_Mode, PUD => PUD);
   end Create;

   function Get_Pin_Number
     (Pin_ID : Pin_ID_Type) return x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t
   is
      Lookup_Array : constant array
        (Pin_ID_Type) of x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t :=
        (GPIO_P1_03 => 0,  -- Version 1, Pin P1-03
         GPIO_P1_05 => 1,  -- Version 1, Pin P1-05
         GPIO_P1_07 => 4,  -- Version 1, Pin P1-07
         GPIO_P1_08 =>
           14,  -- Version 1, Pin P1-08, defaults to alt function 0 UART0_TXD
         GPIO_P1_10 =>
           15,  -- Version 1, Pin P1-10, defaults to alt function 0 UART0_RXD
         GPIO_P1_11 => 17,  -- Version 1, Pin P1-11
         GPIO_P1_12 =>
           18,  -- Version 1, Pin P1-12, can be PWM channel 0 in ALT FUN 5
         GPIO_P1_13    => 21,  -- Version 1, Pin P1-13
         GPIO_P1_15    => 22,  -- Version 1, Pin P1-15
         GPIO_P1_16    => 23,  -- Version 1, Pin P1-16
         GPIO_P1_18    => 24,  -- Version 1, Pin P1-18
         GPIO_P1_19    => 10,  -- Version 1, Pin P1-19, MOSI when SPI0 in use
         GPIO_P1_21    => 9,  -- Version 1, Pin P1-21, MISO when SPI0 in use
         GPIO_P1_22    => 25,  -- Version 1, Pin P1-22
         GPIO_P1_23    => 11,  -- Version 1, Pin P1-23, CLK when SPI0 in use
         GPIO_P1_24    => 8,  -- Version 1, Pin P1-24, CE0 when SPI0 in use
         GPIO_P1_26    => 7,  -- Version 1, Pin P1-26, CE1 when SPI0 in use
         V2_GPIO_P1_03 => 2,  -- Version 2, Pin P1-03
         V2_GPIO_P1_05 => 3,  -- Version 2, Pin P1-05
         V2_GPIO_P1_07 => 4,  -- Version 2, Pin P1-07
         V2_GPIO_P1_08 =>
           14,  -- Version 2, Pin P1-08, defaults to alt function 0 UART0_TXD
         V2_GPIO_P1_10 =>
           15,  -- Version 2, Pin P1-10, defaults to alt function 0 UART0_RXD
         V2_GPIO_P1_11 => 17,  -- Version 2, Pin P1-11
         V2_GPIO_P1_12 =>
           18,  -- Version 2, Pin P1-12, can be PWM channel 0 in ALT FUN 5
         V2_GPIO_P1_13 => 27,  -- Version 2, Pin P1-13
         V2_GPIO_P1_15 => 22,  -- Version 2, Pin P1-15
         V2_GPIO_P1_16 => 23,  -- Version 2, Pin P1-16
         V2_GPIO_P1_18 => 24,  -- Version 2, Pin P1-18
         V2_GPIO_P1_19 => 10,  -- Version 2, Pin P1-19, MOSI when SPI0 in use
         V2_GPIO_P1_21 => 9,  -- Version 2, Pin P1-21, MISO when SPI0 in use
         V2_GPIO_P1_22 => 25,  -- Version 2, Pin P1-22
         V2_GPIO_P1_23 => 11,  -- Version 2, Pin P1-23, CLK when SPI0 in use
         V2_GPIO_P1_24 => 8,  -- Version 2, Pin P1-24, CE0 when SPI0 in use
         V2_GPIO_P1_26 => 7,  -- Version 2, Pin P1-26, CE1 when SPI0 in use
         V2_GPIO_P1_29 => 5,  -- Version 2, Pin P1-29
         V2_GPIO_P1_31 => 6,  -- Version 2, Pin P1-31
         V2_GPIO_P1_32 => 12,  -- Version 2, Pin P1-32
         V2_GPIO_P1_33 => 13,  -- Version 2, Pin P1-33
         V2_GPIO_P1_35 =>
           19,  -- Version 2, Pin P1-35, can be PWM channel 1 in ALT FUN 5
         V2_GPIO_P1_36    => 16,  -- Version 2, Pin P1-36
         V2_GPIO_P1_37    => 26,  -- Version 2, Pin P1-37
         V2_GPIO_P1_38    => 20,  -- Version 2, Pin P1-38
         V2_GPIO_P1_40    => 21,  -- Version 2, Pin P1-40
         V2_GPIO_P5_03    => 28,  -- Version 2, Pin P5-03
         V2_GPIO_P5_04    => 29,  -- Version 2, Pin P5-04
         V2_GPIO_P5_05    => 30,  -- Version 2, Pin P5-05
         V2_GPIO_P5_06    => 31,  -- Version 2, Pin P5-06
         BPLUS_GPIO_J8_03 => 2,  -- B+, Pin J8-03
         BPLUS_GPIO_J8_05 => 3,  -- B+, Pin J8-05
         BPLUS_GPIO_J8_07 => 4,  -- B+, Pin J8-07
         BPLUS_GPIO_J8_08 =>
           14,  -- B+, Pin J8-08, defaults to alt function 0 UART0_TXD
         BPLUS_GPIO_J8_10 =>
           15,  -- B+, Pin J8-10, defaults to alt function 0 UART0_RXD
         BPLUS_GPIO_J8_11 => 17,  -- B+, Pin J8-11
         BPLUS_GPIO_J8_12 =>
           18,  -- B+, Pin J8-12, can be PWM channel 0 in ALT FUN 5
         BPLUS_GPIO_J8_13 => 27,  -- B+, Pin J8-13
         BPLUS_GPIO_J8_15 => 22,  -- B+, Pin J8-15
         BPLUS_GPIO_J8_16 => 23,  -- B+, Pin J8-16
         BPLUS_GPIO_J8_18 => 24,  -- B+, Pin J8-18
         BPLUS_GPIO_J8_19 => 10,  -- B+, Pin J8-19, MOSI when SPI0 in use
         BPLUS_GPIO_J8_21 => 9,  -- B+, Pin J8-21, MISO when SPI0 in use
         BPLUS_GPIO_J8_22 => 25,  -- B+, Pin J8-22
         BPLUS_GPIO_J8_23 => 11,  -- B+, Pin J8-23, CLK when SPI0 in use
         BPLUS_GPIO_J8_24 => 8,  -- B+, Pin J8-24, CE0 when SPI0 in use
         BPLUS_GPIO_J8_26 => 7,  -- B+, Pin J8-26, CE1 when SPI0 in use
         BPLUS_GPIO_J8_29 => 5,  -- B+, Pin J8-29,
         BPLUS_GPIO_J8_31 => 6,  -- B+, Pin J8-31,
         BPLUS_GPIO_J8_32 => 12,  -- B+, Pin J8-32,
         BPLUS_GPIO_J8_33 => 13,  -- B+, Pin J8-33,
         BPLUS_GPIO_J8_35 =>
           19,  -- B+, Pin J8-35, can be PWM channel 1 in ALT FUN 5
         BPLUS_GPIO_J8_36 => 16,  -- B+, Pin J8-36,
         BPLUS_GPIO_J8_37 => 26,  -- B+, Pin J8-37,
         BPLUS_GPIO_J8_38 => 20,  -- B+, Pin J8-38,
         BPLUS_GPIO_J8_40 =>
           21   -- B+, Pin J8-40,
      );
   begin
      return Lookup_Array (Pin_ID);
   end Get_Pin_Number;

   function Pin_Level_From_Uint is new Ada.Unchecked_Conversion
     (Source => x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t,
      Target => Pin_State);

   function Read (Pin : Pin_Type) return Pin_State is
   begin
      return Pin_Level_From_Uint (bcm2835_h.bcm2835_gpio_lev (Pin.Pin));
   end Read;

   procedure Turn_On (Pin : Pin_Type) is
   begin
      bcm2835_h.bcm2835_gpio_set (Pin.Pin);
   end Turn_On;

   procedure Turn_Off (Pin : Pin_Type) is
   begin
      bcm2835_h.bcm2835_gpio_clr (Pin.Pin);
   end Turn_Off;

   procedure Set (Pin : Pin_Type; State : Pin_State) is
   begin
      case State is
         when On =>
            Turn_On (Pin);
         when Off =>
            Turn_Off (Pin);
      end case;
   end Set;

end Raspio.GPIO;
