
Public Sub Proc_4_0_4212F0
  Dim var_1C As Me
  Dim var_18 As Me
  Dim var_14 As Me
  Dim global_0042C244 As Me
  If 0042C244h > 0 Then
    0042C244h = 0042C244h - 00000001h
    ReDim var_14(0 To global_0042C244)
    If var_1C Then
      If var_1C = 1 Then
        If esi >= 0 Then
          var_eax = Err.Raise
        End If
        var_3C = var_1C.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
        GoTo loc_0042139A
      End If
    End If
    var_eax = Err.Raise
    var_3C = Err.Raise
  loc_0042139A: 
    If var_18 Then
      If var_18 = 1 Then
        If esi >= 0 Then
          var_eax = Err.Raise
        End If
        GoTo loc_004213CB
      End If
    End If
    var_eax = Err.Raise
  loc_004213CB: 
    var_1C.GetTypeInfoCount 'Ignore this = var_1C.GetTypeInfoCount 'Ignore this + var_3C
    CopyMemory(var_1C.GetTypeInfoCount, var_1C.GetTypeInfoCount, var_1C.%x1 = GetIDsOfNames(%StkVar2) 'Ignore this)
    Put #global_0042C23A, var_14
  End If
  GoTo loc_00421432
  Exit Sub
  loc_00421432: 
End Sub

Public Sub Proc_4_1_4214E0
  var_30 = arg_8
  var_3C = arg_C
  On Error Resume Next
  var_34 = FreeFile(var_64)
  var_ret_1 = FreeFile(var_64)
  Open var_30 For Binary As #var_ret_1 Len = -1
  var_ret_2 = FreeFile(var_64)
  LOF(var_ret_2) = LOF(var_ret_2) - Len(global_0040545C)
  LOF(var_ret_2) = LOF(var_ret_2) + 00000001h
  If LOF(var_ret_2)+00000001h > 4 Then
    var_44 = Space$(Len(global_0040545C))
    Seek #FreeFile(var_64), LOF(var_ret_2)+00000001h
    Get #FreeFile(var_64), var_44
    var_eax = Proc_1_1_4115D0(var_44, 1, FreeFile(var_64))
    call Proc_1_1_4115D0(0040545Ch, Proc_1_1_4115D0(var_44, 1, FreeFile(var_64)), var_ret_5 = 0040545Ch)
    var_54 = var_ret_5
    ebx = (ecx = %S_edx_S = var_54) + 1
    If (ecx <> %S_edx_S <> var_54) + 1 <> 0 Then GoTo loc_00421846
  End If
  var_ret_6 = FreeFile(var_64)
  LOF(var_ret_6) = LOF(var_ret_6) + 00000001h
  Seek #FreeFile(var_64), LOF(var_ret_6)+00000001h
  var_48 = FreeFile(var_64)
  Open var_3C For Unknown As #FreeFile(var_64) Len = -1
  var_40 = Space$(4096)
  var_ret_9 = FreeFile(var_64)
  var_38 = LOF(var_ret_9)
  If var_20 Then
    LOF(var_ret_9) = LOF(var_ret_9) - 00000001h
    If LOF(var_ret_9) >= 4096 Then
      Get #FreeFile(var_64), var_40
      Put #FreeFile(var_64), var_40
      var_2C = var_2C(1025)
      DoEvents
      GoTo loc_004216F3
    End If
    var_38 = var_38 - var_2C
    var_40 = Space$(LOF(var_ret_9)(1))
    Get #FreeFile(var_64), var_40
    Put #FreeFile(var_64), var_40
    DoEvents
    GoTo loc_004216F3
  End If
  Close #FreeFile(var_64)
  Put #FreeFile(var_64), LOF(var_ret_9)
  var_eax = Proc_1_1_4115D0(var_4C, , )
  var_50 = Proc_1_1_4115D0(var_4C, , )
  var_eax = Proc_1_0_411210(var_50, , )
  Put #FreeFile(var_64), Proc_1_0_411210(var_50, , )
  Close #FreeFile(var_64)
  Exit Sub
  GoTo loc_00421897
  loc_00421846: 
  Close #var_48
  Close #var_34
  Exit Sub
  GoTo loc_00421897
  Exit Sub
  loc_00421897: 
  Exit Sub
End Sub

Public Sub Proc_4_2_4218D0
  var_30 = arg_8
  var_44 = arg_C
  var_50 = arg_10
  On Error Resume Next
  var_3C = FreeFile(10)
  var_ret_1 = var_3C
  Open var_30 For Unknown As #var_ret_1 Len = -1
  var_ret_2 = var_3C
  LOF(var_ret_2) = LOF(var_ret_2) - Len(global_0040545C)
  LOF(var_ret_2) = LOF(var_ret_2) + 00000001h
  var_2C = FFFFFFFFh.QueryInterface 'Ignore this
  If var_2C > 4 Then
    var_4C = Space$(Len(global_0040545C))
    Seek #var_3C, var_2C
    Get #var_3C, var_4C
    var_eax = Proc_1_1_4115D0(var_4C, 0, LOF(var_ret_2)+00000001h)
    var_64 = Proc_1_1_4115D0(var_4C, 0, LOF(var_ret_2)+00000001h)
    var_eax = Proc_1_1_4115D0(var_60, var_64, ebx)
    var_68 = Proc_1_1_4115D0(var_60, var_64, ebx)
    eax = (fs:[00000000h] = var_68) + 1
    var_94 = (fs:[00000000h] = var_68) + 1
    If var_94 Then
      GoTo loc_00421ADD
    End If
    Close #var_3C
    GoTo loc_00421FD1
  loc_00421ADD: 
    GoTo loc_00421AFB
  End If
  Close #var_3C
  GoTo loc_00421FD1
  loc_00421AFB: 
  var_2C = var_2C - 00000004h
  var_2C = var_2C
  Seek #var_3C, var_2C
  Get #var_3C, var_58
  var_2C = var_2C - var_58
  var_2C = var_2C - 00000001h
  var_28 = var_2C
  Seek #var_3C, 1
  var_eax = Proc_1_9_415AF0(var_44, , )
  var_34 = FreeFile(10)
  Open var_44 For Unknown As #var_34 Len = -1
  var_40 = Space$(4096)
  loc_00421C19: 
  If var_24 Then
    var_28 = var_28 - 1
    If var_28 >= 4096 Then
      Get #var_3C, var_40
      Put #var_34, var_40
      var_54 = var_54(1025)
      GoTo loc_00421D11
    End If
    var_28 = var_28 - var_54
    var_40 = Space$(var_28(1))
    Get #var_3C, var_40
    Put #var_34, var_40
  loc_00421D11: 
    GoTo loc_00421C19
  End If
  Close #var_34
  var_eax = Proc_1_9_415AF0(var_50, , )
  var_38 = FreeFile(10)
  Open var_50 For Unknown As #var_38 Len = -1
  Close #var_38
  SetAttr var_50, 38
  Open var_50 For Unknown As #var_38 Len = -1
  var_40 = Space$(4096)
  loc_00421E11: 
  If var_24 Then
    var_58 = var_58 - 1
    If var_58 >= 4096 Then
      Get #var_3C, var_40
      Put #var_38, var_40
      var_5C = var_5C(1025)
      GoTo loc_00421F09
    End If
    var_58 = var_58 - var_5C
    var_40 = Space$(var_58(1))
    Get #var_3C, var_40
    Put #var_38, var_40
  loc_00421F09: 
    DoEvents
    GoTo loc_00421E11
  End If
  Close #var_38
  Close #var_3C
  var_60 = var_50 & global_004086A8
  var_70 = var_60 & global_0042C0D0
  var_90 = Shell(var_60 & global_0042C0D0, 1)
  var_80 = var_44
  var_90 = Shell(var_44, 0)
  loc_00421FD1: 
  GoTo loc_00421FFA
  Exit Sub
  loc_00421FFA: 
  Exit Sub
End Sub

Public Sub Proc_4_3_422050
  var_30 = arg_8
  On Error Resume Next
  var_eax = Proc_1_9_415AF0(var_30 & global_00408794, -1, edi)
  var_40 = var_30 & global_00408794
  var_eax = Proc_4_9_4259A0(global_0042C0CC, var_40, 0)
  eax = Proc_4_9_4259A0(global_0042C0CC, var_40, 0) + 1
  var_74 = Proc_4_9_4259A0(global_0042C0CC, var_40, 0) + 1
  If var_74 Then
    GoTo loc_00422699
  End If
  SetAttr var_30 & global_00408794, 6
  DoEvents
  var_eax = Proc_1_9_415AF0(global_0042C0F0, 0, fs:[00000000h])
  var_eax = Unknown_VTable_Call[edx+00000310h]
  var_eax = Proc_4_7_422F50(var_30, global_0042C0F0, var_4C)
  DoEvents
  If global_42C12C = -1 Then
    var_eax = GetForegroundWindow(00000020h, var_4C, var_50)
  End If
  var_eax = Proc_4_10_426070(var_30 & global_00408794, global_0042C0F0, var_50)
  DoEvents
  var_3C = FreeFile(10)
  var_ret_1 = var_3C
  Open var_30 & global_00408794 For Binary As #var_ret_1 Len = -1
  var_ret_3 = var_3C
  LOF(var_ret_3) = LOF(var_ret_3) + 00000001h
  Seek #var_3C, LOF(var_ret_3)+00000001h
  var_38 = FreeFile(10)
  Open var_30 For Unknown As #var_38 Len = -1
  var_ret_5 = var_38
  LOF(var_ret_5) = LOF(var_ret_5) - Len(global_0040545C)
  LOF(var_ret_5) = LOF(var_ret_5) - 00000003h
  var_2C = LOF(var_ret_5)
  If var_2C > 0 Then
    Seek #var_38, var_2C
    Get #var_38, var_28
    var_2C = var_2C - var_28
    var_2C = var_2C
    If var_2C > 0 Then
      Seek #var_38, var_2C
      var_34 = Space$(4096)
  loc_00422482: 
      If var_24 Then
        var_28 = var_28 - 1
        If var_28 >= 4096 Then
          Get #var_38, var_34
          Put #var_3C, var_34
          var_2C = var_2C(1025)
          GoTo loc_0042257A
        End If
        var_28 = var_28 - var_2C
        var_34 = Space$(var_28(1))
        Get #var_38, var_34
        Put #var_3C, var_34
  loc_0042257A: 
        DoEvents
        GoTo loc_00422482
      End If
      Put #var_3C, var_28
      var_eax = Proc_1_1_4115D0(var_40, Unknown_VTable_Call[edx+00000310h], var_90)
      var_44 = Proc_1_1_4115D0(var_40, Unknown_VTable_Call[edx+00000310h], var_90)
      var_eax = Proc_1_0_411210(var_44, , )
      Put #var_3C, Proc_1_0_411210(var_44, , )
    End If
  End If
  Close #var_38
  Close #var_3C
  var_eax = Proc_1_9_415AF0(var_30, , )
  call Name(var_30, var_30 & global_00408794)
  SetAttr var_30, 0
  loc_00422699: 
  GoTo loc_004226D4
  Exit Sub
  loc_004226D4: 
  Exit Sub
End Sub

Public Sub Proc_4_4_422700
  var_30 = arg_8
  On Error Resume Next
  var_2C = FreeFile(10)
  Open var_30 For Unknown As #var_2C Len = -1
  var_ret_2 = var_2C
  LOF(var_ret_2) = LOF(var_ret_2) - Len(global_0040545C)
  LOF(var_ret_2) = LOF(var_ret_2) + 00000001h
  var_24 = FFFFFFFFh.QueryInterface 'Ignore this
  If var_24 > 4 Then
    var_34 = Space$(Len(global_0040545C))
    Seek #var_2C, var_24
    Get #var_2C, var_34
    var_eax = Proc_1_1_4115D0(var_34, 0, LOF(var_ret_2)+00000001h)
    var_28 = Proc_1_1_4115D0(var_34, 0, LOF(var_ret_2)+00000001h)
  End If
  Close #var_2C
  GoTo loc_004228A7
  If 0 And 4 Then
  End If
  Exit Sub
  loc_004228A7: 
  Exit Sub
End Sub

Public Sub Proc_4_5_4228E0
  var_30 = arg_8
  On Error Resume Next
  var_2C = FreeFile(10)
  Open var_30 For Unknown As #var_2C Len = -1
  var_ret_2 = var_2C
  LOF(var_ret_2) = LOF(var_ret_2) - Len(global_0040545C)
  LOF(var_ret_2) = LOF(var_ret_2) + 00000001h
  var_24 = FFFFFFFFh.QueryInterface 'Ignore this
  If var_24 > 4 Then
    var_34 = Space$(Len(global_0040545C))
    Seek #var_2C, var_24
    Get #var_2C, var_34
    var_eax = Proc_1_1_4115D0(var_34, 0, LOF(var_ret_2)+00000001h)
    var_48 = Proc_1_1_4115D0(var_34, 0, LOF(var_ret_2)+00000001h)
    var_40 = Left$(var_48, 3)
    var_eax = Proc_1_1_4115D0(var_3C, var_40, 0)
    var_44 = Proc_1_1_4115D0(var_3C, var_40, 0)
    eax = (fs:[00000000h] = var_44) + 1
    var_6C = (fs:[00000000h] = var_44) + 1
    If var_6C Then
      var_eax = Proc_1_1_4115D0(var_34, , )
      var_28 = CLng(Right$(Proc_1_1_4115D0(var_34, , ), 4))
      GoTo loc_00422B5E
    End If
  loc_00422B5E: 
    GoTo loc_00422B6E
  End If
  loc_00422B6E: 
  Close #var_2C
  GoTo loc_00422BB5
  Exit Sub
  loc_00422BB5: 
  Exit Sub
End Sub

Public Sub Proc_4_6_422BF0
  var_30 = arg_8
  On Error Resume Next
  var_2C = FreeFile(10)
  Open var_30 For Unknown As #var_2C Len = -1
  var_ret_2 = var_2C
  LOF(var_ret_2) = LOF(var_ret_2) - Len(global_0040545C)
  LOF(var_ret_2) = LOF(var_ret_2) - 00000003h
  var_24 = LOF(var_ret_2)
  If var_24 > 0 Then
    Seek #var_2C, var_24
    Get #var_2C, var_38
    var_24 = var_24 - var_38
    var_24 = var_24 - Len(global_0040545C)
    var_24 = var_24
    If var_24 > 0 Then
      var_34 = Space$(Len(global_0040545C))
      Seek #var_2C, var_24
      Get #var_2C, var_34
      var_eax = Proc_1_1_4115D0(var_34, -1, edi)
      var_4C = Proc_1_1_4115D0(var_34, -1, edi)
      var_44 = Left$(var_4C, 3)
      var_eax = Proc_1_1_4115D0(var_40, var_44, var_24)
      var_48 = Proc_1_1_4115D0(var_40, var_44, var_24)
      eax = (0 = var_48) + 1
      var_70 = (0 = var_48) + 1
      If var_70 Then
        var_eax = Proc_1_1_4115D0(var_34, fs:[00000000h], )
        var_28 = CLng(Right$(Proc_1_1_4115D0(var_34, fs:[00000000h], ), 4))
      End If
    End If
  End If
  Close #var_2C
  GoTo loc_00422F17
  Exit Sub
  loc_00422F17: 
  Exit Sub
End Sub

Public Sub Proc_4_7_422F50
  Dim arg_10 As Me
  repz stosd
  repz stosd
  repz stosd
  var_2C = arg_8
  var_28 = arg_C
  On Error Resume Next
  If arg_14 = 16 Then
    var_ret_1 = var_2C
    var_eax = SHGetFileInfo(var_ret_1, 0, var_2E0, " ?", var_5F0)
    GoTo loc_00423270
  End If
  If var_310 <> 32 Then GoTo loc_00424E98
  var_eax = SHGetFileInfo(var_2C, 0, var_750, " ?", var_750)
  loc_00423270: 
  var_ret_3 = var_310
  " ?" = arg_10.StartUpPosition
  arg_10.FontTransparent = global_00000003
  arg_14 = arg_14 * 15
  arg_10.Width = arg_14
  arg_14 = arg_14 * 15
  arg_10.Height = arg_14
  arg_10.Picture = CInt(-1)
  var_47C = arg_10.Caption
  var_2F0 = var_47C
  var_47C = arg_10.CurrentX
  var_eax = DrawIconEx(var_47C, ebx, ebx, var_2E0, arg_14, arg_14, ebx, ebx)
  If ecx Then
    var_eax = Unknown_VTable_Call[edx+00000264h]
    var_eax = DestroyIcon(var_2E0, arg_10, 00000003h, var_2E0, var_750)
    arg_14 = arg_14 - 00000001h
    ReDim var_24(0 To arg_14-00000001h, 0 To 3)
    arg_14 = arg_14 - 00000001h
    var_2F8 = arg_14
    If var_2F8 >= 0 Then
      arg_14 = arg_14 - 00000001h
      var_ret_6 = arg_14
      var_784 = var_ret_6
  loc_004234D1: 
      If var_308 <= var_ret_6 Then
        var_7DC = var_2F8
        arg_10.OLEDropMode = var_308
        var_20 = var_47C
        var_eax = Proc_4250D0(var_75C, var_47C, var_7DC)
        var_2E8 = var_75C
        var_eax = Proc_4250D0(var_768, var_20, var_47C)
        var_304 = var_764
        var_eax = Proc_4250D0(var_774, var_20, var_2E0)
        var_ret_9 = var_76C
        If var_2E8 < 0 Then
        End If
        If var_304 < 0 Then
        End If
        If var_ret_9 < 0 Then
        End If
        If var_20 = var_47C Then
          var_2EC = var_2EC & Chr$(0) & Chr$(0) & Chr$(0)
          var_eax = Unknown_800FFFFF(00000160h, 00000100h)
        End If
        var_2EC = var_2EC & Chr$(Unknown_800FFFFF(00000160h, 00000100h)) & Chr$(var_304) & Chr$(var_2E8)
        00000001h = 00000001h + var_308
        var_308 = 00000001h+var_308
        GoTo loc_004234D1
      End If
      True = True + var_2F8
      var_2F8 = True+var_2F8
      Method_FD088539
    End If
    If var_300 = var_FFFFFF Then
      arg_14 = arg_14 - 00000001h
      var_2F8 = arg_14
      If var_2F8 >= 0 Then
        If ebx <= 3 Then
          If var_24 Then
            If var_24 = 2 Then
              var_2F8 = var_2F8 - ecx+0000001Ch
              var_488 = var_2F8
              If var_2F8 >= 0 Then
                var_eax = Err.Raise
              End If
              var_308 = var_308 - ecx+00000014h
              If var_308 >= 0 Then
                var_eax = Err.Raise
              End If
              var_24(7) = var_24(7) * var_308
              var_24(7) = var_24(7) + var_488
              GoTo loc_00423808
            End If
          End If
          var_eax = Err.Raise
  loc_00423808: 
          var_24(5) = "-1"
          00000001h = 00000001h + var_308
          GoTo loc_00423791
        End If
        True = True + var_2F8
        var_2F8 = True+var_2F8
        Method_FD088539
      End If
      arg_14 = arg_14 - 00000001h
      var_ret_B = arg_14
      var_79C = var_ret_B
  loc_00423868: 
      If var_2F8 <= var_ret_B Then
        arg_14 = arg_14 - 00000001h
        var_7A4 = arg_14
        var_eax = Unknown_800FFFFF(var_2C)
        var_7E8 = var_2F8
        var_7EC = Unknown_800FFFFF(var_2C)
        var_7F0 = var_7E8
        arg_10.OLEDropMode = var_7EC
        var_20 = var_47C
        If var_47C = var_47C Then
          If var_24 Then
            If var_24 = 2 Then
              var_7E8 = var_7E8 - ecx+0000001Ch
              var_488 = var_7E8
              If var_7E8 >= 0 Then
                var_eax = Err.Raise
              End If
              var_7FC = var_7EC
              If global_42C000 = 0 Then
                GoTo loc_0042398A
              End If
  loc_0042398A: 
              CLng(global_402EA8) = CLng(global_402EA8) - ecx+00000014h
              If CLng(global_402EA8) >= 0 Then
                var_eax = Err.Raise
              End If
              var_24(7) = var_24(7) * CLng(global_402EA8)
              var_24(7) = var_24(7) + var_488
              GoTo loc_004239D2
            End If
          End If
          var_eax = Err.Raise
  loc_004239D2: 
          If (edx+eax = "-1") = 0 Then
            If var_24 Then
              If var_24 = 2 Then
                var_7E8 = var_7E8 - ecx+0000001Ch
                var_488 = var_7E8
                If var_7E8 >= 0 Then
                  var_eax = Err.Raise
                End If
                var_804 = var_7EC
                If global_42C000 = 0 Then
                  GoTo loc_00423A4B
                End If
  loc_00423A4B: 
                CLng(global_402EA8) = CLng(global_402EA8) - ecx+00000014h
                If CLng(global_402EA8) >= 0 Then
                  var_eax = Err.Raise
                End If
                var_24(7) = var_24(7) * CLng(global_402EA8)
                var_24(7) = var_24(7) + var_488
                GoTo loc_00423A8D
              End If
            End If
            var_eax = Err.Raise
  loc_00423A8D: 
          End If
          If var_24 Then
            If var_24 = 2 Then
              var_7E8 = var_7E8 - ecx+0000001Ch
              var_490 = var_7E8
              If var_7E8 >= 0 Then
                var_eax = Err.Raise
              End If
              var_80C = var_7EC
              If global_42C000 = 0 Then
                GoTo loc_00423AFC
              End If
  loc_00423AFC: 
              CLng(global_402EA8) = CLng(global_402EA8) - ecx+00000014h
              If CLng(global_402EA8) >= 0 Then
                var_eax = Err.Raise
              End If
              var_24(7) = var_24(7) * CLng(global_402EA8)
              var_24(7) = var_24(7) + var_490
              var_810 = var_24(7)+var_490
              GoTo loc_00423B44
            End If
          End If
          var_eax = CLng(global_402EA8)
          var_810 = CLng(global_402EA8)
  loc_00423B44: 
          If var_24 Then
            If var_24 = 2 Then
              var_7E8 = var_7E8 - ecx+0000001Ch
              var_488 = var_7E8
              If var_7E8 >= 0 Then
                var_eax = Err.Raise
              End If
              var_818 = var_7EC
              If global_42C000 = 0 Then
                GoTo loc_00423BA4
              End If
  loc_00423BA4: 
              CLng(global_402EA8) = CLng(global_402EA8) - ecx+00000014h
              var_484 = CLng(global_402EA8)
              If CLng(global_402EA8) >= 0 Then
                var_eax = Err.Raise
              End If
              var_24(7) = var_24(7) * var_484
              var_24(7) = var_24(7) + var_488
              GoTo loc_00423EF0
            End If
          End If
          var_eax = Err.Raise
          GoTo loc_00423EF0
        End If
        If var_24(4) Then
          If var_24(4) = 2 Then
            var_7E8 = var_7E8 - ecx+0000001Ch
            var_488 = var_7E8
            If var_7E8 >= 0 Then
              var_eax = Err.Raise
            End If
            var_820 = var_7EC
            If global_42C000 = 0 Then
              GoTo loc_00423C7A
            End If
  loc_00423C7A: 
            CLng(global_402EA8) = CLng(global_402EA8) - ecx+00000014h
            If CLng(global_402EA8) >= 0 Then
              var_eax = Err.Raise
            End If
            var_24(7) = var_24(7) * CLng(global_402EA8)
            var_24(7) = var_24(7) + var_488
            GoTo loc_00423CC2
          End If
        End If
        var_eax = Err.Raise
  loc_00423CC2: 
        If (edx+eax = "-1") = 0 Then
          If var_24 Then
            If var_24 = 2 Then
              var_7E8 = var_7E8 - ecx+0000001Ch
              var_488 = var_7E8
              If var_7E8 >= 0 Then
                var_eax = Err.Raise
              End If
              var_828 = var_7EC
              If global_42C000 = 0 Then
                GoTo loc_00423D3B
              End If
  loc_00423D3B: 
              CLng(global_402EA8) = CLng(global_402EA8) - ecx+00000014h
              If CLng(global_402EA8) >= 0 Then
                var_eax = Err.Raise
              End If
              var_24(7) = var_24(7) * CLng(global_402EA8)
              var_24(7) = var_24(7) + var_488
              GoTo loc_00423D7D
            End If
          End If
          var_eax = Err.Raise
  loc_00423D7D: 
        End If
        If var_24 Then
          If var_24 = 2 Then
            var_7E8 = var_7E8 - ecx+0000001Ch
            var_490 = var_7E8
            If var_7E8 >= 0 Then
              var_eax = Err.Raise
            End If
            var_830 = var_7EC
            If global_42C000 = 0 Then
              GoTo loc_00423DEC
            End If
  loc_00423DEC: 
            CLng(global_402EA8) = CLng(global_402EA8) - ecx+00000014h
            If CLng(global_402EA8) >= 0 Then
              var_eax = Err.Raise
            End If
            var_24(7) = var_24(7) * CLng(global_402EA8)
            var_24(7) = var_24(7) + var_490
            var_834 = var_24(7)+var_490
            GoTo loc_00423E34
          End If
        End If
        var_eax = CLng(global_402EA8)
        var_834 = CLng(global_402EA8)
  loc_00423E34: 
        If var_24 Then
          If var_24 = 2 Then
            var_7E8 = var_7E8 - ecx+0000001Ch
            var_488 = var_7E8
            If var_7E8 >= 0 Then
              var_eax = Err.Raise
            End If
            var_83C = var_7EC
            If global_42C000 = 0 Then
              GoTo loc_00423E94
            End If
  loc_00423E94: 
            CLng(global_402EA8) = CLng(global_402EA8) - ecx+00000014h
            var_484 = CLng(global_402EA8)
            If CLng(global_402EA8) >= 0 Then
              var_eax = Err.Raise
            End If
            var_24(7) = var_24(7) * var_484
            var_24(7) = var_24(7) + var_488
            GoTo loc_00423EDE
          End If
        End If
        var_eax = Err.Raise
  loc_00423EDE: 
        var_310 = ecx+edx & global_0040886C
        var_24(5) = Chr$(Unknown_800FFFFF(00000160h, 00000100h))
        00000001h = 00000001h + var_308
        var_308 = 00000001h+var_308
        GoTo loc_0042389C
        00000001h = 00000001h + var_2F8
        var_2F8 = 00000001h+var_2F8
        GoTo loc_00423868
      End If
      arg_14 = arg_14 - 00000001h
      var_ret_D = arg_14
      var_2F8 = var_ret_D
      If var_ret_D >= 0 Then
        If var_308 <= 3 Then
          If var_24 Then
            If var_24 = 2 Then
              var_ret_D = var_ret_D - ecx+0000001Ch
              var_488 = var_ret_D
              If var_ret_D >= 0 Then
                var_eax = Err.Raise
              End If
              var_308 = var_308 - ecx+00000014h
              If var_308 >= 0 Then
                var_eax = Err.Raise
              End If
              var_24(7) = var_24(7) * var_308
              var_24(7) = var_24(7) + var_488
              GoTo loc_00423FF6
            End If
          End If
          var_eax = Err.Raise
  loc_00423FF6: 
          If (edx+eax = "-1") = 0 Then
            GoTo loc_0042407E
          End If
          If var_24 Then
            If var_24 = 2 Then
              var_2F8 = var_2F8 - ecx+0000001Ch
              var_488 = var_ret_D
              If var_2F8 >= 0 Then
                var_eax = Err.Raise
              End If
              var_308 = var_308 - ecx+00000014h
              If var_308 >= 0 Then
                var_eax = Err.Raise
              End If
              var_24(7) = var_24(7) * var_308
              var_24(7) = var_24(7) + var_488
              GoTo loc_00424072
            End If
          End If
          var_eax = Err.Raise
  loc_00424072: 
          var_eax = Proc_4_8_4251C0(ecx+eax, global_402EAC, global_402EAC)
  loc_0042407E: 
          var_310 = Chr$(Proc_4_8_4251C0(ecx+eax, global_402EAC, global_402EAC))
          var_2FC = var_2FC & Chr$(Unknown_800FFFFF(00000160h, 00000100h))
          00000001h = 00000001h + var_308
          var_308 = 00000001h+var_308
          var_eax = Unknown_8F0FFFFF(global_402EAC, global_402EAC, global_00407CC4, ecx+edx, global_00407CC4, ecx+edx)
        End If
        var_7A8 = var_7A8 + var_ret_D
        var_2F8 = var_7A8+var_2F8
        Method_8C0FD03B
      End If
    End If
    var_2EC = var_2EC & var_2FC
    var_3E0 = Chr$(0)
    arg_14 = arg_14 *
    arg_14 = arg_14 * 3
    var_848 = arg_14
    var_850 = arg_14
    If global_42C000 = 0 Then
      GoTo loc_0042418C
    End If
  loc_0042418C: 
    var_860 = (((var_850 / global_402EA0) * arg_14) + var_848)
    var_310 = String$(CLng((var_860 - Len(var_2EC))), global_402EA0)
    var_2EC = global_402EA4 & Chr$(Unknown_800FFFFF(00000160h, 00000100h))
    If arg_14 = 16 Then
      var_3E0 = Chr$(0)
      var_3F0 = Chr$(0)
      var_400 = Chr$(0)
      var_410 = Chr$(0)
      var_420 = Chr$(0)
      var_430 = Chr$(0)
      var_440 = Chr$(0)
      var_450 = Chr$(0)
      var_460 = Chr$(0)
      var_350 = String$(2, Chr$(0)) & Chr$(1) & Chr$(0) & Chr$(1) & Chr$(0) & Chr$(16) & Chr$(16) & String$(6, Chr$(0)) & Chr$(CLng(Val("&H68")))
      var_390 = var_350 & Chr$(3) & String$(2, Chr$(0)) & Chr$(22) & String$(3, Chr$(0)) & Chr$(40) & String$(3, Chr$(0)) & Chr$(16) & String$(3, Chr$(0))
      var_3D8 = var_390 & Chr$(32) & String$(3, Chr$(0)) & Chr$(1) & Chr$(0) & Chr$(24) & String$(5, Chr$(0)) & Chr$(64) & Chr$(3) & String$(18, Chr$(0))
      var_2EC = var_3D8 & var_2EC
      GoTo loc_00424E0F
    End If
    If arg_14 <> 32 Then GoTo loc_00424E98
    var_3E0 = Chr$(0)
    var_3F0 = Chr$(0)
    var_400 = Chr$(0)
    var_410 = Chr$(0)
    var_420 = Chr$(0)
    var_430 = Chr$(0)
    var_440 = Chr$(0)
    var_450 = Chr$(0)
    var_460 = Chr$(0)
    var_350 = String$(2, Chr$(0)) & Chr$(1) & Chr$(0) & Chr$(1) & Chr$(0) & Chr$(32) & Chr$(32) & String$(6, Chr$(0)) & Chr$(CLng(Val("&HA8")))
    var_390 = var_350 & Chr$(12) & String$(2, Chr$(0)) & Chr$(22) & String$(3, Chr$(0)) & Chr$(40) & String$(3, Chr$(0)) & Chr$(32) & String$(3, Chr$(0))
    var_3D0 = var_390 & Chr$(64) & String$(3, Chr$(0)) & Chr$(1) & Chr$(0) & Chr$(24) & String$(6, Chr$(0)) & Chr$(12) & String$(18, Chr$(0))
    var_2EC = var_3D0 & var_2EC
  loc_00424E0F: 
    var_20 = FreeFile(var_3E8)
    Open var_28 For Unknown As #FreeFile(var_3E8) Len = -1
    Put #FreeFile(var_3E8), var_2EC
    Close #FreeFile(var_3E8)
    Exit Sub
    GoTo loc_0042507E
  loc_00424E98: 
  Close #var_20
  Exit Sub
  GoTo loc_0042507E
  Exit Sub
  loc_0042507E: 
  Exit Sub
End Sub

Public Sub Proc_4_8_4251C0
  var_38 = arg_8
  Dim var_50(7) As Single
  If (var_38 = "00000000") Then
    If 00000007h >= 0 Then
      00000007h = 00000007h + 00000001h
      var_2C = Mid$(var_38, 00000007h+00000001h, 1)
      If (var_2C = global_00407CC4) = 0 Then
        00000007h = 00000007h - 00000007h
        var_ret_1 = global_00000007
        var_30 = var_ret_1
      End If
      True = True + 00000007h
      GoTo loc_00425245
    End If
    var_D8 = var_30
    If esi <= var_ret_1 Then
      If esi < var_ret_1 Then
        00000007h = 00000007h - esi
        00000007h = 00000007h + 00000001h
        var_2C = Mid$(var_38, 00000007h+00000001h, 1)
        If (var_2C = global_00407CC4) = 0 Then
          var_ret_2 = esi
          var_34 = var_ret_2
        End If
      End If
      00000001h = 00000001h + esi
      GoTo loc_004252D3
    End If
    var_DC = var_34
  loc_00425386: 
    If esi <= var_ret_2 Then
      If esi < var_ret_2 Then
        00000007h = 00000007h - esi
        00000007h = 00000007h + 00000001h
        var_2C = Mid$(var_38, 00000007h+00000001h, 1)
        If (var_2C = global_00407CC4) = 0 Then
          var_ret_3 = esi
          var_30 = var_ret_3
        End If
      End If
      00000001h = 00000001h + esi
      GoTo loc_00425386
    End If
    var_D8 = var_30
    If esi <= var_ret_3 Then
      If esi < var_ret_3 Then
        00000007h = 00000007h - esi
        00000007h = 00000007h + 00000001h
        var_2C = Mid$(var_38, 00000007h+00000001h, 1)
        If (var_2C = global_00407CC4) = 0 Then
          var_ret_4 = esi
          var_34 = var_ret_4
        End If
      End If
      00000001h = 00000001h + esi
      GoTo loc_00425438
    End If
    var_DC = var_34
    If esi <= var_ret_4 Then
      If esi < var_ret_4 Then
        00000007h = 00000007h - esi
        00000007h = 00000007h + 00000001h
        var_2C = Mid$(var_38, 00000007h+00000001h, 1)
        If (var_2C = global_00407CC4) = 0 Then
          var_ret_5 = esi
          var_30 = var_ret_5
        End If
      End If
      00000001h = 00000001h + esi
      GoTo loc_004254ED
    End If
    var_D8 = var_30
  loc_004255A2: 
    If esi <= var_ret_5 Then
      If esi < var_ret_5 Then
        00000007h = 00000007h - esi
        00000007h = 00000007h + 00000001h
        var_2C = Mid$(var_38, 00000007h+00000001h, 1)
        If (var_2C = global_00407CC4) = 0 Then
          var_ret_6 = esi
          var_34 = var_ret_6
        End If
      End If
      00000001h = 00000001h + esi
      GoTo loc_004255A2
    End If
    var_DC = var_34
    If esi <= var_ret_6 Then
      If esi < var_ret_6 Then
        00000007h = 00000007h - esi
        00000007h = 00000007h + 00000001h
        var_2C = Mid$(var_38, 00000007h+00000001h, 1)
        If (var_2C = global_00407CC4) = 0 Then
          var_ret_7 = esi
          var_30 = var_ret_7
        End If
      End If
      00000001h = 00000001h + esi
      GoTo loc_00425654
    End If
    var_D8 = var_30
    If esi <= var_ret_7 Then
      If esi < var_ret_7 Then
        00000007h = 00000007h - esi
        00000007h = 00000007h + 00000001h
        var_2C = Mid$(var_38, 00000007h+00000001h, 1)
        If (var_2C = global_00407CC4) = 0 Then
          var_34 = esi
        End If
      End If
      00000001h = 00000001h + esi
      GoTo loc_00425709
    End If
    If var_34 = 0 Then
    End If
    If global_42C000 = 0 Then
      GoTo loc_004257E8
    End If
    call _adj_fdiv_m32(global_402EC0, var_50, 0040A128h, 00000004h, @CInt(%FPU), 00000001h+esi, @Mid$(%StkVar1, %StkVar2, %StkVar3))
  loc_004257E8: 
    If global_42C000 = 0 Then
      GoTo loc_00425818
    End If
    call _adj_fdiv_m32(global_402EC0)
  loc_00425818: 
    If global_42C000 = 0 Then
      GoTo loc_00425848
    End If
    call _adj_fdiv_m32(global_402EC0)
  loc_00425848: 
    var_28 = CInt((6.37066138261923E-314 / global_402EC0))
    If global_42C000 = 0 Then
      GoTo loc_00425879
    End If
    call _adj_fdiv_m32(global_402EC0)
  loc_00425879: 
    var_14 = CInt((6.37066138261923E-314 / global_402EC0))
    If global_42C000 = 0 Then
      GoTo loc_004258AA
    End If
    call _adj_fdiv_m32(global_402EC0)
  loc_004258AA: 
    var_24 = CInt((6.37066138261923E-314 / global_402EC0))
    If global_42C000 = 0 Then
      GoTo loc_004258DB
    End If
    call _adj_fdiv_m32(global_402EC0)
  loc_004258DB: 
    var_5C = CInt((6.37066138261923E-314 / global_402EC0))
    If global_42C000 = 0 Then
      GoTo loc_0042590C
    End If
    call _adj_fdiv_m32(global_402EC0)
  loc_0042590C: 
    CInt((6.37066138261923E-314 / global_402EC0)) = CInt((6.37066138261923E-314 / global_402EC0)) + CInt((6.37066138261923E-314 / global_402EC0))
    CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0)) = CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0)) + var_28
    CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0))+var_28 = CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0))+var_28 + var_14
    CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0))+var_28+var_14 = CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0))+var_28+var_14 + var_24
    CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0))+var_28+var_14+var_24 = CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0))+var_28+var_14+var_24 + var_5C
    CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0))+var_28+var_14+var_24+var_5C = CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0))+var_28+var_14+var_24+var_5C + CInt((6.37066138261923E-314 / global_402EC0))
  End If
  var_58 = CInt((6.37066138261923E-314 / global_402EC0))+CInt((6.37066138261923E-314 / global_402EC0))+var_28+var_14+var_24+var_5C+CInt((6.37066138261923E-314 / global_402EC0))
  GoTo loc_0042594B
  Exit Sub
  loc_0042594B: 
  var_84 = var_50
  Exit Sub
