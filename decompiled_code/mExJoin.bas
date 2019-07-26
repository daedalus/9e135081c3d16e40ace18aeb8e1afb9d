
Public Sub Proc_5_0_4264F0
  Dim var_78 As Me
  repz stosd
  Dim var_6C(12) As Byte
  If arg_8 > 0 Then
    var_eax = ReadFile(arg_8, var_54, 64, var_14, esi)
    var_eax = CopyMemory(var_60, var_54, 2)
    var_78 = Chr$(var_60)
    var_80 = var_6C & Chr$(var_78.QueryInterface)
    esi = (var_80 = "MZ") + 1
    If (var_80 = "MZ") + 1 Then
      var_eax = SetFilePointer(arg_8, var_18, 0, 0)
      var_eax = ReadFile(arg_8, var_60, 4, var_14, 0)
      esi = (Chr$(var_78.QueryInterface) = global_0040A1AC) + 1
      eax = (Chr$(var_60) = global_0040A1A4) + 1
      If var_60(1) = 0 Then ecx = 1
      If var_60(1) = 0 Then edx = 1
      If edx Then
        GoTo loc_004266ED
      End If
    End If
  End If
  GoTo loc_004266ED
  Exit Sub
  loc_004266ED: 
  var_84 = var_6C
End Sub

Public Sub Proc_5_1_426720
  Dim var_168 As Me
  Dim var_42 As Me
  repz stosd
  repz stosd
  On Error Resume Next
  If arg_8 > 0 Then
    var_eax = SetFilePointer(arg_8, ebx, var_16C, ebx)
    var_eax = ReadFile(arg_8, var_84, 64, var_2C, ebx)
    var_eax = SetFilePointer(arg_8, var_48(2), var_16C, ebx)
    var_eax = ReadFile(arg_8, var_44, 20, var_2C, ebx)
    var_eax = ReadFile(arg_8, var_164, 224, var_2C, ebx)
    var_42 = var_42 - 0001h
    ReDim var_24(0 To var_42-0001h)
    If var_168 Then
      If var_168 = 1 Then
        If ebx >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_004268AF
      End If
    End If
    var_eax = Err.Raise
  loc_004268AF: 
    var_42 = var_42 * 0028h
    var_eax = ReadFile(arg_8, var_168.GetTypeInfoCount, var_2C, 0, var_24)
    If var_F0 Then
      call UBound(00000001h, var_24, var_168, 00000001h, arg_8, GetLastError(), Err.Raise())
      var_ret_1 = UBound(00000001h, var_24, var_168, 00000001h, arg_8, GetLastError(), Err.Raise())
      var_188 = var_ret_1
      If esi <= var_ret_1 Then
        If var_24 Then
          If var_24 = 1 Then
            esi = esi - ecx+00000014h
            If esi-ecx+00000014h >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_0042694D
          End If
        End If
        var_eax = Err.Raise
  loc_0042694D: 
        If var_24 Then
          If var_24 = 1 Then
            var_28 = var_28 - ecx+00000014h
            If var_28 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00426977
          End If
        End If
        var_eax = Err.Raise
  loc_00426977: 
        edx+eax+00000010h = edx+eax+00000010h + edx+edi+0000000Ch
        If edx+eax+00000010h+edx+edi+0000000Ch > 0 Then
          If var_24 Then
            If var_24 = 1 Then
              var_28 = var_28 - ecx+00000014h
              If var_28 >= 0 Then
                var_eax = Err.Raise
              End If
              GoTo loc_004269BA
            End If
          End If
          var_eax = Err.Raise
  loc_004269BA: 
          If edx+eax+0000000Ch > 0 Then
          End If
          00000001h = 00000001h + var_28
          var_28 = 00000001h+var_28
          GoTo loc_00426914
        End If
        If var_24 Then
          If var_24 = 1 Then
            00000001h+var_28 = 00000001h+var_28 - ecx+00000014h
            If 00000001h+var_28 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00426A12
          End If
        End If
        var_eax = Err.Raise
  loc_00426A12: 
        global_42C264 = edx+eax+0000000Ch
        If var_24 Then
          If var_24 = 1 Then
            var_28 = var_28 - ecx+00000014h
            If var_28 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00426A48
          End If
        End If
        var_eax = Err.Raise
  loc_00426A48: 
        global_42C268 = edx+eax+00000014h
        If var_24 Then
          If var_24 = 1 Then
            var_28 = var_28 - ecx+00000014h
            If var_28 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00426A80
          End If
        End If
        var_eax = Err.Raise
  loc_00426A80: 
        If var_24 Then
          If var_24 = 1 Then
            var_28 = var_28 - ecx+00000014h
            If var_28 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00426AA7
          End If
        End If
        var_eax = Err.Raise
  loc_00426AA7: 
        var_F4 = var_F4 - ecx+eax+0000000Ch
        var_F4 = var_F4 + ecx+edi+00000014h
        var_30 = var_F4+ecx+edi+00000014h
      End If
      If var_20 = 0 Then
      End If
    End If
  End If
  Exit Sub
  GoTo loc_00426AE8
  Exit Sub
  loc_00426AE8: 
  Exit Sub
