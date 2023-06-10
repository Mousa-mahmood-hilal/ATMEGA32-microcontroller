$regfile="m323def.dat"
$crystal=8000000
Config Lcdpin = Pin , Db4 = PortA.2 , Db5 = PortA.3 , Db6 = PortA.4 , Db7 = PortA.5 , E = PortA.1 , Rs = PortA.0
Config Lcd = 16x2
dim h,m,s as byte
'the first way
'h=10
'm=30
'do
's=s+1
'wait 1
'if s>59 then
'm=m+1
's=0
'end if
'if m>59 then
'h=h+1
'm=0
'end if
'if h>23 then
'h=0
'end if
'cls
'lcd h
'lcd ":"
'lcd m
'lcd ":"
'lcd s
'loop

'the second way
for h=0 to 23
for m=0 to 59
for s=0 to 59
wait 1
 cls
lcd h
lcd ":"
lcd m
lcd ":"
lcd s
   next
   next
   next
end
'by mousa