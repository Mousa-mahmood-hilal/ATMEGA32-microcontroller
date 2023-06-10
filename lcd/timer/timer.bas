$regfile="m323def.dat"
$crystal=8000000
Config Lcdpin = Pin , Db4 = PortA.2 , Db5 = PortA.3 , Db6 = PortA.4 , Db7 = PortA.5 , E = PortA.1 , Rs = PortA.0
Config Lcd = 16x2
dim h,m,s as byte
'the first way
h=0
m=0
s=10
do
cls
lcd h
lcd ":"
lcd m
lcd ":"
lcd s
s=s-1

if s=0 and m>0 then
m=m-1
s=59
end if
if m=0 and h>0 then
h=h-1
m=59
end if
if h=0 and m=0 and s=0 then
wait 1
cls
lcd "end"
end
end if
   wait 1
loop

'the second way

'for h=23 to 0 step -1
'for m=59 to 0  step -1
'for s=59 to 0   step -1
'wait 1
 'cls
'lcd h
'lcd ":"
'lcd m
'lcd ":"
'lcd s
   'next
   'next
   'next
   'wait 1
  ' cls
 '  lcd "end"
end
'by mousa