End Sub

Public Sub Proc_5_2_426B20
  Dim var_7C As Me
  Dim var_64 As Me
  repz stosd
  On Error Resume Next
  If arg_8 > 0 Then
    var_eax = SetFilePointer(arg_8, arg_C, var_80, esi)
    var_eax = ReadFile(arg_8, var_78, 16, var_2C, esi)
    var_6A = var_6A + var_6C
    ReDim var_5C(ReDim %r To var_6A+var_6C)
    var_6A = var_6A + var_6C
    ReDim var_28(0 To var_6A+var_6C)
    var_6A = var_6A + var_6C
    var_90 = var_6A+var_6C
    If 00000001h > 0 Then GoTo loc_00427784
    00000001h = 00000001h * 0008h
    arg_C = arg_C + 00000008h
    00000001h = 00000001h + arg_C+00000008h
    var_eax = SetFilePointer(arg_8, 00000001h+arg_C+00000008h, 0, 0)
    If var_7C Then
      If var_7C = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00426CC2
      End If
    End If
    var_eax = Err.Raise
  loc_00426CC2: 
    00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
    var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_2C, 0, var_7C)
    If var_28 Then
      If var_28 = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00426D18
      End If
    End If
    var_eax = Err.Raise
  loc_00426D18: 
    var_eax = Unknown_8F80(var_7C, var_28)
    If var_7C Then
      If var_7C = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00426D64
      End If
    End If
    var_eax = Err.Raise
  loc_00426D64: 
    var_eax = CopyMemory(var_24, ecx+eax+00000004h, var_7C)
    arg_C = arg_C + var_24
    var_24 = arg_C+var_24
    var_eax = SetFilePointer(arg_8, arg_C+var_24, 0, 0)
    If var_7C Then
      If var_7C = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00426DF1
      End If
    End If
    var_eax = Err.Raise
  loc_00426DF1: 
    00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
    var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_2C, 0, var_7C)
    If var_5C Then
      If var_5C = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00426E46
      End If
    End If
    var_eax = Err.Raise
  loc_00426E46: 
    If var_5C Then
      If var_5C = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00426E75
      End If
    End If
    var_eax = Err.Raise
  loc_00426E75: 
    eax+ecx+0000000Eh = eax+ecx+0000000Eh + ebx+ecx+0000000Ch
    ReDim var_3C(0 To eax+ecx+0000000Eh+ebx+ecx+0000000Ch)
    If var_5C Then
      If var_5C = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00426ED7
      End If
    End If
    var_eax = Err.Raise
  loc_00426ED7: 
    If var_5C Then
      If var_5C = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00426F06
      End If
    End If
    var_eax = Err.Raise
  loc_00426F06: 
    eax+ecx+0000000Ch = eax+ecx+0000000Ch + ebx+ecx+0000000Eh
    ReDim var_40(0 To eax+ecx+0000000Ch+ebx+ecx+0000000Eh)
    If var_5C Then
      If var_5C = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00426F68
      End If
    End If
    var_eax = Err.Raise
  loc_00426F68: 
    If var_5C Then
      If var_5C = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00426F97
      End If
    End If
    var_eax = Err.Raise
  loc_00426F97: 
    eax+ecx+0000000Ch = eax+ecx+0000000Ch + ebx+ecx+0000000Eh
    var_98 = eax+ecx+0000000Ch+ebx+ecx+0000000Eh
  loc_00426FB7: 
    var_eax = Unknown_8F80(var_7C, var_5C, var_7C)
    If var_7C Then
      If var_7C = 1 Then
        var_30 = var_30 - ecx+00000014h
        If var_30 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00427005
      End If
    End If
    var_eax = Err.Raise
  loc_00427005: 
    var_eax = CopyMemory(var_24, ecx+eax+00000004h, var_7C)
    arg_C = arg_C + var_24
    var_24 = arg_C+var_24
    var_34 = var_34 * 0008h
    arg_C+var_24 = arg_C+var_24 + 00000008h
    var_34 = var_34 + arg_C+var_24+00000008h
    var_eax = SetFilePointer(arg_8, var_34+arg_C+var_24+00000008h, 0, 0)
    If var_7C Then
      If var_7C = 1 Then
        var_34 = var_34 - ecx+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_004270B0
      End If
    End If
    var_eax = Err.Raise
  loc_004270B0: 
    00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
    var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_2C, 0, var_7C)
    If var_7C Then
      If var_7C = 1 Then
        var_34 = var_34 - ecx+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00427113
      End If
    End If
    var_eax = Err.Raise
  loc_00427113: 
    var_eax = CopyMemory(var_24, ecx+eax+00000004h, var_7C)
    arg_C = arg_C + var_24
    var_24 = arg_C+var_24
    var_eax = SetFilePointer(arg_8, arg_C+var_24, 0, 0)
    If var_7C Then
      If var_7C = 1 Then
        var_34 = var_34 - ecx+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_0042719A
      End If
    End If
    var_eax = Err.Raise
  loc_0042719A: 
    00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
    var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_2C, 0, var_7C)
    If var_3C Then
      If var_3C = 1 Then
        var_34 = var_34 - ecx+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_004271F3
      End If
    End If
    var_eax = Err.Raise
  loc_004271F3: 
    If var_3C Then
      If var_3C = 1 Then
        var_34 = var_34 - ecx+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00427222
      End If
    End If
    var_eax = Err.Raise
  loc_00427222: 
    eax+ecx+0000000Eh = eax+ecx+0000000Eh + ebx+ecx+0000000Ch
    ReDim var_68(0 To eax+ecx+0000000Eh+ebx+ecx+0000000Ch)
    If var_3C Then
      If var_3C = 1 Then
        var_34 = var_34 - ecx+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00427284
      End If
    End If
    var_eax = Err.Raise
  loc_00427284: 
    If var_3C Then
      If var_3C = 1 Then
        var_34 = var_34 - ecx+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_004272B3
      End If
    End If
    var_eax = Err.Raise
  loc_004272B3: 
    eax+ecx+0000000Eh = eax+ecx+0000000Eh + ebx+ecx+0000000Ch
    ReDim var_64(0 To eax+ecx+0000000Eh+ebx+ecx+0000000Ch)
    If var_3C Then
      If var_3C = 1 Then
        var_34 = var_34 - ecx+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00427315
      End If
    End If
    var_eax = Err.Raise
  loc_00427315: 
    If var_3C Then
      If var_3C = 1 Then
        var_34 = var_34 - ecx+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00427344
      End If
    End If
    var_eax = Err.Raise
  loc_00427344: 
    eax+ecx+0000000Eh = eax+ecx+0000000Eh + ebx+ecx+0000000Ch
    var_A0 = eax+ecx+0000000Eh+ebx+ecx+0000000Ch
    var_eax = Unknown_AC80(var_7C, var_3C, var_7C, var_40, var_7C)
    If var_7C Then
      If var_7C = 1 Then
        var_34 = var_34 - ecx+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_004273B3
      End If
    End If
    var_eax = Err.Raise
  loc_004273B3: 
    var_eax = CopyMemory(var_24, ecx+eax+00000004h, var_7C)
    arg_C = arg_C + var_24
    var_24 = arg_C+var_24
    var_38 = var_38 * 0008h
    arg_C+var_24 = arg_C+var_24 + 00000008h
    var_38 = var_38 + arg_C+var_24+00000008h
    var_eax = SetFilePointer(arg_8, var_38+arg_C+var_24+00000008h, 0, 0)
    If var_7C Then
      If var_7C = 1 Then
        var_38 = var_38 - ecx+00000014h
        If var_38 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_0042745F
      End If
    End If
    var_eax = Err.Raise
  loc_0042745F: 
    00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
    var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_2C, 0, var_7C)
    If var_68 Then
      If var_68 = 1 Then
        var_38 = var_38 - ecx+00000014h
        If var_38 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_004274BC
      End If
    End If
    var_eax = Err.Raise
  loc_004274BC: 
    ecx+eax+00000004h = ecx+eax+00000004h + eax
    var_eax = SetFilePointer(arg_8, ecx+eax+00000004h+eax, var_80, 0)
    If var_7C Then
      If var_7C = 1 Then
        var_38 = var_38 - ecx+00000014h
        If var_38 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_0042751F
      End If
    End If
    var_eax = Err.Raise
  loc_0042751F: 
    00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
    var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_2C, 0, var_7C)
    var_20 = var_20 + 0001h
    var_20 = 00000008h.QueryInterface 'Ignore this
    ReDim Preserve arg_10(0 To 00000008h.QueryInterface)
    If var_7C Then
      If var_7C = 1 Then
        var_38 = var_38 - ecx+00000014h
        If var_38 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_004275AD
      End If
    End If
    var_eax = Err.Raise
  loc_004275AD: 
    00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
    var_eax = Proc_5_4_428C30(00000008h.GetTypeInfoCount, var_64, var_7C)
    var_80 = Proc_5_4_428C30(00000008h.GetTypeInfoCount, var_64, var_7C)
    If arg_10 Then
      If arg_10 = 1 Then
        If esi >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_004275F2
      End If
    End If
    var_eax = Err.Raise
  loc_004275F2: 
    If var_40 Then
      If var_40 = 1 Then
        var_34 = var_34 - eax+00000014h
        If var_34 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_0042762E
      End If
    End If
    var_eax = Err.Raise
  loc_0042762E: 
    If arg_10 Then
      If arg_10 = 1 Then
        If esi >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_0042765B
      End If
    End If
    var_eax = Err.Raise
  loc_0042765B: 
    If arg_10 Then
      If arg_10 = 1 Then
        If esi >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_004276A0
      End If
    End If
    var_eax = Err.Raise
  loc_004276A0: 
    var_eax = SetFilePointer(arg_8, ecx+eax+00000004h, var_80, 0)
    var_eax = ReadFile(arg_8, var_58, 24, var_2C, 0)
    If arg_10 Then
      If arg_10 = 1 Then
        If edi >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00427707
      End If
    End If
    var_eax = Err.Raise
  loc_00427707: 
    00000001h = 00000001h + var_38
    var_38 = 00000001h+var_38
    GoTo loc_00427367
    00000001h = 00000001h + var_34
    var_34 = 00000001h+var_34
    GoTo loc_00426FB7
    00000001h = 00000001h + var_30
    var_30 = 00000001h+var_30
    GoTo loc_00426C3C
  End If
  loc_00427784: 
  var_60 = arg_10
  Exit Sub
  GoTo loc_004277B0
  Exit Sub
  GoTo loc_004277B0
  Exit Sub
  loc_004277B0: 
  Exit Sub
