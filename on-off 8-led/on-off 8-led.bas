$regfile ="m323def.dat"
$crystal=8000000
config porta =output
dim i as byte
do
For I = 0 To 7
Set porta.i
wait 1
next
for i =7 to 0 step-1
reset porta.i
wait 1
next
loop
end
'by mousa