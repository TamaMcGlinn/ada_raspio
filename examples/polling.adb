with Ada.Text_IO;
with Raspio.GPIO;

procedure Polling is
   use Raspio.GPIO;
begin
   Raspio.Initialize;
   declare
      --  connect button from pin 12 to ground
      Button : constant Pin_Type :=
        Create
          (Pin_ID => GPIO_P1_12, Mode => Input, Internal_Resistor => Pull_Up);

      State : Pin_State := Off;
   begin
      loop
         State := Read (Button);
         Ada.Text_IO.Put_Line (State'Image);
         delay 0.2;
      end loop;
   end;
end Polling;
