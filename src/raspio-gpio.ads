with x86_64_linux_gnu_bits_stdint_uintn_h;

package Raspio.GPIO is

   --  TODO track usages of pins using controlled type, so that trying to
   --  create two overlapping pins gives a runtime error
   type Pin_Type is limited private;

   type Mode_Type is
     (Input, Output, Alternative_5, Alternative_4, Alternative_0,
      Alternative_1, Alternative_2, Alternative_3);
   for Mode_Type use (0, 1, 2, 3, 4, 5, 6, 7);
   for Mode_Type'Size use 8;

   --  TODO make it impossible to mix usage of e.g. BPLUS and V2 pins by making
   --  the package generic / discriminated on type of board
   type Pin_ID_Type is
     (GPIO_P1_03, GPIO_P1_05, GPIO_P1_07, GPIO_P1_08, GPIO_P1_10, GPIO_P1_11,
      GPIO_P1_12, GPIO_P1_13, GPIO_P1_15, GPIO_P1_16, GPIO_P1_18, GPIO_P1_19,
      GPIO_P1_21, GPIO_P1_22, GPIO_P1_23, GPIO_P1_24, GPIO_P1_26,
      V2_GPIO_P1_03, V2_GPIO_P1_05, V2_GPIO_P1_07, V2_GPIO_P1_08,
      V2_GPIO_P1_10, V2_GPIO_P1_11, V2_GPIO_P1_12, V2_GPIO_P1_13,
      V2_GPIO_P1_15, V2_GPIO_P1_16, V2_GPIO_P1_18, V2_GPIO_P1_19,
      V2_GPIO_P1_21, V2_GPIO_P1_22, V2_GPIO_P1_23, V2_GPIO_P1_24,
      V2_GPIO_P1_26, V2_GPIO_P1_29, V2_GPIO_P1_31, V2_GPIO_P1_32,
      V2_GPIO_P1_33, V2_GPIO_P1_35, V2_GPIO_P1_36, V2_GPIO_P1_37,
      V2_GPIO_P1_38, V2_GPIO_P1_40, V2_GPIO_P5_03, V2_GPIO_P5_04,
      V2_GPIO_P5_05, V2_GPIO_P5_06, BPLUS_GPIO_J8_03, BPLUS_GPIO_J8_05,
      BPLUS_GPIO_J8_07, BPLUS_GPIO_J8_08, BPLUS_GPIO_J8_10, BPLUS_GPIO_J8_11,
      BPLUS_GPIO_J8_12, BPLUS_GPIO_J8_13, BPLUS_GPIO_J8_15, BPLUS_GPIO_J8_16,
      BPLUS_GPIO_J8_18, BPLUS_GPIO_J8_19, BPLUS_GPIO_J8_21, BPLUS_GPIO_J8_22,
      BPLUS_GPIO_J8_23, BPLUS_GPIO_J8_24, BPLUS_GPIO_J8_26, BPLUS_GPIO_J8_29,
      BPLUS_GPIO_J8_31, BPLUS_GPIO_J8_32, BPLUS_GPIO_J8_33, BPLUS_GPIO_J8_35,
      BPLUS_GPIO_J8_36, BPLUS_GPIO_J8_37, BPLUS_GPIO_J8_38, BPLUS_GPIO_J8_40);

   type Internal_Resistor_Type is (PUD_off, PUD_down, PUD_up);
   for Internal_Resistor_Type use (0, 1, 2);
   for Internal_Resistor_Type'Size use 8;

   function Create
     (Pin_ID            : Pin_ID_Type; Mode : Mode_Type;
      Internal_Resistor : Internal_Resistor_Type) return Pin_Type;

   type Pin_State is (On, Off);
   for Pin_State use (0, 1);
   for Pin_State'Size use 8;

   function Read (Pin : Pin_Type) return Pin_State;

   procedure Turn_On (Pin : Pin_Type);
   procedure Turn_Off (Pin : Pin_Type);
   procedure Set (Pin : Pin_Type; State : Pin_State);

private

   type Pin_Type is record
      Pin  : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t;
      Mode : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t;
      PUD  : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t;
   end record;

end Raspio.GPIO;
