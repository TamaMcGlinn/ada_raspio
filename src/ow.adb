with Ada.Text_IO;
with Raspio.GPIO;

procedure Ow is
  use Raspio.GPIO;
begin
  Raspio.Initialize;
  declare
    Button : constant Raspio.GPIO.Pin_Type :=
      Raspio.GPIO.Create
        (Pin_ID            => GPIO_P1_07, Mode => Input,
        Internal_Resistor => Pull_Down);
  begin
    loop
      if Raspio.GPIO.Read (Button) = On then
        Ada.Text_IO.Put_Line ("Ow!");
      end if;
    end loop;
  end;
end Ow;

