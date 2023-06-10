$regfile = "m323def.dat"
$crystal = 8000000
Config Lcdpin = Pin , Db4 = Porta.2 , Db5 = Porta.3 , Db6 = Porta.4 , Db7 = Porta.5 , E = Porta.1 , Rs = Porta.0
Config Lcd = 16x2
Do
Cls
Lcd "hello world"
Wait 1
Cls
Locate 2 , 8
Lcd "hi"
Wait 1
Loop
End
'by mousa