End Sub

Public Sub Proc_5_3_427810
  Dim var_6C As Me
  Dim var_58 As Me
  On Error Resume Next
  If arg_8 >= 0 Then
    var_eax = Proc_5_5_428CC0(arg_10, 1, arg_8)
    var_eax = SetFilePointer(arg_8, arg_C, 0, 0)
    var_eax = ReadFile(arg_8, var_68, 16, var_28, 0)
    var_5A = var_5A + var_5C
    ReDim var_20(0 To var_5A+var_5C)
    var_5A = var_5A + var_5C
    ReDim var_50(0 To var_5A+var_5C)
    var_5A = var_5A + var_5C
    var_80 = var_5A+var_5C
    If 00000001h <= 0 Then
      00000001h = 00000001h * 0008h
      arg_C = arg_C + 00000008h
      00000001h = 00000001h + arg_C+00000008h
      var_eax = SetFilePointer(arg_8, 00000001h+arg_C+00000008h, 0, 0)
      If var_6C Then
        If var_6C = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_004279BF
        End If
      End If
      var_eax = Err.Raise
  loc_004279BF: 
      00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
      var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_28, 0, var_6C)
      If var_20 Then
        If var_20 = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_00427A15
        End If
      End If
      var_eax = Err.Raise
  loc_00427A15: 
      If edx+eax = 14 Then
        If var_6C Then
          If var_6C = 1 Then
            var_3C = var_3C - ecx+00000014h
            If var_3C >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427A61
          End If
        End If
        var_eax = Err.Raise
  loc_00427A61: 
        var_eax = CopyMemory(var_24, ecx+eax+00000004h, var_6C)
        arg_C = arg_C + var_24
        var_24 = arg_C+var_24
        var_eax = SetFilePointer(arg_8, arg_C+var_24, 0, 0)
        If var_6C Then
          If var_6C = 1 Then
            var_3C = var_3C - ecx+00000014h
            If var_3C >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427AE9
          End If
        End If
        var_eax = Err.Raise
  loc_00427AE9: 
        00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
        var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_28, 0, var_6C)
        If var_50 Then
          If var_50 = 1 Then
            var_3C = var_3C - ecx+00000014h
            If var_3C >= 0 Then
              var_eax = Err.Raise
            End If
            var_BC = var_3C
            GoTo loc_00427B47
          End If
        End If
        var_eax = Err.Raise
        var_BC = Err.Raise
  loc_00427B47: 
        If var_50 Then
          If var_50 = 1 Then
            var_3C = var_3C - ecx+00000014h
            If var_3C >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427B76
          End If
        End If
        var_eax = Err.Raise
  loc_00427B76: 
        ecx+eax+0000000Eh = ecx+eax+0000000Eh + ecx+eax+0000000Ch
        ReDim var_4C(0 To ecx+eax+0000000Eh+ecx+eax+0000000Ch)
        If var_50 Then
          If var_50 = 1 Then
            var_3C = var_3C - ecx+00000014h
            If var_3C >= 0 Then
              var_eax = Err.Raise
            End If
            var_C0 = var_3C
            GoTo loc_00427BE6
          End If
        End If
        var_eax = Err.Raise
        var_C0 = Err.Raise
  loc_00427BE6: 
        If var_50 Then
          If var_50 = 1 Then
            var_3C = var_3C - ecx+00000014h
            If var_3C >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427C15
          End If
        End If
        var_eax = Err.Raise
  loc_00427C15: 
        ecx+eax+0000000Eh = ecx+eax+0000000Eh + ecx+edx+0000000Ch
        ReDim var_48(0 To ecx+eax+0000000Eh+ecx+edx+0000000Ch)
        If var_50 Then
          If var_50 = 1 Then
            var_3C = var_3C - ecx+00000014h
            If var_3C >= 0 Then
              var_eax = Err.Raise
            End If
            var_C4 = var_3C
            GoTo loc_00427C85
          End If
        End If
        var_eax = Err.Raise
        var_C4 = Err.Raise
  loc_00427C85: 
        If var_50 Then
          If var_50 = 1 Then
            var_3C = var_3C - ecx+00000014h
            If var_3C >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427CB4
          End If
        End If
        var_eax = Err.Raise
  loc_00427CB4: 
        ecx+eax+0000000Eh = ecx+eax+0000000Eh + ecx+edx+0000000Ch
        var_88 = ecx+eax+0000000Eh+ecx+edx+0000000Ch
        var_eax = Unknown_9880(var_6C, var_50, var_6C, var_20)
        If var_6C Then
          If var_6C = 1 Then
            var_3C = var_3C - ecx+00000014h
            If var_3C >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427D26
          End If
        End If
        var_eax = Err.Raise
  loc_00427D26: 
        var_eax = CopyMemory(var_24, edx+eax+00000004h, var_6C)
        arg_C = arg_C + var_24
        var_24 = arg_C+var_24
        var_40 = var_40 * 0008h
        arg_C+var_24 = arg_C+var_24 + 00000008h
        var_40 = var_40 + arg_C+var_24+00000008h
        var_eax = SetFilePointer(arg_8, var_40+arg_C+var_24+00000008h, 0, 0)
        If var_6C Then
          If var_6C = 1 Then
            var_40 = var_40 - ecx+00000014h
            var_74 = var_40
            If var_40 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427DD6
          End If
        End If
        var_eax = Err.Raise
  loc_00427DD6: 
        00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
        var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_28, 0, var_6C)
        If var_6C Then
          If var_6C = 1 Then
            var_40 = var_40 - ecx+00000014h
            var_74 = var_40
            If var_40 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427E38
          End If
        End If
        var_eax = Err.Raise
  loc_00427E38: 
        var_eax = CopyMemory(var_24, ecx+eax+00000004h, var_6C)
        arg_C = arg_C + var_24
        var_24 = arg_C+var_24
        var_eax = SetFilePointer(arg_8, arg_C+var_24, 0, 0)
        If var_6C Then
          If var_6C = 1 Then
            var_40 = var_40 - ecx+00000014h
            If var_40 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427EC2
          End If
        End If
        var_eax = Err.Raise
  loc_00427EC2: 
        00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
        var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_28, 0, var_6C)
        If var_48 Then
          If var_48 = 1 Then
            var_40 = var_40 - ecx+00000014h
            If var_40 >= 0 Then
              var_eax = Err.Raise
            End If
            var_C8 = var_40
            GoTo loc_00427F1C
          End If
        End If
        var_eax = Err.Raise
        var_C8 = Err.Raise
  loc_00427F1C: 
        If var_48 Then
          If var_48 = 1 Then
            var_40 = var_40 - ecx+00000014h
            If var_40 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427F4B
          End If
        End If
        var_eax = Err.Raise
  loc_00427F4B: 
        ecx+eax+0000000Eh = ecx+eax+0000000Eh + ecx+eax+0000000Ch
        ReDim var_58(0 To ecx+eax+0000000Eh+ecx+eax+0000000Ch)
        If var_48 Then
          If var_48 = 1 Then
            var_40 = var_40 - ecx+00000014h
            If var_40 >= 0 Then
              var_eax = Err.Raise
            End If
            var_CC = var_40
            GoTo loc_00427FBB
          End If
        End If
        var_eax = Err.Raise
        var_CC = Err.Raise
  loc_00427FBB: 
        If var_48 Then
          If var_48 = 1 Then
            var_40 = var_40 - ecx+00000014h
            If var_40 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00427FEA
          End If
        End If
        var_eax = Err.Raise
  loc_00427FEA: 
        ecx+eax+0000000Eh = ecx+eax+0000000Eh + ecx+edx+0000000Ch
        var_90 = ecx+eax+0000000Eh+ecx+edx+0000000Ch
        var_eax = Unknown_8D480(var_6C, var_48, var_6C, var_4C, var_6C)
        If var_6C Then
          If var_6C = 1 Then
            var_40 = var_40 - ecx+00000014h
            If var_40 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_0042805C
          End If
        End If
        var_eax = Err.Raise
  loc_0042805C: 
        var_eax = CopyMemory(var_24, edx+eax+00000004h, var_6C)
        arg_C = arg_C + var_24
        arg_C+var_24 = arg_C+var_24 + 00000008h
        var_44 = var_44 * 0008h
        arg_C+var_24+00000008h = arg_C+var_24+00000008h + var_44
        var_24 = arg_C+var_24+00000008h+var_44
        var_eax = SetFilePointer(arg_8, arg_C+var_24+00000008h+var_44, 0, 0)
        If var_6C Then
          If var_6C = 1 Then
            var_44 = var_44 - ecx+00000014h
            If var_44 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00428108
          End If
        End If
        var_eax = Err.Raise
  loc_00428108: 
        00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
        var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_28, 0, var_6C)
        If var_6C Then
          If var_6C = 1 Then
            var_44 = var_44 - ecx+00000014h
            If var_44 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_0042816C
          End If
        End If
        var_eax = Err.Raise
  loc_0042816C: 
        var_eax = CopyMemory(var_24, ecx+eax+00000004h, var_6C)
        arg_C = arg_C + var_24
        var_24 = arg_C+var_24
        var_eax = SetFilePointer(arg_8, arg_C+var_24, 0, 0)
        ReDim Preserve var_54(0 To var_44-ecx+00000014h)
        If var_6C Then
          If var_6C = 1 Then
            var_44 = var_44 - ecx+00000014h
            var_74 = var_44
            If var_44 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00428212
          End If
        End If
        var_eax = Err.Raise
  loc_00428212: 
        00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
        var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_28, 0, var_6C)
        If var_6C Then
          If var_6C = 1 Then
            var_44 = var_44 - ecx+00000014h
            If var_44 >= 0 Then
              var_eax = Err.Raise
            End If
            GoTo loc_00428270
          End If
        End If
        var_eax = Err.Raise
  loc_00428270: 
        00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
        var_eax = Proc_5_4_428C30(00000008h.GetTypeInfoCount, var_54, var_6C)
        var_24 = Proc_5_4_428C30(00000008h.GetTypeInfoCount, var_54, var_6C)
        var_eax = SetFilePointer(arg_8, 0, 0, 0)
        var_eax = ReadFile(arg_8, var_34, 6, var_28, 0)
        var_98 = var_30
        If 00000001h <= var_30 Then
          var_eax = WriteFile(arg_8, arg_14, 12, var_28, 0)
          var_eax = SetFilePointer(arg_8, 2, var_70, 1)
          If global_42C12C = -1 Then
            var_eax = GetForegroundWindow(var_6C, var_54, var_6C, var_58, var_6C, var_58)
          End If
          00000001h = 00000001h + 00000001h
          GoTo loc_004282CA
        End If
        00000001h = 00000001h + var_44
        var_44 = 00000001h+var_44
        GoTo loc_00428010
        00000001h = 00000001h + var_40
        var_40 = 00000001h+var_40
        GoTo loc_00427CDA
      End If
      If var_70 Then
        If var_70 = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_0042838F
        End If
      End If
      var_eax = Err.Raise
  loc_0042838F: 
      var_eax = Unknown_9880(var_4C, var_4C)
      If var_6C Then
        If var_6C = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_004283DB
        End If
      End If
      var_eax = Err.Raise
  loc_004283DB: 
      var_eax = CopyMemory(var_24, ecx+eax+00000004h, var_6C)
      arg_C = arg_C + var_24
      var_24 = arg_C+var_24
      var_eax = SetFilePointer(arg_8, arg_C+var_24, 0, 0)
      If var_6C Then
        If var_6C = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_00428463
        End If
      End If
      var_eax = Err.Raise
  loc_00428463: 
      00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
      var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_28, 0, var_6C)
      If var_50 Then
        If var_50 = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          var_D0 = var_3C
          GoTo loc_004284C1
        End If
      End If
      var_eax = Err.Raise
      var_D0 = Err.Raise
  loc_004284C1: 
      If var_50 Then
        If var_50 = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_004284F0
        End If
      End If
      var_eax = Err.Raise
  loc_004284F0: 
      eax+ecx+0000000Eh = eax+ecx+0000000Eh + eax+ecx+0000000Ch
      ReDim var_4C(0 To eax+ecx+0000000Eh+eax+ecx+0000000Ch)
      If var_50 Then
        If var_50 = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          var_D4 = var_3C
          GoTo loc_00428560
        End If
      End If
      var_eax = Err.Raise
      var_D4 = Err.Raise
  loc_00428560: 
      If var_50 Then
        If var_50 = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_0042858F
        End If
      End If
      var_eax = Err.Raise
  loc_0042858F: 
      eax+ecx+0000000Eh = eax+ecx+0000000Eh + edx+ecx+0000000Ch
      ReDim var_48(0 To eax+ecx+0000000Eh+edx+ecx+0000000Ch)
      If var_50 Then
        If var_50 = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          var_D8 = var_3C
          GoTo loc_004285FF
        End If
      End If
      var_eax = Err.Raise
      var_D8 = Err.Raise
  loc_004285FF: 
      If var_50 Then
        If var_50 = 1 Then
          var_3C = var_3C - ecx+00000014h
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_0042862E
        End If
      End If
      var_eax = Err.Raise
  loc_0042862E: 
      eax+ecx+0000000Eh = eax+ecx+0000000Eh + edx+ecx+0000000Ch
      var_A0 = eax+ecx+0000000Eh+edx+ecx+0000000Ch
      var_eax = Unknown_9880(var_6C, var_50, var_6C)
      If var_6C Then
        If var_6C = 1 Then
          var_3C = var_3C - ecx+00000014h
          var_74 = var_3C
          If var_3C >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_004286A2
        End If
      End If
      var_eax = Err.Raise
  loc_004286A2: 
      var_eax = CopyMemory(var_24, edx+eax+00000004h, var_6C)
      arg_C = arg_C + var_24
      var_24 = arg_C+var_24
      00000001h = 00000001h * 0008h
      arg_C+var_24 = arg_C+var_24 + 00000008h
      00000001h = 00000001h + arg_C+var_24+00000008h
      var_eax = SetFilePointer(arg_8, 00000001h+arg_C+var_24+00000008h, 0, 0)
      If var_6C Then
        If var_6C = 1 Then
          00000001h = 00000001h - ecx+00000014h
          If 00000001h >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_0042874C
        End If
      End If
      var_eax = Err.Raise
  loc_0042874C: 
      00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
      var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_28, 0, var_6C)
      If var_6C Then
        If var_6C = 1 Then
          var_40 = var_40 - ecx+00000014h
          If var_40 >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_004287B0
        End If
      End If
      var_eax = Err.Raise
  loc_004287B0: 
      var_eax = CopyMemory(var_24, ecx+eax+00000004h, var_6C)
      arg_C = arg_C + var_24
      var_24 = arg_C+var_24
      var_eax = SetFilePointer(arg_8, arg_C+var_24, 0, 0)
      If var_6C Then
        If var_6C = 1 Then
          var_40 = var_40 - ecx+00000014h
          If var_40 >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_00428838
        End If
      End If
      var_eax = Err.Raise
  loc_00428838: 
      00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
      var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_28, 0, var_6C)
      If var_48 Then
        If var_48 = 1 Then
          var_40 = var_40 - ecx+00000014h
          If var_40 >= 0 Then
            var_eax = Err.Raise
          End If
          var_DC = var_40
          GoTo loc_00428896
        End If
      End If
      var_eax = Err.Raise
      var_DC = Err.Raise
  loc_00428896: 
      If var_48 Then
        If var_48 = 1 Then
          var_40 = var_40 - ecx+00000014h
          If var_40 >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_004288C5
        End If
      End If
      var_eax = Err.Raise
  loc_004288C5: 
      ecx+eax+0000000Eh = ecx+eax+0000000Eh + eax+ecx+0000000Ch
      ReDim var_58(0 To ecx+eax+0000000Eh+eax+ecx+0000000Ch)
      If var_48 Then
        If var_48 = 1 Then
          var_40 = var_40 - ecx+00000014h
          If var_40 >= 0 Then
            var_eax = Err.Raise
          End If
          var_E0 = var_40
          GoTo loc_00428935
        End If
      End If
      var_eax = Err.Raise
      var_E0 = Err.Raise
  loc_00428935: 
      If var_48 Then
        If var_48 = 1 Then
          var_40 = var_40 - ecx+00000014h
          If var_40 >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_00428964
        End If
      End If
      var_eax = Err.Raise
  loc_00428964: 
      ecx+eax+0000000Eh = ecx+eax+0000000Eh + ecx+edx+0000000Ch
      var_A8 = ecx+eax+0000000Eh+ecx+edx+0000000Ch
      var_eax = Unknown_B780(var_6C, var_48, var_6C, var_4C, var_6C)
      If var_6C Then
        If var_6C = 1 Then
          var_40 = var_40 - ecx+00000014h
          var_74 = var_40
          If var_40 >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_004289D5
        End If
      End If
      var_eax = Err.Raise
  loc_004289D5: 
      var_eax = CopyMemory(var_24, edx+eax+00000004h, var_6C)
      arg_C = arg_C + var_24
      arg_C+var_24 = arg_C+var_24 + 00000008h
      00000001h = 00000001h * 0008h
      arg_C+var_24+00000008h = arg_C+var_24+00000008h + 00000001h
      var_24 = arg_C+var_24+00000008h+00000001h
      var_eax = SetFilePointer(arg_8, arg_C+var_24+00000008h+00000001h, 0, 0)
      If var_6C Then
        If var_6C = 1 Then
          00000001h = 00000001h - ecx+00000014h
          If 00000001h >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_00428A81
        End If
      End If
      var_eax = Err.Raise
  loc_00428A81: 
      00000008h.GetTypeInfoCount 'Ignore this = 00000008h.GetTypeInfoCount 'Ignore this + Err.Raise
      var_eax = ReadFile(arg_8, 00000008h.GetTypeInfoCount, var_28, 0, var_6C)
      If var_58 Then
        If var_58 = 1 Then
          00000001h = 00000001h - ecx+00000014h
          If 00000001h >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_00428AD8
        End If
      End If
      var_eax = Err.Raise
  loc_00428AD8: 
      ecx+eax+00000004h = ecx+eax+00000004h + edx
      var_24 = ecx+eax+00000004h+edx
      var_eax = SetFilePointer(arg_8, ecx+eax+00000004h+edx, 0, 0)
      var_eax = WriteFile(arg_8, arg_10, 4, var_28, 0)
      00000008h.Release 'Ignore this = 00000008h.Release 'Ignore this + 00000028h
      var_eax = WriteFile(arg_8, 00000008h.Release, 4, var_28, 0)
      00000001h = 00000001h + 00000001h
      GoTo loc_00428988
      00000001h = 00000001h + var_40
      var_40 = 00000001h+var_40
      GoTo loc_00428655
      00000001h = 00000001h + var_3C
      var_3C = 00000001h+var_3C
      GoTo loc_00427939
    End If
    Exit Sub
    GoTo loc_00428BD6
  End If
  var_38 = GetLastError()
  Exit Sub
  GoTo loc_00428BD6
  Exit Sub
  GoTo loc_00428BD6
  Exit Sub
  loc_00428BD6: 
  Exit Sub
End Sub

Public Sub Proc_5_4_428C30
  On Error Resume Next
  If arg_8 >= 0 Then
    var_24 = 0042C268h+arg_8
    GoTo loc_00428C97
  End If
  var_24 = True
  GoTo loc_00428C97
  loc_00428C97: 
  Exit Sub
End Sub

Public Sub Proc_5_5_428CC0
  On Error Resume Next
  If arg_8 >= 0 Then
    var_24 = 0042C264h+arg_8
    GoTo loc_00428D27
  End If
  var_24 = True
  GoTo loc_00428D27
  loc_00428D27: 
  Exit Sub
End Sub
