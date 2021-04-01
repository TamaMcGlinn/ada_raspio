with Ada.Text_IO;
with Raspio.GPIO;
with Ada.Real_Time;

procedure Ow is
  use Raspio.GPIO;
  use type Ada.Real_Time.Time;
  use type Ada.Real_Time.Time_Span;

  Poll_Time : Ada.Real_Time.Time := Ada.Real_Time.Clock;
  Period : constant Ada.Real_Time.Time_Span := Ada.Real_Time.Milliseconds (1000);

begin
  Raspio.Initialize;
  declare
    Button : constant Raspio.GPIO.Pin_Type :=
      Raspio.GPIO.Create
        (Pin_ID            => V2_GPIO_P1_21, Mode => Input,
        Internal_Resistor => Pull_Down);
  begin
    loop
      if Raspio.GPIO.Read (Button) = On then
        Ada.Text_IO.Put_Line ("Ow!");
      end if;
      delay until Poll_Time;
      Poll_Time := Poll_Time + Period;
    end loop;
  end;
end Ow;

