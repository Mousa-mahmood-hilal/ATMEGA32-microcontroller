'by mousa mahmood
$regfile = "m32def.dat"
$crystal = 8000000
Config Lcdpin = Pin , Db4 = Porta.2 , Db5 = Porta.3 , Db6 = Porta.4 , Db7 = Porta.5 , E = Porta.1 , Rs = Porta.0
Config Lcd = 16 * 2
Config Kbd = Portd
Dim X As Byte
Dim Y As Byte
Dim Num0 , Num1 , Op , Op1 As Integer
Do
   Num0 = 0
   Num1 = 0
   Op = 0
   Cls
   'input the first number
   Lcd "first num:"
   Do
      X = Getkbd()
      If X < 16 Then
         Y = Lookup(x , Dta)
         Waitms 275
         If Y <= 9 Then
            Num0 = Num0 * 10
            Num0 = Num0 + Y
            Lcd Y
         Else
            Op = Y
            Exit Do
         End If
      End If
   Loop
   Cls
   'input the second number
   Lcd "secondnum:"
   Do
      X = Getkbd()
      If X < 16 Then
         Y = Lookup(x , Dta)
         Waitms 275
         If Y <= 9 Then
            Num1 = Num1 * 10
            Num1 = Num1 + Y
            Lcd Y
         Else
            Op1 = Y
            Exit Do
         End If
      End If
   Loop
   Cls
   'print the result
   If Op1 = 14 Then
      If Op = 13 Then
         Lcd Num0
         Lcd "+"
         Lcd Num1
         Lcd "="
         Num0 = Num0 + Num1
         Lcd Num0
      Elseif Op = 12 Then
         Lcd Num0
         Lcd "-"
         Lcd Num1
         Lcd "="
         Num0 = Num0 - Num1
         Lcd Num0
      Elseif Op = 11 Then
         Lcd Num0
         Lcd "*"
         Lcd Num1
         Lcd "="
         Num0 = Num0 * Num1
         Lcd Num0
      Elseif Op = 10 Then
         Lcd Num0
         Lcd "/"
         Lcd Num1
         Lcd "="
         Num0 = Num0 / Num1
         Lcd Num0
      End If
   Else
      Clear:
      Cls
      Num0 = 0
      Num1 = 0
      Op = 0
   End If
   Wait 2
Loop
End
Dta:
   Data 7 , 4 , 1 , 15 , 8 , 5 , 2 , 0 , 9 , 6 , 3 , 14 , 10 , 11 , 12 , 13