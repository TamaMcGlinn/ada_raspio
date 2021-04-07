package Raspio.GPIO.Encoder is

   Encoder_Size : constant := 2;
   type Encoder_Pins is array (1 .. Encoder_Size) of Pin_Type;
   type Encoder_Pin_Values is array (1 .. Encoder_Size) of Pin_State;

   type Encoder_Type is limited private;

   type Diff_Type is range -1 .. 1;

   function Create
     (Pin_A             : Pin_ID_Type; Pin_B : Pin_ID_Type;
      Internal_Resistor : Internal_Resistor_Type) return Encoder_Type;

   function Update (Encoder : in out Encoder_Type) return Diff_Type;

private

   type Encoder_Type is record
      Pins   : Encoder_Pins;
      Values : Encoder_Pin_Values;
   end record;

end Raspio.GPIO.Encoder;
