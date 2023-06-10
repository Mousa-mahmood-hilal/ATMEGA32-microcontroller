$regfile ="m323def.dat"
$crystal=8000000
config porta =output
config portb =input
set PORTB.0
do
If Pinb.0 = 0 Then
Porta.0 = 1
Bitwait Pinb.0 , Set
Toggle Porta.0
End If
Loop
End
'by mousa