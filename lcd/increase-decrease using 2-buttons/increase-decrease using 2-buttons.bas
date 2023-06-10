$regfile = "m323def.dat"
$crystal = 8000000
Config Lcdpin = Pin , Db4 = Porta.2 , Db5 = Porta.3 , Db6 = Porta.4 , Db7 = Porta.5 , E = Porta.1 , Rs = Porta.0
Config Lcd = 16x2
Dim A As Integer
Config Portb = Input
Portb = 255
Do
If Pinb.0 = 0 Then
Bitwait Pinb.0 , Set
A = A + 1
Cls
Lcd A
End If
If Pinb.1 = 0 Then
Bitwait Pinb.1 , Set
A = A - 1
Cls
Lcd A
End If
Loop
End
'by mousa