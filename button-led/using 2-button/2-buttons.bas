$regfile ="m323def.dat"
$crystal=8000000
config porta =output
config portb =input
set PORTB.0
set PORTB.1
do
IF PINB.0=0 THEN
SET PORTA.0
BITWAIT PINB.0,SET
END IF
IF PINB.1=0 THEN
RESET PORTA.0
BITWAIT PINB.1,SET
END IF
loop
end
'by mousa 