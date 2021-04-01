with bcm2835_h;
with Interfaces.C; use Interfaces.C;

package body Raspio is

   procedure Initialize is
      Error_Code : constant Interfaces.C.int := bcm2835_h.bcm2835_init;
   begin
      if Error_Code /= 0 then
         raise Initialization_Error with "BCM2835 initialization failed";
      end if;
   end Initialize;

end Raspio;
