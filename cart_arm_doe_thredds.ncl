

begin

   filename = "http://archive.arm.gov/orders/dodsC/orders/capehart/201886/sgp30ecorE14.b1.20160101.000000.cdf"

   f = addfile(filename, "r")

   standard_time_units = "hours since 2016-01-01 00:00:00"

   time    = f->time
   cvar_vw = f->cvar_vw
   var_w   = f->var_w
   var_v   = f->var_v
   mean_w  = f->mean_w
   mean_v  = f->mean_v

   time_standard = cd_convert(time, standard_time_units)

   print(time_standard)


end
