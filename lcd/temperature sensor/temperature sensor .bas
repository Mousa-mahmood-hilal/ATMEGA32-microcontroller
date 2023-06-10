$regfile = "m32def.dat"
$crystal = 8000000
Config Lcdpin = Pin , Db4 = Portb.2 , Db5 = Portb.3 , Db6 = Portb.4 , Db7 = Portb.5 , E = Portb.1 , Rs = Portb.0
Config Lcd = 16 * 2
config adc=single,prescaler=auto
start adc
config single =scientific,digits=2
dim x as integer
dim y as single
do
   x=getadc(0)
   cls
   y=x*5
   y=y/1023
   y=y*100
   lcd "temp="
   lcd y
   lcd "C"
   wait 5
loop
end