$regfile = "m323def.dat"
$crystal = 8000000
Config PORTA=OUTPUT
do
set PORTA.0
WAIT 1
RESET PORTA.0
WAIT 1
LOOP
END
'by mousa