package body Raspio.GPIO.Encoder is

   function Create
     (Pin_A             : Pin_ID_Type; Pin_B : Pin_ID_Type;
      Internal_Resistor : Internal_Resistor_Type) return Encoder_Type
   is
      First_Pin : constant Pin_Type :=
        Raspio.GPIO.Create (Pin_A, Input, Internal_Resistor);
      Second_Pin : constant Pin_Type :=
        Raspio.GPIO.Create (Pin_B, Input, Internal_Resistor);
   begin
      return
        (Pins   => (First_Pin, Second_Pin),
         Values =>
           (Raspio.GPIO.Read (First_Pin), Raspio.GPIO.Read (Second_Pin)));
   end Create;

   type Encoder_Table_Type is
     array (Pin_State, Pin_State, Pin_State, Pin_State) of Diff_Type;

   function Get_Encoder_Table return Encoder_Table_Type;
   function Get_Encoder_Table return Encoder_Table_Type is
   begin
      return Table : Encoder_Table_Type do
         --  identity
         Table (Off, Off, Off, Off) := 0;
         Table (Off, On, Off, On)   := 0;
         Table (On, Off, On, Off)   := 0;
         Table (On, On, On, On)     := 0;

         --  up
         Table (Off, Off, Off, On) := 1;
         Table (Off, On, On, On)   := 1;
         Table (On, Off, Off, Off) := 1;
         Table (On, On, On, Off)   := 1;

         --  down
         Table (Off, On, Off, Off) := -1;
         Table (On, On, Off, On)   := -1;
         Table (Off, Off, On, Off) := -1;
         Table (On, Off, On, On)   := -1;

         --  unused
         Table (Off, Off, On, On) := 0;
         Table (Off, On, On, Off) := 0;
         Table (On, Off, Off, On) := 0;
         Table (On, On, Off, Off) := 0;
      end return;
   end Get_Encoder_Table;

   function Update (Encoder : in out Encoder_Type) return Diff_Type is
      New_A : constant Pin_State := Raspio.GPIO.Read (Encoder.Pins (1));
      New_B : constant Pin_State := Raspio.GPIO.Read (Encoder.Pins (2));
      Table : constant Encoder_Table_Type := Get_Encoder_Table;
   begin
      return
        Result : constant Diff_Type :=
          Table (Encoder.Values (1), Encoder.Values (2), New_A, New_B) do
         Encoder.Values := (New_A, New_B);
      end return;
   end Update;

end Raspio.GPIO.Encoder;