End Sub

Public Sub Proc_4_9_4259A0
  var_54 = arg_8
  var_38 = arg_C
  On Error Resume Next
  var_48 = FreeFile(var_78)
  var_ret_1 = FreeFile(var_78)
  Open var_54 For Unknown As #var_ret_1 Len = -1
  var_ret_2 = FreeFile(var_78)
  var_3C = LOF(var_ret_2)
  LOF(var_ret_2) = LOF(var_ret_2) - Len(global_0040545C)
  LOF(var_ret_2) = LOF(var_ret_2) + 00000001h
  call Proc_1_1_4115D0(00405444h, 1, var_ret_3 = ecx)
  var_50 = var_ret_3
  If LOF(var_ret_2)+00000001h > 4 Then
    var_ret_4 = var_48
    Get #var_ret_4, LOF(var_ret_2)+00000001h, Space$(Len(global_0040545C))
    call Proc_1_1_4115D0(var_44, LOF(var_ret_2)+00000001h, var_44 = %S_edx_S)
    var_64 = Get #var_ret_4, LOF(var_ret_2)+00000001h, Space$(Len(global_0040545C))
    var_60 = Left$(0, 3)
    eax = (var_60 = var_50) + 1
    var_90 = (var_60 = var_50) + 1
    If var_90 Then
      var_eax = Proc_1_1_4115D0(Space$(Len(global_0040545C)), , )
      var_68 = Proc_1_1_4115D0(Space$(Len(global_0040545C)), , )
      var_64 = var_50 & Right$(0, 4)
      var_eax = Proc_1_0_411210(var_64, , )
      var_50 = Proc_1_0_411210(var_64, , )
      LOF(var_ret_2)+00000001h = LOF(var_ret_2)+00000001h - 00000004h
      Get #var_48, LOF(var_ret_2)+00000001h, var_4C
      If var_4C < 0 Then
        If var_4C >= 0 Then GoTo loc_00425BF1
      End If
  loc_00425BF1: 
      LOF(var_ret_2)+00000001h = LOF(var_ret_2)+00000001h - 00000001h
      var_3C = .QueryInterface 'Ignore this
      GoTo loc_00425C52
    End If
    var_5C = var_50 & "0000"
    GoTo loc_00425C3D
  End If
  var_5C = var_50 & "0000"
  loc_00425C3D: 
  var_eax = Proc_1_0_411210(var_5C, var_5C, )
  var_50 = Proc_1_0_411210(var_5C, var_5C, )
  loc_00425C52: 
  Seek #var_48, 1
  var_2C = FreeFile(var_78)
  Open var_38 For Unknown As #FreeFile(var_78) Len = -1
  var_40 = Space$(4096)
  If var_20 Then
    var_3C = var_3C - 1
    If var_3C >= 4096 Then
      Get #var_48, var_40
      var_ret_9 = FreeFile(var_78)
      Put #var_ret_9, var_40
      var_30 = var_30(1025)
      GoTo loc_00425CBD
    End If
    Put #var_ret_9, var_40 = Put #var_ret_9, var_40 - var_40
    Put #var_ret_9, var_40 = Put #var_ret_9, var_40 + 00000001h
    var_40 = Space$(Put #var_ret_9, var_40+00000001h)
    Get #var_48, var_40
    Put #FreeFile(var_78), var_40
    GoTo loc_00425CBD
  End If
  Randomize(10)
  ReDim var_28(0 To 255)
  loc_00425DA7: 
  If ebx <= 255 Then
    var_8C = Rnd(var_78)
    If var_28 Then
      If var_28 = 1 Then
        ebx = ebx - ecx+00000014h
        var_90 = .%x1 = GetIDsOfNames(%StkVar2) 'Ignore this
        If ebx-ecx+00000014h < 0 Then GoTo loc_00425E03
        var_eax = Err.Raise
        GoTo loc_00425E03
      End If
    End If
    var_eax = Err.Raise
  loc_00425E03: 
    var_BC = Err.Raise
    00000001h = 00000001h + ebx-ecx+00000014h
    GoTo loc_00425DA7
  End If
  If global_42C12C = -1 Then
    var_eax = GetForegroundWindow
  End If
  var_3C = var_3C * 11
  var_BC = var_BC + var_3C *
  var_BC+var_3C = var_BC+var_3C + var_BC+var_3C
  If var_24 <= 0 Then
    Put #FreeFile(var_78), var_28
    00000001h = 00000001h + var_24
    var_24 = 00000001h+var_24
    GoTo loc_00425EA6
  End If
  var_BC+var_3C *+var_BC+var_3C *(1)(1) = var_BC+var_3C *+var_BC+var_3C *(1)(1) * 256
  var_4C = var_BC+var_3C *+var_BC+var_3C *(1)(1)
  var_8C = Rnd(var_78)
  If global_42C12C = -1 Then
    var_eax = GetForegroundWindow
  End If
  ReDim Preserve var_28(0 To CLng((var_8C * global_402EFC)))
  Put #FreeFile(var_78), var_28
  var_4C = var_4C + CLng((var_8C * global_402EFC))
  var_4C = var_4C+CLng((var_8C * global_402EFC))(1)
  Put #FreeFile(var_78), var_4C
  Put #FreeFile(var_78), var_50
  Close #var_48
  Close #FreeFile(var_78)
  Exit Sub
  GoTo loc_00426020
  Close #var_48
  Close #var_2C
  Exit Sub
  GoTo loc_00426020
  Exit Sub
  loc_00426020: 
  Exit Sub
End Sub

Public Sub Proc_4_10_426070
  Dim var_5C As Me
  Dim var_68 As Me
  Dim var_58 As Me
  var_40 = arg_8
  var_34 = arg_C
  On Error Resume Next
  var_ret_1 = var_34
  var_eax = CreateFile(var_ret_1, global_80000000, edi, edi, 3, edi, edi)
  var_ret_2 = var_60
  var_48 = CreateFile(var_ret_1, global_80000000, edi, edi, 3, edi, edi)
  If var_48 >= 0 Then
    var_eax = Proc_426480(var_48, 1, edi)
    If Proc_426480(var_48, 1, edi) Then
      var_eax = SetFilePointer(var_48, edi, var_68, edi)
      var_eax = ReadFile(var_48, var_2C, 6, var_24, edi)
      var_eax = ReadFile(var_48, var_58, 16, var_24, edi)
      var_eax = SetFilePointer(var_48, var_4C, var_68, edi)
      ReDim var_38(0 To "")
      If var_5C Then
        If var_5C = 1 Then
          If edi >= 0 Then
            var_eax = Err.Raise
          End If
          GoTo loc_0042620C
        End If
      End If
      var_eax = Err.Raise
  loc_0042620C: 
      var_eax = ReadFile(var_48, var_5C.GetTypeInfoCount, var_24, edi, var_38)
      var_eax = CloseHandle(var_48)
      var_ret_3 = var_40
      var_eax = CreateFile(var_ret_3, global_C0000000, edi, edi, 3, edi, edi)
      var_ret_4 = var_60
      var_30 = CreateFile(var_ret_3, global_C0000000, edi, edi, 3, edi, edi)
      If var_30 >= 0 Then
        var_eax = Proc_5_0_4264F0(var_30, var_5C, GetLastError())
        If Proc_5_0_4264F0(var_30, var_5C, GetLastError()) Then
          call Proc_5_1_426720(var_30, var_ret_5 = #StkVar1%StkVar2, )
          var_20 = var_ret_5
          If var_ret_5 > 308 Then
            var_eax = Proc_5_2_426B20(var_30, var_20, var_3C)
            If var_3C Then
              If var_3C = 1 Then
                00000001h = 00000001h - ecx+00000014h
                If 00000001h >= 0 Then
                  var_eax = Err.Raise
                End If
                GoTo loc_004262F4
              End If
            End If
            var_eax = Err.Raise
  loc_004262F4: 
            var_eax = SetFilePointer(var_30, ecx+eax+00000004h, edi, )
            If var_5C Then
              If var_5C = 1 Then
                If edi < 0 Then GoTo loc_00426341
                var_eax = Err.Raise
                GoTo loc_00426341
              End If
            End If
            var_eax = Err.Raise
  loc_00426341: 
            call UBound(00000001h, var_38, var_24, 00000000h, var_38)
            var_eax = WriteFile(var_30, var_5C.GetTypeInfoCount, , , )
            If var_5C Then
              If var_5C = 1 Then
                00000001h = 00000001h - ecx+00000014h
                If 00000001h >= 0 Then
                  var_eax = Err.Raise
                End If
                GoTo loc_004263B6
              End If
            End If
            var_eax = Err.Raise
  loc_004263B6: 
            var_eax = Proc_5_3_427810(var_30, var_20, ecx+eax+00000004h)
            If Proc_5_3_427810(var_30, var_20, ecx+eax+00000004h) Then
              var_eax = CloseHandle(var_30)
              Exit Sub
              GoTo loc_0042643A
            End If
            GoTo loc_0042640B
          End If
          GoTo loc_0042640B
        End If
  loc_0042640B: 
        var_eax = CloseHandle(var_48)
      End If
    End If
  End If
  Exit Sub
  GoTo loc_0042643A
  Exit Sub
  loc_0042643A: 
End Sub
